package jdbm.recman;
/* loaded from: classes5.dex */
final class FreePhysicalRowId extends PhysicalRowId {
    private static final short O_SIZE = 10;
    static final short SIZE = 14;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FreePhysicalRowId(BlockIo blockIo, short s) {
        super(blockIo, s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getSize() {
        return this.block.readInt(this.pos + 10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSize(int i) {
        this.block.writeInt(this.pos + 10, i);
    }
}
