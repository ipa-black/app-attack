package jdbm.recman;
/* loaded from: classes5.dex */
final class TranslationPage extends PageHeader {
    static final short ELEMS_PER_PAGE = 817;
    static final short O_TRANS = 18;
    final PhysicalRowId[] slots;

    TranslationPage(BlockIo blockIo) {
        super(blockIo);
        this.slots = new PhysicalRowId[817];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static TranslationPage getTranslationPageView(BlockIo blockIo) {
        BlockView view = blockIo.getView();
        if (view != null && (view instanceof TranslationPage)) {
            return (TranslationPage) view;
        }
        return new TranslationPage(blockIo);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PhysicalRowId get(short s) {
        int i = (s - 18) / 10;
        PhysicalRowId[] physicalRowIdArr = this.slots;
        if (physicalRowIdArr[i] == null) {
            physicalRowIdArr[i] = new PhysicalRowId(this.block, s);
        }
        return this.slots[i];
    }
}
