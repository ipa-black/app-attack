package jdbm.recman;
/* loaded from: classes5.dex */
class PhysicalRowId {
    private static final short O_BLOCK = 0;
    private static final short O_OFFSET = 8;
    static final int SIZE = 10;
    BlockIo block;
    short pos;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PhysicalRowId(BlockIo blockIo, short s) {
        this.block = blockIo;
        this.pos = s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getBlock() {
        return this.block.readLong(this.pos);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setBlock(long j) {
        this.block.writeLong(this.pos, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public short getOffset() {
        return this.block.readShort(this.pos + 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOffset(short s) {
        this.block.writeShort(this.pos + 8, s);
    }
}
