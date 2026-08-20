package jdbm.recman;

import java.io.IOException;
/* loaded from: classes5.dex */
final class PhysicalRowIdManager {
    private RecordFile file;
    private FreePhysicalRowIdPageManager freeman;
    private PageManager pageman;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PhysicalRowIdManager(RecordFile recordFile, PageManager pageManager) throws IOException {
        this.file = recordFile;
        this.pageman = pageManager;
        this.freeman = new FreePhysicalRowIdPageManager(recordFile, this.pageman);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Location insert(byte[] bArr, int i, int i2) throws IOException {
        Location alloc = alloc(i2);
        write(alloc, bArr, i, i2);
        return alloc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Location update(Location location, byte[] bArr, int i, int i2) throws IOException {
        BlockIo blockIo = this.file.get(location.getBlock());
        if (i2 > new RecordHeader(blockIo, location.getOffset()).getAvailableSize()) {
            this.file.release(blockIo);
            free(location);
            location = alloc(i2);
        } else {
            this.file.release(blockIo);
        }
        write(location, bArr, i, i2);
        return location;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void delete(Location location) throws IOException {
        free(location);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] fetch(Location location) throws IOException {
        PageCursor pageCursor = new PageCursor(this.pageman, location.getBlock());
        BlockIo blockIo = this.file.get(pageCursor.getCurrent());
        int currentSize = new RecordHeader(blockIo, location.getOffset()).getCurrentSize();
        byte[] bArr = new byte[currentSize];
        int i = 0;
        if (currentSize == 0) {
            this.file.release(pageCursor.getCurrent(), false);
            return bArr;
        }
        short offset = (short) (location.getOffset() + 8);
        while (currentSize > 0) {
            int i2 = 8192 - offset;
            if (currentSize < i2) {
                i2 = currentSize;
            }
            System.arraycopy(blockIo.getData(), offset, bArr, i, i2);
            currentSize -= i2;
            i += i2;
            this.file.release(blockIo);
            if (currentSize > 0) {
                blockIo = this.file.get(pageCursor.next());
                offset = 20;
            }
        }
        return bArr;
    }

    private Location alloc(int i) throws IOException {
        Location location = this.freeman.get(i);
        return location == null ? allocNew(i, this.pageman.getLast((short) 1)) : location;
    }

    private Location allocNew(int i, long j) throws IOException {
        BlockIo blockIo;
        DataPage dataPageView;
        if (j == 0) {
            j = this.pageman.allocate((short) 1);
            blockIo = this.file.get(j);
            dataPageView = DataPage.getDataPageView(blockIo);
            dataPageView.setFirst((short) 20);
            RecordHeader recordHeader = new RecordHeader(blockIo, (short) 20);
            recordHeader.setAvailableSize(0);
            recordHeader.setCurrentSize(0);
        } else {
            blockIo = this.file.get(j);
            dataPageView = DataPage.getDataPageView(blockIo);
        }
        short first = dataPageView.getFirst();
        if (first == 0) {
            this.file.release(blockIo);
            return allocNew(i, 0L);
        }
        RecordHeader recordHeader2 = new RecordHeader(blockIo, first);
        while (recordHeader2.getAvailableSize() != 0 && first < 8192) {
            first = (short) (first + recordHeader2.getAvailableSize() + 8);
            if (first == 8192) {
                this.file.release(blockIo);
                return allocNew(i, 0L);
            }
            recordHeader2 = new RecordHeader(blockIo, first);
        }
        if (first == 8) {
            this.file.release(blockIo);
        }
        Location location = new Location(j, first);
        int i2 = 8184 - first;
        if (i2 < i) {
            int i3 = 8172 - ((i - i2) % 8172);
            if (i3 < 24) {
                i += i3;
            }
            recordHeader2.setAvailableSize(i);
            this.file.release(j, true);
            int i4 = i - i2;
            while (i4 >= 8172) {
                long allocate = this.pageman.allocate((short) 1);
                DataPage.getDataPageView(this.file.get(allocate)).setFirst((short) 0);
                this.file.release(allocate, true);
                i4 -= 8172;
            }
            if (i4 > 0) {
                long allocate2 = this.pageman.allocate((short) 1);
                DataPage.getDataPageView(this.file.get(allocate2)).setFirst((short) (i4 + 20));
                this.file.release(allocate2, true);
            }
        } else {
            if (i2 - i <= 24) {
                i = i2;
            }
            recordHeader2.setAvailableSize(i);
            this.file.release(j, true);
        }
        return location;
    }

    private void free(Location location) throws IOException {
        BlockIo blockIo = this.file.get(location.getBlock());
        DataPage.getDataPageView(blockIo);
        RecordHeader recordHeader = new RecordHeader(blockIo, location.getOffset());
        recordHeader.setCurrentSize(0);
        this.file.release(location.getBlock(), true);
        this.freeman.put(location, recordHeader.getAvailableSize());
    }

    private void write(Location location, byte[] bArr, int i, int i2) throws IOException {
        PageCursor pageCursor = new PageCursor(this.pageman, location.getBlock());
        BlockIo blockIo = this.file.get(pageCursor.getCurrent());
        new RecordHeader(blockIo, location.getOffset()).setCurrentSize(i2);
        if (i2 == 0) {
            this.file.release(pageCursor.getCurrent(), true);
            return;
        }
        short offset = (short) (location.getOffset() + 8);
        while (i2 > 0) {
            int i3 = 8192 - offset;
            if (i2 < i3) {
                i3 = i2;
            }
            System.arraycopy(bArr, i, blockIo.getData(), offset, i3);
            i2 -= i3;
            i += i3;
            this.file.release(pageCursor.getCurrent(), true);
            if (i2 > 0) {
                blockIo = this.file.get(pageCursor.next());
                offset = 20;
            }
        }
    }
}
