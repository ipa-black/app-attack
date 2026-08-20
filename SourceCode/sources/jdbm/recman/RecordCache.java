package jdbm.recman;

import java.io.IOException;
/* loaded from: classes5.dex */
public interface RecordCache {
    void flush(long j) throws IOException;

    void flushAll() throws IOException;

    void invalidate(long j) throws IOException;

    void invalidateAll() throws IOException;
}
