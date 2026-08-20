package org.apache.commons.lang;

import com.appsgeyser.multiTabApp.BuildConfig;
/* loaded from: classes5.dex */
public class SystemUtils {
    public static final boolean IS_JAVA_1_1;
    public static final boolean IS_JAVA_1_2;
    public static final boolean IS_JAVA_1_3;
    public static final boolean IS_JAVA_1_4;
    public static final boolean IS_JAVA_1_5;
    public static final boolean IS_OS_AIX;
    public static final boolean IS_OS_HP_UX;
    public static final boolean IS_OS_IRIX;
    public static final boolean IS_OS_LINUX;
    public static final boolean IS_OS_MAC;
    public static final boolean IS_OS_MAC_OSX;
    public static final boolean IS_OS_OS2;
    public static final boolean IS_OS_SOLARIS;
    public static final boolean IS_OS_SUN_OS;
    public static final boolean IS_OS_WINDOWS;
    public static final boolean IS_OS_WINDOWS_2000;
    public static final boolean IS_OS_WINDOWS_95;
    public static final boolean IS_OS_WINDOWS_98;
    public static final boolean IS_OS_WINDOWS_ME;
    public static final boolean IS_OS_WINDOWS_NT;
    public static final boolean IS_OS_WINDOWS_XP;
    public static final float JAVA_VERSION_FLOAT;
    public static final int JAVA_VERSION_INT;
    public static final String USER_COUNTRY;
    public static final String USER_DIR;
    public static final String USER_HOME;
    public static final String USER_LANGUAGE;
    public static final String USER_NAME;
    public static final String FILE_ENCODING = getSystemProperty("file.encoding");
    public static final String FILE_SEPARATOR = getSystemProperty("file.separator");
    public static final String JAVA_CLASS_PATH = getSystemProperty("java.class.path");
    public static final String JAVA_CLASS_VERSION = getSystemProperty("java.class.version");
    public static final String JAVA_COMPILER = getSystemProperty("java.compiler");
    public static final String JAVA_EXT_DIRS = getSystemProperty("java.ext.dirs");
    public static final String JAVA_HOME = getSystemProperty("java.home");
    public static final String JAVA_IO_TMPDIR = getSystemProperty("java.io.tmpdir");
    public static final String JAVA_LIBRARY_PATH = getSystemProperty("java.library.path");
    public static final String JAVA_RUNTIME_NAME = getSystemProperty("java.runtime.name");
    public static final String JAVA_RUNTIME_VERSION = getSystemProperty("java.runtime.version");
    public static final String JAVA_SPECIFICATION_NAME = getSystemProperty("java.specification.name");
    public static final String JAVA_SPECIFICATION_VENDOR = getSystemProperty("java.specification.vendor");
    public static final String JAVA_SPECIFICATION_VERSION = getSystemProperty("java.specification.version");
    public static final String JAVA_VENDOR = getSystemProperty("java.vendor");
    public static final String JAVA_VENDOR_URL = getSystemProperty("java.vendor.url");
    public static final String JAVA_VERSION = getSystemProperty("java.version");
    public static final String JAVA_VM_INFO = getSystemProperty("java.vm.info");
    public static final String JAVA_VM_NAME = getSystemProperty("java.vm.name");
    public static final String JAVA_VM_SPECIFICATION_NAME = getSystemProperty("java.vm.specification.name");
    public static final String JAVA_VM_SPECIFICATION_VENDOR = getSystemProperty("java.vm.specification.vendor");
    public static final String JAVA_VM_SPECIFICATION_VERSION = getSystemProperty("java.vm.specification.version");
    public static final String JAVA_VM_VENDOR = getSystemProperty("java.vm.vendor");
    public static final String JAVA_VM_VERSION = getSystemProperty("java.vm.version");
    public static final String LINE_SEPARATOR = getSystemProperty("line.separator");
    public static final String OS_ARCH = getSystemProperty("os.arch");
    public static final String OS_NAME = getSystemProperty("os.name");
    public static final String OS_VERSION = getSystemProperty("os.version");
    public static final String PATH_SEPARATOR = getSystemProperty("path.separator");

