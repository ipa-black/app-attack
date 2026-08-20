package jdbm;

import java.io.IOException;
import jdbm.helper.Serializer;
/* loaded from: classes5.dex */
public interface RecordManager {
    public static final int NAME_DIRECTORY_ROOT = 0;

    void close() throws IOException;

    void commit() throws IOException;

    void delete(long j) throws IOException;

    Object fetch(long j) throws IOException;

    Object fetch(long j, Serializer serializer) throws IOException;

    long getNamedObject(String str) throws IOException;

    long getRoot(int i) throws IOException;

    int getRootCount();

    long insert(Object obj) throws IOException;

    long insert(Object obj, Serializer serializer) throws IOException;

    void rollback() throws IOException;

    void setNamedObject(String str, long j) throws IOException;

    void setRoot(int i, long j) throws IOException;

    void update(long j, Object obj) throws IOException;

    void update(long j, Object obj, Serializer serializer) throws IOException;
}
