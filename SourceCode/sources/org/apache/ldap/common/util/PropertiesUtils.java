package org.apache.ldap.common.util;

import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.List;
import java.util.Properties;
import java.util.Set;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import org.apache.ldap.common.NotImplementedException;
import org.apache.ldap.common.ldif.LdifParserImpl;
import org.apache.ldap.common.message.LockableAttributesImpl;
/* loaded from: classes3.dex */
public class PropertiesUtils {
    private static final String DOTPROPERTIES = ".properties";

    public static Properties findUserProperties(String str) {
        return findProperties(new File(System.getProperty("user.home")), str);
    }

    public static Properties findProperties(File file, String str) {
        File file2 = new File(file, str);
        if (file2.exists()) {
            return getProperties(file2);
        }
        if (str.endsWith(DOTPROPERTIES)) {
            String substring = str.substring(0, str.length() - 11);
            if (new File(file, substring).exists()) {
                return getProperties(new File(file, substring));
            }
            return new Properties();
        }
        File file3 = new File(file, new StringBuffer().append(str).append(DOTPROPERTIES).toString());
        if (file3.exists()) {
            return getProperties(file3);
        }
        return new Properties();
    }

    public static Properties getStaticProperties(Class cls) {
        Properties properties = new Properties();
        InputStream resourceAsStream = cls.getResourceAsStream(new StringBuffer().append(cls.toString().replace('.', '/')).append(DOTPROPERTIES).toString());
        if (resourceAsStream != null) {
            try {
                properties.load(resourceAsStream);
            } catch (IOException unused) {
            }
        }
        return properties;
    }

    public static Properties getStaticProperties(Class cls, String str) {
        Properties properties = new Properties();
        InputStream resourceAsStream = cls.getResourceAsStream(str);
        if (resourceAsStream == null) {
            return properties;
        }
        try {
            properties.load(resourceAsStream);
        } catch (IOException unused) {
        }
        return properties;
    }

    public static Properties getProperties(File file) {
        Properties properties = new Properties();
        if (file != null && file.exists()) {
            try {
                properties.load(new FileInputStream(file));
            } catch (IOException unused) {
            }
        }
        return properties;
    }

    public static Properties getProperties(ClassLoader classLoader, String str) {
        Properties properties = new Properties();
        InputStream resourceAsStream = classLoader.getResourceAsStream(str);
        if (resourceAsStream != null) {
            try {
                properties.load(resourceAsStream);
            } catch (IOException unused) {
            }
        }
        return properties;
    }

    public static Properties getProperties(Class cls, String str) {
        Properties properties = new Properties();
        InputStream resourceAsStream = cls.getResourceAsStream(str);
        if (resourceAsStream != null) {
            try {
                properties.load(resourceAsStream);
            } catch (IOException unused) {
            }
        }
        return properties;
    }

    public static void macroExpand(Properties properties, Properties[] propertiesArr) {
        int i;
        int indexOf;
        if (propertiesArr == null) {
            propertiesArr = new Properties[0];
        }
        Enumeration<?> propertyNames = properties.propertyNames();
        while (propertyNames.hasMoreElements()) {
            String str = (String) propertyNames.nextElement();
            String property = properties.getProperty(str);
            int indexOf2 = property.indexOf("${");
            if (indexOf2 >= 0 && (indexOf = property.indexOf("}", (i = indexOf2 + 2))) >= 0) {
                String substring = property.substring(i, indexOf);
                if (properties.containsKey(substring)) {
                    properties.put(str, new StringBuffer().append(property.substring(0, indexOf2)).append(properties.getProperty(substring)).append(property.substring(indexOf + 1)).toString());
                } else {
                    int i2 = 0;
                    while (true) {
                        if (i2 >= propertiesArr.length) {
                            break;
                        } else if (propertiesArr[i2].containsKey(substring)) {
                            properties.put(str, new StringBuffer().append(property.substring(0, indexOf2)).append(propertiesArr[i2].getProperty(substring)).append(property.substring(indexOf + 1)).toString());
                            break;
                        } else {
                            i2++;
                        }
                    }
                }
            }
        }
    }