    static {
        USER_COUNTRY = getSystemProperty(getSystemProperty("user.country") == null ? "user.region" : "user.country");
        USER_DIR = getSystemProperty("user.dir");
        USER_HOME = getSystemProperty("user.home");
        USER_LANGUAGE = getSystemProperty("user.language");
        USER_NAME = getSystemProperty("user.name");
        JAVA_VERSION_FLOAT = getJavaVersionAsFloat();
        JAVA_VERSION_INT = getJavaVersionAsInt();
        IS_JAVA_1_1 = getJavaVersionMatches("1.1");
        IS_JAVA_1_2 = getJavaVersionMatches("1.2");
        IS_JAVA_1_3 = getJavaVersionMatches(BuildConfig.VERSION_NAME);
        IS_JAVA_1_4 = getJavaVersionMatches("1.4");
        IS_JAVA_1_5 = getJavaVersionMatches("1.5");
        IS_OS_AIX = getOSMatches("AIX");
        IS_OS_HP_UX = getOSMatches("HP-UX");
        IS_OS_IRIX = getOSMatches("Irix");
        IS_OS_LINUX = getOSMatches("Linux") || getOSMatches("LINUX");
        IS_OS_MAC = getOSMatches("Mac");
        IS_OS_MAC_OSX = getOSMatches("Mac OS X");
        IS_OS_OS2 = getOSMatches("OS/2");
        IS_OS_SOLARIS = getOSMatches("Solaris");
        IS_OS_SUN_OS = getOSMatches("SunOS");
        IS_OS_WINDOWS = getOSMatches("Windows");
        IS_OS_WINDOWS_2000 = getOSMatches("Windows", "5.0");
        IS_OS_WINDOWS_95 = getOSMatches("Windows 9", "4.0");
        IS_OS_WINDOWS_98 = getOSMatches("Windows 9", "4.1");
        IS_OS_WINDOWS_ME = getOSMatches("Windows", "4.9");
        IS_OS_WINDOWS_NT = getOSMatches("Windows NT");
        IS_OS_WINDOWS_XP = getOSMatches("Windows", "5.1");
    }

    public static float getJavaVersion() {
        return JAVA_VERSION_FLOAT;
    }

    private static float getJavaVersionAsFloat() {
        String str = JAVA_VERSION;
        if (str == null) {
            return 0.0f;
        }
        String substring = str.substring(0, 3);
        if (str.length() >= 5) {
            substring = new StringBuffer().append(substring).append(str.substring(4, 5)).toString();
        }
        return Float.parseFloat(substring);
    }

    private static int getJavaVersionAsInt() {
        String stringBuffer;
        String str = JAVA_VERSION;
        if (str == null) {
            return 0;
        }
        String stringBuffer2 = new StringBuffer().append(str.substring(0, 1)).append(str.substring(2, 3)).toString();
        if (str.length() >= 5) {
            stringBuffer = new StringBuffer().append(stringBuffer2).append(str.substring(4, 5)).toString();
        } else {
            stringBuffer = new StringBuffer().append(stringBuffer2).append("0").toString();
        }
        return Integer.parseInt(stringBuffer);
    }

    private static boolean getJavaVersionMatches(String str) {
        String str2 = JAVA_VERSION;
        if (str2 == null) {
            return false;
        }
        return str2.startsWith(str);
    }

    private static boolean getOSMatches(String str) {
        String str2 = OS_NAME;
        if (str2 == null) {
            return false;
        }
        return str2.startsWith(str);
    }

    private static boolean getOSMatches(String str, String str2) {
        String str3;
        String str4 = OS_NAME;
        return str4 != null && (str3 = OS_VERSION) != null && str4.startsWith(str) && str3.startsWith(str2);
    }

    private static String getSystemProperty(String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            System.err.println(new StringBuffer("Caught a SecurityException reading the system property '").append(str).append("'; the SystemUtils property value will default to null.").toString());
            return null;
        }
    }

    public static boolean isJavaVersionAtLeast(float f2) {
        return JAVA_VERSION_FLOAT >= f2;
    }

    public static boolean isJavaVersionAtLeast(int i) {
        return JAVA_VERSION_INT >= i;
    }
}
