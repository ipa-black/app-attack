package jdbm;

import java.io.IOException;
import java.util.Properties;
/* loaded from: classes5.dex */
public interface RecordManagerProvider {
    RecordManager createRecordManager(String str, Properties properties) throws IOException;
}
