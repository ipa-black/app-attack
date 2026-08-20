package jdbm.recman;
/* loaded from: classes5.dex */
final class DataPage extends PageHeader {
    static final short DATA_PER_PAGE = 8172;
    static final short O_DATA = 20;
    private static final short O_FIRST = 18;

    DataPage(BlockIo blockIo) {
        super(blockIo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DataPage getDataPageView(BlockIo blockIo) {
        BlockView view = blockIo.getView();
        if (view != null && (view instanceof DataPage)) {
            return (DataPage) view;
        }
        return new DataPage(blockIo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public short getFirst() {
        return this.block.readShort(18);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFirst(short s) {
        paranoiaMagicOk();
        if (s > 0 && s < 20) {
            throw new Error(new StringBuffer("DataPage.setFirst: offset ").append((int) s).append(" too small").toString());
        }
        this.block.writeShort(18, s);
    }
}
