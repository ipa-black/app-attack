package jdbm.recman;

import java.io.IOException;
/* loaded from: classes5.dex */
final class PageCursor {
    long current;
    PageManager pageman;
    short type;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PageCursor(PageManager pageManager, long j) {
        this.pageman = pageManager;
        this.current = j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PageCursor(PageManager pageManager, short s) throws IOException {
        this.pageman = pageManager;
        this.type = s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getCurrent() throws IOException {
        return this.current;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long next() throws IOException {
        long j = this.current;
        if (j == 0) {
            this.current = this.pageman.getFirst(this.type);
        } else {
            this.current = this.pageman.getNext(j);
        }
        return this.current;
    }

    long prev() throws IOException {
        long prev = this.pageman.getPrev(this.current);
        this.current = prev;
        return prev;
    }
}
