package jdbm.recman;
/* loaded from: classes5.dex */
class RecordHeader {
    private static final short O_AVAILABLESIZE = 4;
    private static final short O_CURRENTSIZE = 0;
    static final int SIZE = 8;
    private BlockIo block;
    private short pos;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RecordHeader(BlockIo blockIo, short s) {
        this.block = blockIo;
        this.pos = s;
        if (s > 8184) {
            throw new Error(new StringBuffer("Offset too large for record header (").append(blockIo.getBlockId()).append(":").append((int) s).append(")").toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getCurrentSize() {
        return this.block.readInt(this.pos);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCurrentSize(int i) {
        this.block.writeInt(this.pos, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getAvailableSize() {
        return this.block.readInt(this.pos + 4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAvailableSize(int i) {
        this.block.writeInt(this.pos + 4, i);
    }

    public String toString() {
        return new StringBuffer("RH(").append(this.block.getBlockId()).append(":").append((int) this.pos).append(", avl=").append(getAvailableSize()).append(", cur=").append(getCurrentSize()).append(")").toString();
    }
}
