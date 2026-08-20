package jdbm.recman;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.TreeSet;
/* loaded from: classes5.dex */
public final class TransactionManager {
    static final int DEFAULT_TXNS_IN_LOG = 10;
    static final String extension = ".lg";
    private FileOutputStream fos;
    private ObjectOutputStream oos;
    private RecordFile owner;
    private int _maxTxns = 10;
    private ArrayList[] txns = new ArrayList[10];
    private int curTxn = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TransactionManager(RecordFile recordFile) throws IOException {
        this.owner = recordFile;
        recover();
        open();
    }

    public void synchronizeLog() throws IOException {
        synchronizeLogFromMemory();
    }

    public void setMaximumTransactionsInLog(int i) throws IOException {
        if (i <= 0) {
            throw new IllegalArgumentException("Argument 'maxTxns' must be greater than 0.");
        }
        if (this.curTxn != -1) {
            throw new IllegalStateException("Cannot change setting while transactions are pending in the log");
        }
        this._maxTxns = i;
        this.txns = new ArrayList[i];
    }

    private String makeLogName() {
        return new StringBuffer().append(this.owner.getFileName()).append(extension).toString();
    }

    private void synchronizeLogFromMemory() throws IOException {
        close();
        TreeSet treeSet = new TreeSet(new BlockIoComparator());
        for (int i = 0; i < this._maxTxns; i++) {
            ArrayList arrayList = this.txns[i];
            if (arrayList != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    BlockIo blockIo = (BlockIo) it.next();
                    if (treeSet.contains(blockIo)) {
                        blockIo.decrementTransactionCount();
                    } else {
                        treeSet.add(blockIo);
                    }
                }
                this.txns[i] = null;
            }
        }
        synchronizeBlocks(treeSet.iterator(), true);
        this.owner.sync();
        open();
    }

    private void open() throws IOException {
        this.fos = new FileOutputStream(makeLogName());
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(this.fos);
        this.oos = objectOutputStream;
        objectOutputStream.writeShort(4960);
        this.oos.flush();
        this.curTxn = -1;
    }

    private void recover() throws IOException {
        File file = new File(makeLogName());
        if (!file.exists()) {
            return;
        }
        if (file.length() == 0) {
            file.delete();
            return;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        ObjectInputStream objectInputStream = new ObjectInputStream(fileInputStream);
        try {
            if (objectInputStream.readShort() != 4960) {
                throw new Error("Bad magic on log file");
            }
            while (true) {
                try {
                    try {
                        synchronizeBlocks(((ArrayList) objectInputStream.readObject()).iterator(), false);
                        objectInputStream = new ObjectInputStream(fileInputStream);
                    } catch (IOException unused) {
                        this.owner.sync();
                        file.delete();
                        return;
                    }
                } catch (ClassNotFoundException e2) {
                    throw new Error(new StringBuffer("Unexcepted exception: ").append(e2).toString());
                }
            }
        } catch (IOException unused2) {
            file.delete();
        }
    }

    private void synchronizeBlocks(Iterator it, boolean z) throws IOException {
        while (it.hasNext()) {
            BlockIo blockIo = (BlockIo) it.next();
            this.owner.synch(blockIo);
            if (z) {
                blockIo.decrementTransactionCount();
                if (!blockIo.isInTransaction()) {
                    this.owner.releaseFromTransaction(blockIo, true);
                }
            }
        }
    }

    private void setClean(ArrayList arrayList) throws IOException {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((BlockIo) it.next()).setClean();
        }
    }

    private void discardBlocks(ArrayList arrayList) throws IOException {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            BlockIo blockIo = (BlockIo) it.next();
            blockIo.decrementTransactionCount();
            if (!blockIo.isInTransaction()) {
                this.owner.releaseFromTransaction(blockIo, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void start() throws IOException {
        int i = this.curTxn + 1;
        this.curTxn = i;
        if (i == this._maxTxns) {
            synchronizeLogFromMemory();
            this.curTxn = 0;
        }
        this.txns[this.curTxn] = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void add(BlockIo blockIo) throws IOException {
        blockIo.incrementTransactionCount();
        this.txns[this.curTxn].add(blockIo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void commit() throws IOException {
        this.oos.writeObject(this.txns[this.curTxn]);
        sync();
        setClean(this.txns[this.curTxn]);
        this.oos = new ObjectOutputStream(this.fos);
    }

    private void sync() throws IOException {
        this.oos.flush();
        this.fos.flush();
        this.fos.getFD().sync();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void shutdown() throws IOException {
        synchronizeLogFromMemory();
        close();
    }

    private void close() throws IOException {
        sync();
        this.oos.close();
        this.fos.close();
        this.oos = null;
        this.fos = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void forceClose() throws IOException {
        this.oos.close();
        this.fos.close();
        this.oos = null;
        this.fos = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void synchronizeLogFromDisk() throws IOException {
        close();
        for (int i = 0; i < this._maxTxns; i++) {
            ArrayList arrayList = this.txns[i];
            if (arrayList != null) {
                discardBlocks(arrayList);
                this.txns[i] = null;
            }
        }
        recover();
        open();
    }

    /* loaded from: classes5.dex */
    public static class BlockIoComparator implements Comparator {
        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            BlockIo blockIo = (BlockIo) obj;
            BlockIo blockIo2 = (BlockIo) obj2;
            if (blockIo.getBlockId() == blockIo2.getBlockId()) {
                return 0;
            }
            return blockIo.getBlockId() < blockIo2.getBlockId() ? -1 : 1;
        }

        @Override // java.util.Comparator
        public boolean equals(Object obj) {
            return super.equals(obj);
        }
    }
}
