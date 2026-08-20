package jdbm.recman;

import java.io.IOException;
/* loaded from: classes5.dex */
final class FreeLogicalRowIdPageManager {
    private RecordFile file;
    private PageManager pageman;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FreeLogicalRowIdPageManager(RecordFile recordFile, PageManager pageManager) throws IOException {
        this.file = recordFile;
        this.pageman = pageManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Location get() throws IOException {
        PageCursor pageCursor = new PageCursor(this.pageman, (short) 3);
        while (pageCursor.next() != 0) {
            FreeLogicalRowIdPage freeLogicalRowIdPageView = FreeLogicalRowIdPage.getFreeLogicalRowIdPageView(this.file.get(pageCursor.getCurrent()));
            int firstAllocated = freeLogicalRowIdPageView.getFirstAllocated();
            if (firstAllocated != -1) {
                Location location = new Location(freeLogicalRowIdPageView.get(firstAllocated));
                freeLogicalRowIdPageView.free(firstAllocated);
                if (freeLogicalRowIdPageView.getCount() == 0) {
                    this.file.release(pageCursor.getCurrent(), false);
                    this.pageman.free((short) 3, pageCursor.getCurrent());
                } else {
                    this.file.release(pageCursor.getCurrent(), true);
                }
                return location;
            }
            this.file.release(pageCursor.getCurrent(), false);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void put(Location location) throws IOException {
        PhysicalRowId physicalRowId;
        PageCursor pageCursor = new PageCursor(this.pageman, (short) 3);
        long j = 0;
        while (true) {
            if (pageCursor.next() == 0) {
                physicalRowId = null;
                break;
            }
            j = pageCursor.getCurrent();
            BlockIo blockIo = this.file.get(j);
            FreeLogicalRowIdPage freeLogicalRowIdPageView = FreeLogicalRowIdPage.getFreeLogicalRowIdPageView(blockIo);
            int firstFree = freeLogicalRowIdPageView.getFirstFree();
            if (firstFree != -1) {
                physicalRowId = freeLogicalRowIdPageView.alloc(firstFree);
                break;
            }
            this.file.release(blockIo);
        }
        if (physicalRowId == null) {
            j = this.pageman.allocate((short) 3);
            physicalRowId = FreeLogicalRowIdPage.getFreeLogicalRowIdPageView(this.file.get(j)).alloc(0);
        }
        physicalRowId.setBlock(location.getBlock());
        physicalRowId.setOffset(location.getOffset());
        this.file.release(j, true);
    }
}