    public static String discover(String str, Properties[] propertiesArr, boolean z) {
        String str2 = null;
        for (int i = 0; i < propertiesArr.length; i++) {
            if (propertiesArr[i].containsKey(str)) {
                str2 = propertiesArr[i].getProperty(str);
                if (z) {
                    break;
                }
            }
        }
        return str2;
    }

    public static void discover(Properties properties, Properties[] propertiesArr, boolean z) {
        if (propertiesArr == null || properties == null) {
            return;
        }
        for (String str : properties.keySet()) {
            String discover = discover(str, propertiesArr, z);
            if (discover != null) {
                properties.setProperty(str, discover);
            }
        }
    }

    public static boolean get(Properties properties, String str, boolean z) {
        if (properties == null || !properties.containsKey(str) || properties.getProperty(str) == null) {
            return z;
        }
        String lowerCase = properties.getProperty(str).trim().toLowerCase();
        return lowerCase.equals("true") || lowerCase.equals("on") || lowerCase.equals(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE) || lowerCase.equals("yes");
    }

    public static int get(Hashtable hashtable, Object obj, int i) {
        if (hashtable != null && hashtable.containsKey(obj) && hashtable.get(obj) != null) {
            Object obj2 = hashtable.get(obj);
            if (obj2 instanceof Byte) {
                return ((Byte) obj2).intValue();
            }
            if (obj2 instanceof Short) {
                return ((Short) obj2).intValue();
            }
            if (obj2 instanceof Integer) {
                return ((Integer) obj2).intValue();
            }
            if (obj2 instanceof Long) {
                return ((Long) obj2).intValue();
            }
            if (obj2 instanceof String) {
                try {
                    return Integer.parseInt((String) obj2);
                } catch (NumberFormatException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return i;
    }

    public static long get(Properties properties, String str, long j) {
        if (properties == null || !properties.containsKey(str) || properties.getProperty(str) == null) {
            return j;
        }
        throw new NotImplementedException();
    }

    public static byte get(Properties properties, String str, byte b2) {
        if (properties == null || !properties.containsKey(str) || properties.getProperty(str) == null) {
            return b2;
        }
        throw new NotImplementedException();
    }

    public static char get(Properties properties, String str, char c2) {
        if (properties == null || !properties.containsKey(str) || properties.getProperty(str) == null) {
            return c2;
        }
        throw new NotImplementedException();
    }

    public static Set fill(Properties properties, String str, Set set) {
        if (set == null) {
            set = new HashSet();
        }
        return (Set) fillCollection(properties, str, set, " ");
    }

    public static Set fill(Properties properties, String str, Set set, String str2) {
        if (set == null) {
            set = new HashSet();
        }
        return (Set) fillCollection(properties, str, set, str2);
    }

    public static List fill(Properties properties, String str, List list) {
        if (list == null) {
            list = new ArrayList();
        }
        return (List) fillCollection(properties, str, list, " ");
    }

    public static List fill(Properties properties, String str, List list, String str2) {
        if (list == null) {
            list = new ArrayList();
        }
        return (List) fillCollection(properties, str, list, str2);
    }

    public static Collection fillCollection(Properties properties, String str, Collection collection, String str2) {
        if (properties != null && properties.containsKey(str) && properties.getProperty(str) != null) {
            String[] split = properties.getProperty(str).trim().split(str2);
            for (String str3 : split) {
                collection.add(str3);
            }
        }
        return collection;
    }

    public static Attributes fillAttributes(Properties properties, String str, Attributes attributes) throws NamingException {
        if (properties == null || !properties.containsKey(str) || properties.getProperty(str) == null) {
            return attributes == null ? new LockableAttributesImpl() : attributes;
        }
        if (attributes == null) {
            attributes = new LockableAttributesImpl();
        }
        new LdifParserImpl().parse(attributes, properties.getProperty(str).trim().replace('*', '\n'));
        return attributes;
    }
}
