package jdbm.recman;
/* loaded from: classes5.dex */
class FileHeader implements BlockView {
    static final int NROOTS = 1013;
    private static final short O_LISTS = 2;
    private static final short O_MAGIC = 0;
    private static final int O_ROOTS = 82;
    private BlockIo block;

    private short offsetOfFirst(int i) {
        return (short) ((i * 16) + 2);
    }

    private short offsetOfRoot(int i) {
        return (short) ((i * 8) + 82);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FileHeader(BlockIo blockIo, boolean z) {
        this.block = blockIo;
        if (z) {
            blockIo.writeShort(0, Magic.FILE_HEADER);
        } else if (!magicOk()) {
            throw new Error(new StringBuffer("CRITICAL: file header magic not OK ").append((int) blockIo.readShort(0)).toString());
        }
    }

    private boolean magicOk() {
        return this.block.readShort(0) == 4944;
    }

    private short offsetOfLast(int i) {
        return (short) (offsetOfFirst(i) + 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getFirstOf(int i) {
        return this.block.readLong(offsetOfFirst(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFirstOf(int i, long j) {
        this.block.writeLong(offsetOfFirst(i), j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getLastOf(int i) {
        return this.block.readLong(offsetOfLast(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLastOf(int i, long j) {
        this.block.writeLong(offsetOfLast(i), j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getRoot(int i) {
        return this.block.readLong(offsetOfRoot(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRoot(int i, long j) {
        this.block.writeLong(offsetOfRoot(i), j);
    }
}
