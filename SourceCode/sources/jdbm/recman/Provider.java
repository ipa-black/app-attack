package jdbm.recman;

import java.io.IOException;
import java.util.Properties;
import jdbm.RecordManager;
import jdbm.RecordManagerOptions;
import jdbm.RecordManagerProvider;
import jdbm.helper.MRU;
/* loaded from: classes5.dex */
public final class Provider implements RecordManagerProvider {
    @Override // jdbm.RecordManagerProvider
    public RecordManager createRecordManager(String str, Properties properties) throws IOException {
        BaseRecordManager baseRecordManager = new BaseRecordManager(str);
        if (properties.getProperty(RecordManagerOptions.DISABLE_TRANSACTIONS, "false").equalsIgnoreCase("TRUE")) {
            baseRecordManager.disableTransactions();
        }
        int parseInt = Integer.parseInt(properties.getProperty(RecordManagerOptions.CACHE_SIZE, "1000"));
        String property = properties.getProperty(RecordManagerOptions.CACHE_TYPE, "normal");
        if (property.equalsIgnoreCase("normal")) {
            return new CacheRecordManager(baseRecordManager, new MRU(parseInt));
        }
        if (property.equalsIgnoreCase(RecordManagerOptions.SOFT_REF_CACHE)) {
            throw new IllegalArgumentException("Soft reference cache not implemented");
        }
        if (property.equalsIgnoreCase(RecordManagerOptions.WEAK_REF_CACHE)) {
            throw new IllegalArgumentException("Weak reference cache not implemented");
        }
        throw new IllegalArgumentException(new StringBuffer("Invalid cache type: ").append(property).toString());
    }
}
