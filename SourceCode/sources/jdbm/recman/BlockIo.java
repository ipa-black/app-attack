package jdbm.recman;

import java.io.Externalizable;
import java.io.IOException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
/* loaded from: classes5.dex */
public final class BlockIo implements Externalizable {
    public static final long serialVersionUID = 2;
    private long blockId;
    private transient byte[] data;
    private transient BlockView view = null;
    private transient boolean dirty = false;
    private transient int transactionCount = 0;

    public BlockIo() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BlockIo(long j, byte[] bArr) {
        if (j > 10000000000L) {
            throw new Error(new StringBuffer("bogus block id ").append(j).toString());
        }
        this.blockId = j;
        this.data = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] getData() {
        return this.data;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBlockId(long j) {
        if (isInTransaction()) {
            throw new Error("BlockId assigned for transaction block");
        }
        if (j > 10000000000L) {
            throw new Error(new StringBuffer("bogus block id ").append(j).toString());
        }
        this.blockId = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getBlockId() {
        return this.blockId;
    }

    public BlockView getView() {
        return this.view;
    }

    public void setView(BlockView blockView) {
        this.view = blockView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setDirty() {
        this.dirty = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setClean() {
        this.dirty = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isDirty() {
        return this.dirty;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isInTransaction() {
        return this.transactionCount != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void incrementTransactionCount() {
        this.transactionCount++;
        setClean();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void decrementTransactionCount() {
        int i = this.transactionCount - 1;
        this.transactionCount = i;
        if (i < 0) {
            throw new Error(new StringBuffer("transaction count on block ").append(getBlockId()).append(" below zero!").toString());
        }
    }

    public byte readByte(int i) {
        return this.data[i];
    }

    public void writeByte(int i, byte b2) {
        this.data[i] = b2;
        setDirty();
    }

    public short readShort(int i) {
        byte[] bArr = this.data;
        return (short) (((short) (bArr[i + 1] & 255)) | (((short) (bArr[i] & 255)) << 8));
    }

    public void writeShort(int i, short s) {
        byte[] bArr = this.data;
        bArr[i] = (byte) ((s >> 8) & 255);
        bArr[i + 1] = (byte) (s & 255);
        setDirty();
    }

    public int readInt(int i) {
        byte[] bArr = this.data;
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    public void writeInt(int i, int i2) {
        byte[] bArr = this.data;
        bArr[i] = (byte) ((i2 >> 24) & 255);
        bArr[i + 1] = (byte) ((i2 >> 16) & 255);
        bArr[i + 2] = (byte) ((i2 >> 8) & 255);
        bArr[i + 3] = (byte) (i2 & 255);
        setDirty();
    }

    public long readLong(int i) {
        byte[] bArr = this.data;
        return ((((((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16)) | ((bArr[i + 2] & 255) << 8)) | (bArr[i + 3] & 255)) << 32) | (bArr[i + 7] & 255) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
    }

    public void writeLong(int i, long j) {
        byte[] bArr = this.data;
        bArr[i] = (byte) ((j >> 56) & 255);
        bArr[i + 1] = (byte) ((j >> 48) & 255);
        bArr[i + 2] = (byte) ((j >> 40) & 255);
        bArr[i + 3] = (byte) ((j >> 32) & 255);
        bArr[i + 4] = (byte) ((j >> 24) & 255);
        bArr[i + 5] = (byte) ((j >> 16) & 255);
        bArr[i + 6] = (byte) ((j >> 8) & 255);
        bArr[i + 7] = (byte) (j & 255);
        setDirty();
    }

    public String toString() {
        return new StringBuffer("BlockIO(").append(this.blockId).append(",").append(this.dirty).append(",").append(this.view).append(")").toString();
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException {
        this.blockId = objectInput.readLong();
        byte[] bArr = new byte[objectInput.readInt()];
        this.data = bArr;
        objectInput.readFully(bArr);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput objectOutput) throws IOException {
        objectOutput.writeLong(this.blockId);
        objectOutput.writeInt(this.data.length);
        objectOutput.write(this.data);
    }
}
