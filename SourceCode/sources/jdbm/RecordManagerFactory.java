package jdbm;

import java.io.IOException;
import java.util.Properties;
/* loaded from: classes5.dex */
public final class RecordManagerFactory {
    public static RecordManager createRecordManager(String str) throws IOException {
        return createRecordManager(str, new Properties());
    }

    public static RecordManager createRecordManager(String str, Properties properties) throws IOException {
        String property = properties.getProperty(RecordManagerOptions.PROVIDER_FACTORY, "jdbm.recman.Provider");
        try {
            return ((RecordManagerProvider) Class.forName(property).newInstance()).createRecordManager(str, properties);
        } catch (Exception e2) {
            throw new IllegalArgumentException(new StringBuffer("Invalid record manager provider: ").append(property).append("\n[").append(e2.getClass().getName()).append(": ").append(e2.getMessage()).append("]").toString());
        }
    }
}
