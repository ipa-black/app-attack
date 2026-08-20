package jdbm.recman;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes5.dex */
public final class RecordFile {
    public static final int BLOCK_SIZE = 8192;
    static final byte[] cleanData = new byte[8192];
    static final String extension = ".db";
    private RandomAccessFile file;
    private final String fileName;
    private final LinkedList free = new LinkedList();
    private final HashMap inUse = new HashMap();
    private final HashMap dirty = new HashMap();
    private final HashMap inTxn = new HashMap();
    private boolean transactionsDisabled = false;
    final TransactionManager txnMgr = new TransactionManager(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecordFile(String str) throws IOException {
        this.fileName = str;
        this.file = new RandomAccessFile(new StringBuffer().append(str).append(extension).toString(), "rw");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getFileName() {
        return this.fileName;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void disableTransactions() {
        this.transactionsDisabled = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BlockIo get(long j) throws IOException {
        Long l = new Long(j);
        BlockIo blockIo = (BlockIo) this.inTxn.get(l);
        if (blockIo != null) {
            this.inTxn.remove(l);
            this.inUse.put(l, blockIo);
            return blockIo;
        }
        BlockIo blockIo2 = (BlockIo) this.dirty.get(l);
        if (blockIo2 != null) {
            this.dirty.remove(l);
            this.inUse.put(l, blockIo2);
            return blockIo2;
        }
        Iterator it = this.free.iterator();
        while (it.hasNext()) {
            BlockIo blockIo3 = (BlockIo) it.next();
            if (blockIo3.getBlockId() == j) {
                it.remove();
                this.inUse.put(l, blockIo3);
                return blockIo3;
            }
        }
        if (this.inUse.get(l) != null) {
            throw new Error(new StringBuffer("double get for block ").append(j).toString());
        }
        BlockIo newNode = getNewNode(j);
        long j2 = j * PlaybackStateCompat.ACTION_PLAY_FROM_URI;
        if (this.file.length() > 0 && j2 <= this.file.length()) {
            read(this.file, j2, newNode.getData(), 8192);
        } else {
            System.arraycopy(cleanData, 0, newNode.getData(), 0, 8192);
        }
        this.inUse.put(l, newNode);
        newNode.setClean();
        return newNode;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void release(long j, boolean z) throws IOException {
        BlockIo blockIo = (BlockIo) this.inUse.get(new Long(j));
        if (blockIo == null) {
            throw new IOException(new StringBuffer("bad blockid ").append(j).append(" on release").toString());
        }
        if (!blockIo.isDirty() && z) {
            blockIo.setDirty();
        }
        release(blockIo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void release(BlockIo blockIo) {
        Long l = new Long(blockIo.getBlockId());
        this.inUse.remove(l);
        if (blockIo.isDirty()) {
            this.dirty.put(l, blockIo);
        } else if (!this.transactionsDisabled && blockIo.isInTransaction()) {
            this.inTxn.put(l, blockIo);
        } else {
            this.free.add(blockIo);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void discard(BlockIo blockIo) {
        this.inUse.remove(new Long(blockIo.getBlockId()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void commit() throws IOException {
        if (!this.inUse.isEmpty() && this.inUse.size() > 1) {
            showList(this.inUse.values().iterator());
            throw new Error(new StringBuffer("in use list not empty at commit time (").append(this.inUse.size()).append(")").toString());
        } else if (this.dirty.size() == 0) {
        } else {
            if (!this.transactionsDisabled) {
                this.txnMgr.start();
            }
            Iterator it = this.dirty.values().iterator();
            while (it.hasNext()) {
                BlockIo blockIo = (BlockIo) it.next();
                it.remove();
                if (this.transactionsDisabled) {
                    this.file.seek(blockIo.getBlockId() * PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                    this.file.write(blockIo.getData());
                    blockIo.setClean();
                    this.free.add(blockIo);
                } else {
                    this.txnMgr.add(blockIo);
                    this.inTxn.put(new Long(blockIo.getBlockId()), blockIo);
                }
            }
            if (this.transactionsDisabled) {
                return;
            }
            this.txnMgr.commit();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void rollback() throws IOException {
        if (!this.inUse.isEmpty()) {
            showList(this.inUse.values().iterator());
            throw new Error(new StringBuffer("in use list not empty at rollback time (").append(this.inUse.size()).append(")").toString());
        }
        this.dirty.clear();
        this.txnMgr.synchronizeLogFromDisk();
        if (this.inTxn.isEmpty()) {
            return;
        }
        showList(this.inTxn.values().iterator());
        throw new Error(new StringBuffer("in txn list not empty at rollback time (").append(this.inTxn.size()).append(")").toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void close() throws IOException {
        if (!this.dirty.isEmpty()) {
            commit();
        }
        this.txnMgr.shutdown();
        if (!this.inTxn.isEmpty()) {
            showList(this.inTxn.values().iterator());
            throw new Error("In transaction not empty");
        } else if (!this.dirty.isEmpty()) {
            System.out.println("ERROR: dirty blocks at close time");
            showList(this.dirty.values().iterator());
            throw new Error("Dirty blocks at close time");
        } else if (!this.inUse.isEmpty()) {
            System.out.println("ERROR: inUse blocks at close time");
            showList(this.inUse.values().iterator());
            throw new Error("inUse blocks at close time");
        } else {
            this.file.close();
            this.file = null;
        }
    }

    void forceClose() throws IOException {
        this.txnMgr.forceClose();
        this.file.close();
    }

    private void showList(Iterator it) {
        int i = 0;
        while (it.hasNext()) {
            System.out.println(new StringBuffer("elem ").append(i).append(": ").append(it.next()).toString());
            i++;
        }
    }

    private BlockIo getNewNode(long j) throws IOException {
        BlockIo blockIo = !this.free.isEmpty() ? (BlockIo) this.free.removeFirst() : null;
        if (blockIo == null) {
            blockIo = new BlockIo(0L, new byte[8192]);
        }
        blockIo.setBlockId(j);
        blockIo.setView(null);
        return blockIo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void synch(BlockIo blockIo) throws IOException {
        byte[] data = blockIo.getData();
        if (data != null) {
            this.file.seek(blockIo.getBlockId() * PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            this.file.write(data);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void releaseFromTransaction(BlockIo blockIo, boolean z) throws IOException {
        if (this.inTxn.remove(new Long(blockIo.getBlockId())) == null || !z) {
            return;
        }
        this.free.add(blockIo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void sync() throws IOException {
        this.file.getFD().sync();
    }

    private static void read(RandomAccessFile randomAccessFile, long j, byte[] bArr, int i) throws IOException {
        randomAccessFile.seek(j);
        int i2 = 0;
        while (i > 0) {
            int read = randomAccessFile.read(bArr, i2, i);
            if (read == -1) {
                System.arraycopy(cleanData, 0, bArr, i2, i);
                return;
            } else {
                i -= read;
                i2 += read;
            }
        }
    }
}
