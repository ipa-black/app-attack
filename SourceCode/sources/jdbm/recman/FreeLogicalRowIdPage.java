package jdbm.recman;
/* loaded from: classes5.dex */
class FreeLogicalRowIdPage extends PageHeader {
    static final short ELEMS_PER_PAGE = 817;
    private static final short O_COUNT = 18;
    static final short O_FREE = 20;
    final PhysicalRowId[] slots;

    private short slotToOffset(int i) {
        return (short) ((i * 10) + 20);
    }

    FreeLogicalRowIdPage(BlockIo blockIo) {
        super(blockIo);
        this.slots = new PhysicalRowId[817];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FreeLogicalRowIdPage getFreeLogicalRowIdPageView(BlockIo blockIo) {
        BlockView view = blockIo.getView();
        if (view != null && (view instanceof FreeLogicalRowIdPage)) {
            return (FreeLogicalRowIdPage) view;
        }
        return new FreeLogicalRowIdPage(blockIo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public short getCount() {
        return this.block.readShort(18);
    }

    private void setCount(short s) {
        this.block.writeShort(18, s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void free(int i) {
        get(i).setBlock(0L);
        setCount((short) (getCount() - 1));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PhysicalRowId alloc(int i) {
        setCount((short) (getCount() + 1));
        get(i).setBlock(-1L);
        return get(i);
    }

    boolean isAllocated(int i) {
        return get(i).getBlock() > 0;
    }

    boolean isFree(int i) {
        return !isAllocated(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PhysicalRowId get(int i) {
        PhysicalRowId[] physicalRowIdArr = this.slots;
        if (physicalRowIdArr[i] == null) {
            physicalRowIdArr[i] = new PhysicalRowId(this.block, slotToOffset(i));
        }
        return this.slots[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getFirstFree() {
        for (int i = 0; i < 817; i++) {
            if (isFree(i)) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getFirstAllocated() {
        for (int i = 0; i < 817; i++) {
            if (isAllocated(i)) {
                return i;
            }
        }
        return -1;
    }
}
