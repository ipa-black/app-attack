package jdbm.recman;
/* loaded from: classes5.dex */
public class PageHeader implements BlockView {
    private static final short O_MAGIC = 0;
    private static final short O_NEXT = 2;
    private static final short O_PREV = 10;
    protected static final short SIZE = 18;
    protected BlockIo block;

    /* JADX INFO: Access modifiers changed from: protected */
    public PageHeader(BlockIo blockIo) {
        initialize(blockIo);
        if (!magicOk()) {
            throw new Error(new StringBuffer("CRITICAL: page header magic for block ").append(blockIo.getBlockId()).append(" not OK ").append((int) getMagic()).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PageHeader(BlockIo blockIo, short s) {
        initialize(blockIo);
        setType(s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PageHeader getView(BlockIo blockIo) {
        BlockView view = blockIo.getView();
        if (view != null && (view instanceof PageHeader)) {
            return (PageHeader) view;
        }
        return new PageHeader(blockIo);
    }

    private void initialize(BlockIo blockIo) {
        this.block = blockIo;
        blockIo.setView(this);
    }

    private boolean magicOk() {
        short magic = getMagic();
        return magic >= 4945 && magic <= 4949;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void paranoiaMagicOk() {
        if (!magicOk()) {
            throw new Error(new StringBuffer("CRITICAL: page header magic not OK ").append((int) getMagic()).toString());
        }
    }

    short getMagic() {
        return this.block.readShort(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNext() {
        paranoiaMagicOk();
        return this.block.readLong(2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNext(long j) {
        paranoiaMagicOk();
        this.block.writeLong(2, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getPrev() {
        paranoiaMagicOk();
        return this.block.readLong(10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setPrev(long j) {
        paranoiaMagicOk();
        this.block.writeLong(10, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setType(short s) {
        this.block.writeShort(0, (short) (s + Magic.BLOCK));
    }
}
