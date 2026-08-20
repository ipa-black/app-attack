package org.apache.ldap.common.message.spi;

import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Hashtable;
import java.util.List;
import java.util.Properties;
import org.apache.ldap.common.util.StringTools;
/* loaded from: classes3.dex */
public abstract class Provider {
    public static final String BERLIB_PROPFILE = "berlib.properties";
    public static final String BERLIB_PROVIDER = "asn.1.berlib.provider";
    public static final String DEFAULT_PROVIDER = "org.apache.ldap.common.berlib.asn1.SnickersProvider";
    public static final String PROVIDER_MONITOR_KEY = "asn.1.berlib.provider.monitor";
    public static final String USING_DEFAULTS_MSG = new StringBuffer("Could not find the ASN.1 berlib provider properties file: berlib.properties.\nFile is not present on the classpath or in $JAVA_HOME/lib:\n\tjava.home = ").append(System.getProperty("java.home")).append("\n\tjava.class.path = ").append(System.getProperty("java.class.path")).toString();
    private static ProviderMonitor monitor = null;
    private final String name;
    private final String vendor;

    public abstract ProviderDecoder getDecoder() throws ProviderException;

    public abstract ProviderEncoder getEncoder() throws ProviderException;

    public abstract TransformerSpi getTransformer() throws ProviderException;

    static {
        findMonitor(System.getProperties());
    }

    private static void findMonitor(Properties properties) {
        String property;
        if (properties.containsKey(PROVIDER_MONITOR_KEY) && (property = System.getProperties().getProperty(PROVIDER_MONITOR_KEY)) != null) {
            try {
                monitor = (ProviderMonitor) Class.forName(property).newInstance();
            } catch (ClassNotFoundException unused) {
                System.err.println(new StringBuffer("provider monitor class ").append(property).append(" not found").toString());
            } catch (IllegalAccessException unused2) {
                System.err.println(new StringBuffer("provider monitor class ").append(property).append(" does not expose a public default constructor").toString());
            } catch (InstantiationException unused3) {
                System.err.println(new StringBuffer("provider monitor class ").append(property).append(" failed during instantiation").toString());
            }
        }
        if (monitor == null) {
            monitor = ProviderMonitor.NOOP_MONITOR;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Provider(String str, String str2) {
        this.name = str;
        this.vendor = str2;
    }

    public final String getName() {
        return this.name;
    }

    public final String getVendor() {
        return this.vendor;
    }

    public static Provider getProvider() throws ProviderException {
        return getProvider(getEnvironment());
    }

    public static Provider getProvider(Hashtable hashtable) throws ProviderException {
        String str = (String) hashtable.get(BERLIB_PROVIDER);
        if (str == null || str.trim().equals("")) {
            throw new ProviderException(null, "Could not instantiate provider - environment does not specify asn.1.berlib.provider property!");
        }
        try {
            return (Provider) Class.forName(str).getMethod("getProvider", null).invoke(null, null);
        } catch (ClassNotFoundException e2) {
            ProviderException providerException = new ProviderException(null, new StringBuffer("Count not find the Provider class ").append(str).toString());
            providerException.addThrowable(e2);
            throw providerException;
        } catch (IllegalAccessException e3) {
            ProviderException providerException2 = new ProviderException(null, new StringBuffer("Count not invoke the Provider's factory method: ").append(str).append(".getProvider() - it does seem to be a public method!").toString());
            providerException2.addThrowable(e3);
            throw providerException2;
        } catch (NoSuchMethodException e4) {
            ProviderException providerException3 = new ProviderException(null, new StringBuffer("Count not invoke the Provider's factory method: ").append(str).append(".getProvider() - it may not exist!").toString());
            providerException3.addThrowable(e4);
            throw providerException3;
        } catch (InvocationTargetException e5) {
            ProviderException providerException4 = new ProviderException(null, new StringBuffer("Call to Provider's factory method: ").append(str).append(".getProvider() threw the following exception:\n").append(e5.getTargetException()).toString());
            providerException4.addThrowable(e5.getTargetException());
            throw providerException4;
        }
    }

    public static Properties getEnvironment() {
        Properties properties;
        List paths = StringTools.getPaths(System.getProperty("java.class.path"), new FileFilter() { // from class: org.apache.ldap.common.message.spi.Provider.1
            @Override // java.io.FileFilter
            public boolean accept(File file) {
                return file.exists() && file.isDirectory();
            }
        });
        int i = 0;
        while (true) {
            if (i >= paths.size()) {
                properties = null;
                break;
            }
            File file = new File(new File((String) paths.get(i)), BERLIB_PROPFILE);
            if (file.exists()) {
                properties = new Properties();
                try {
                    properties.load(new FileInputStream(file));
                } catch (FileNotFoundException e2) {
                    new ProviderException(null, new StringBuffer("Failed to load ").append(file.getAbsolutePath()).toString()).addThrowable(e2);
                } catch (IOException e3) {
                    new ProviderException(null, new StringBuffer("Failed to load ").append(file.getAbsolutePath()).toString()).addThrowable(e3);
                }
                findMonitor(properties);
                monitor.propsFound(file.getAbsolutePath(), properties);
                break;
            }
            i++;
        }
        File file2 = new File(System.getProperty("java.home"), "lib");
        File file3 = new File(System.getProperty("user.home"));
        File file4 = new File(System.getProperty("user.dir"));
        if (properties == null) {
            File file5 = new File(file2, BERLIB_PROPFILE);
            if (!file5.exists()) {
                file5 = new File(file3, BERLIB_PROPFILE);
            }
            if (!file5.exists()) {
                file5 = new File(file4, BERLIB_PROPFILE);
            }
            if (file5.exists()) {
                properties = new Properties();
                try {
                    properties.load(new FileInputStream(file5));
                } catch (FileNotFoundException e4) {
                    new ProviderException(null, new StringBuffer("Failed to load ").append(file5.getAbsolutePath()).toString()).addThrowable(e4);
                } catch (IOException e5) {
                    new ProviderException(null, new StringBuffer("Failed to load ").append(file5.getAbsolutePath()).toString()).addThrowable(e5);
                }
                findMonitor(properties);
                monitor.propsFound(file5.getAbsolutePath(), properties);
            }
        }
        if (System.getProperties().containsKey(BERLIB_PROVIDER) && System.getProperty(BERLIB_PROVIDER) != null) {
            properties = new Properties();
            properties.setProperty(BERLIB_PROVIDER, System.getProperty(BERLIB_PROVIDER));
        }
        if (properties == null) {
            Properties properties2 = new Properties();
            properties2.setProperty(BERLIB_PROVIDER, DEFAULT_PROVIDER);
            monitor.usingDefaults(USING_DEFAULTS_MSG, properties2);
            return properties2;
        }
        return properties;
    }
}
