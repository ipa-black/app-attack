package jdbm.recman;
/* loaded from: classes5.dex */
final class FreePhysicalRowIdPage extends PageHeader {
    static final short ELEMS_PER_PAGE = 583;
    private static final short O_COUNT = 18;
    static final short O_FREE = 20;
    FreePhysicalRowId[] slots;

    short slotToOffset(int i) {
        return (short) ((i * 14) + 20);
    }

    FreePhysicalRowIdPage(BlockIo blockIo) {
        super(blockIo);
        this.slots = new FreePhysicalRowId[583];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static FreePhysicalRowIdPage getFreePhysicalRowIdPageView(BlockIo blockIo) {
        BlockView view = blockIo.getView();
        if (view != null && (view instanceof FreePhysicalRowIdPage)) {
            return (FreePhysicalRowIdPage) view;
        }
        return new FreePhysicalRowIdPage(blockIo);
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
        get(i).setSize(0);
        setCount((short) (getCount() - 1));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FreePhysicalRowId alloc(int i) {
        setCount((short) (getCount() + 1));
        return get(i);
    }

    boolean isAllocated(int i) {
        return get(i).getSize() != 0;
    }

    boolean isFree(int i) {
        return !isAllocated(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FreePhysicalRowId get(int i) {
        FreePhysicalRowId[] freePhysicalRowIdArr = this.slots;
        if (freePhysicalRowIdArr[i] == null) {
            freePhysicalRowIdArr[i] = new FreePhysicalRowId(this.block, slotToOffset(i));
        }
        return this.slots[i];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getFirstFree() {
        for (int i = 0; i < 583; i++) {
            if (isFree(i)) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getFirstLargerThan(int i) {
        for (int i2 = 0; i2 < 583; i2++) {
            if (isAllocated(i2) && get(i2).getSize() >= i) {
                return i2;
            }
        }
        return -1;
    }
}
