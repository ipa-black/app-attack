package jdbm.recman;

import java.io.IOException;
/* loaded from: classes5.dex */
final class PageManager {
    private RecordFile file;
    private FileHeader header;
    private BlockIo headerBuf;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PageManager(RecordFile recordFile) throws IOException {
        this.file = recordFile;
        BlockIo blockIo = recordFile.get(0L);
        this.headerBuf = blockIo;
        if (blockIo.readShort(0) == 0) {
            this.header = new FileHeader(this.headerBuf, true);
        } else {
            this.header = new FileHeader(this.headerBuf, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long allocate(short s) throws IOException {
        boolean z;
        if (s == 0) {
            throw new Error("allocate of free page?");
        }
        long firstOf = this.header.getFirstOf(0);
        if (firstOf != 0) {
            this.header.setFirstOf(0, getNext(firstOf));
            z = false;
        } else {
            firstOf = this.header.getLastOf(0);
            if (firstOf == 0) {
                firstOf = 1;
            }
            this.header.setLastOf(0, 1 + firstOf);
            z = true;
        }
        BlockIo blockIo = this.file.get(firstOf);
        PageHeader pageHeader = z ? new PageHeader(blockIo, s) : PageHeader.getView(blockIo);
        long lastOf = this.header.getLastOf(s);
        System.arraycopy(RecordFile.cleanData, 0, blockIo.getData(), 0, 8192);
        pageHeader.setType(s);
        pageHeader.setPrev(lastOf);
        pageHeader.setNext(0L);
        int i = (lastOf > 0L ? 1 : (lastOf == 0L ? 0 : -1));
        if (i == 0) {
            this.header.setFirstOf(s, firstOf);
        }
        this.header.setLastOf(s, firstOf);
        this.file.release(firstOf, true);
        if (i != 0) {
            blockIo = this.file.get(lastOf);
            PageHeader.getView(blockIo).setNext(firstOf);
            this.file.release(lastOf, true);
        }
        blockIo.setView(null);
        return firstOf;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void free(short s, long j) throws IOException {
        if (s == 0) {
            throw new Error("free free page?");
        }
        if (j == 0) {
            throw new Error("free header page?");
        }
        PageHeader view = PageHeader.getView(this.file.get(j));
        long prev = view.getPrev();
        long next = view.getNext();
        view.setType((short) 0);
        view.setNext(this.header.getFirstOf(0));
        view.setPrev(0L);
        this.header.setFirstOf(0, j);
        this.file.release(j, true);
        if (prev != 0) {
            PageHeader.getView(this.file.get(prev)).setNext(next);
            this.file.release(prev, true);
        } else {
            this.header.setFirstOf(s, next);
        }
        if (next != 0) {
            PageHeader.getView(this.file.get(next)).setPrev(prev);
            this.file.release(next, true);
            return;
        }
        this.header.setLastOf(s, prev);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNext(long j) throws IOException {
        try {
            return PageHeader.getView(this.file.get(j)).getNext();
        } finally {
            this.file.release(j, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getPrev(long j) throws IOException {
        try {
            return PageHeader.getView(this.file.get(j)).getPrev();
        } finally {
            this.file.release(j, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getFirst(short s) throws IOException {
        return this.header.getFirstOf(s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getLast(short s) throws IOException {
        return this.header.getLastOf(s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void commit() throws IOException {
        this.file.release(this.headerBuf);
        this.file.commit();
        this.headerBuf = this.file.get(0L);
        this.header = new FileHeader(this.headerBuf, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void rollback() throws IOException {
        this.file.discard(this.headerBuf);
        this.file.rollback();
        BlockIo blockIo = this.file.get(0L);
        this.headerBuf = blockIo;
        if (blockIo.readShort(0) == 0) {
            this.header = new FileHeader(this.headerBuf, true);
        } else {
            this.header = new FileHeader(this.headerBuf, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void close() throws IOException {
        this.file.release(this.headerBuf);
        this.file.commit();
        this.headerBuf = null;
        this.header = null;
        this.file = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FileHeader getFileHeader() {
        return this.header;
    }
}
