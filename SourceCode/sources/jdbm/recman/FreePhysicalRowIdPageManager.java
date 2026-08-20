package jdbm.recman;

import java.io.IOException;
/* loaded from: classes5.dex */
final class FreePhysicalRowIdPageManager {
    protected RecordFile _file;
    protected PageManager _pageman;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FreePhysicalRowIdPageManager(RecordFile recordFile, PageManager pageManager) throws IOException {
        this._file = recordFile;
        this._pageman = pageManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Location get(int i) throws IOException {
        PageCursor pageCursor = new PageCursor(this._pageman, (short) 4);
        while (pageCursor.next() != 0) {
            FreePhysicalRowIdPage freePhysicalRowIdPageView = FreePhysicalRowIdPage.getFreePhysicalRowIdPageView(this._file.get(pageCursor.getCurrent()));
            int firstLargerThan = freePhysicalRowIdPageView.getFirstLargerThan(i);
            if (firstLargerThan != -1) {
                Location location = new Location(freePhysicalRowIdPageView.get(firstLargerThan));
                freePhysicalRowIdPageView.get(firstLargerThan).getSize();
                freePhysicalRowIdPageView.free(firstLargerThan);
                if (freePhysicalRowIdPageView.getCount() == 0) {
                    this._file.release(pageCursor.getCurrent(), false);
                    this._pageman.free((short) 4, pageCursor.getCurrent());
                } else {
                    this._file.release(pageCursor.getCurrent(), true);
                }
                return location;
            }
            this._file.release(pageCursor.getCurrent(), false);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void put(Location location, int i) throws IOException {
        FreePhysicalRowId freePhysicalRowId;
        PageCursor pageCursor = new PageCursor(this._pageman, (short) 4);
        long j = 0;
        while (true) {
            if (pageCursor.next() == 0) {
                freePhysicalRowId = null;
                break;
            }
            j = pageCursor.getCurrent();
            BlockIo blockIo = this._file.get(j);
            FreePhysicalRowIdPage freePhysicalRowIdPageView = FreePhysicalRowIdPage.getFreePhysicalRowIdPageView(blockIo);
            int firstFree = freePhysicalRowIdPageView.getFirstFree();
            if (firstFree != -1) {
                freePhysicalRowId = freePhysicalRowIdPageView.alloc(firstFree);
                break;
            }
            this._file.release(blockIo);
        }
        if (freePhysicalRowId == null) {
            j = this._pageman.allocate((short) 4);
            freePhysicalRowId = FreePhysicalRowIdPage.getFreePhysicalRowIdPageView(this._file.get(j)).alloc(0);
        }
        freePhysicalRowId.setBlock(location.getBlock());
        freePhysicalRowId.setOffset(location.getOffset());
        freePhysicalRowId.setSize(i);
        this._file.release(j, true);
    }
}
