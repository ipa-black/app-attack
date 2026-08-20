package jdbm.recman;

import java.io.IOException;
/* loaded from: classes5.dex */
final class LogicalRowIdManager {
    private RecordFile file;
    private FreeLogicalRowIdPageManager freeman;
    private PageManager pageman;

    /* JADX INFO: Access modifiers changed from: package-private */
    public LogicalRowIdManager(RecordFile recordFile, PageManager pageManager) throws IOException {
        this.file = recordFile;
        this.pageman = pageManager;
        this.freeman = new FreeLogicalRowIdPageManager(recordFile, pageManager);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Location insert(Location location) throws IOException {
        Location location2 = this.freeman.get();
        if (location2 == null) {
            long allocate = this.pageman.allocate((short) 2);
            short s = 18;
            for (int i = 0; i < 817; i++) {
                this.freeman.put(new Location(allocate, s));
                s = (short) (s + 10);
            }
            location2 = this.freeman.get();
            if (location2 == null) {
                throw new Error("couldn't obtain free translation");
            }
        }
        update(location2, location);
        return location2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void delete(Location location) throws IOException {
        this.freeman.put(location);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void update(Location location, Location location2) throws IOException {
        PhysicalRowId physicalRowId = TranslationPage.getTranslationPageView(this.file.get(location.getBlock())).get(location.getOffset());
        physicalRowId.setBlock(location2.getBlock());
        physicalRowId.setOffset(location2.getOffset());
        this.file.release(location.getBlock(), true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Location fetch(Location location) throws IOException {
        try {
            return new Location(TranslationPage.getTranslationPageView(this.file.get(location.getBlock())).get(location.getOffset()));
        } finally {
            this.file.release(location.getBlock(), false);
        }
    }
}
