package org.apache.commons.logging.impl;

import com.appodeal.ads.modules.common.internal.Constants;
import java.io.IOException;
import java.io.InputStream;
import java.security.AccessControlException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.Properties;
import org.apache.commons.logging.Log;
/* loaded from: classes5.dex */
public class SimpleLog implements Log {
    public static final int LOG_LEVEL_ALL = 0;
    public static final int LOG_LEVEL_DEBUG = 2;
    public static final int LOG_LEVEL_ERROR = 5;
    public static final int LOG_LEVEL_FATAL = 6;
    public static final int LOG_LEVEL_INFO = 3;
    public static final int LOG_LEVEL_OFF = 7;
    public static final int LOG_LEVEL_TRACE = 1;
    public static final int LOG_LEVEL_WARN = 4;
    protected static DateFormat dateFormatter = null;
    protected static boolean showDateTime = false;
    protected static boolean showLogName = false;
    protected static boolean showShortName = false;
    protected static final Properties simpleLogProps = new Properties();
    protected static final String systemPrefix = "org.apache.commons.logging.simplelog.";
    protected int currentLogLevel;
    protected String logName;
    private String prefix = null;

    static {
        showLogName = false;
        showShortName = true;
        showDateTime = false;
        dateFormatter = null;
        try {
            Enumeration<?> propertyNames = System.getProperties().propertyNames();
            while (propertyNames.hasMoreElements()) {
                String str = (String) propertyNames.nextElement();
                if (str != null && str.startsWith(systemPrefix)) {
                    simpleLogProps.setProperty(str, System.getProperty(str));
                }
            }
            InputStream systemResourceAsStream = ClassLoader.getSystemResourceAsStream("simplelog.properties");
            if (systemResourceAsStream != null) {
                try {
                    simpleLogProps.load(systemResourceAsStream);
                    systemResourceAsStream.close();
                } catch (IOException unused) {
                }
            }
            Properties properties = simpleLogProps;
            String property = properties.getProperty("org.apache.commons.logging.simplelog.showlogname");
            if (property != null) {
                showLogName = "true".equalsIgnoreCase(property);
            }
            String property2 = properties.getProperty("org.apache.commons.logging.simplelog.showShortLogname");
            if (property2 != null) {
                showShortName = "true".equalsIgnoreCase(property2);
            }
            String property3 = properties.getProperty("org.apache.commons.logging.simplelog.showdatetime");
            if (property3 != null) {
                showDateTime = "true".equalsIgnoreCase(property3);
            }
            if (showDateTime) {
                dateFormatter = new SimpleDateFormat(properties.getProperty("org.apache.commons.logging.simplelog.dateformat", "yyyy/MM/dd HH:mm:ss:SSS zzz"));
            }
        } catch (AccessControlException unused2) {
        }
    }

    public SimpleLog(String str) {
        this.logName = str;
        setLevel(3);
        String property = simpleLogProps.getProperty(new StringBuffer("org.apache.commons.logging.simplelog.log.").append(this.logName).toString());
        int lastIndexOf = String.valueOf(str).lastIndexOf(".");
        while (property == null && lastIndexOf > -1) {
            str = str.substring(0, lastIndexOf);
            property = simpleLogProps.getProperty(new StringBuffer("org.apache.commons.logging.simplelog.log.").append(str).toString());
            lastIndexOf = String.valueOf(str).lastIndexOf(".");
        }
        property = property == null ? simpleLogProps.getProperty("org.apache.commons.logging.simplelog.defaultlog") : property;
        if ("all".equalsIgnoreCase(property)) {
            setLevel(0);
        } else if ("trace".equalsIgnoreCase(property)) {
            setLevel(1);
        } else if (Constants.DEBUG_INTERSTITIAL.equalsIgnoreCase(property)) {
            setLevel(2);
        } else if ("info".equalsIgnoreCase(property)) {
            setLevel(3);
        } else if ("warn".equalsIgnoreCase(property)) {
            setLevel(4);
        } else if (com.google.firebase.messaging.Constants.IPC_BUNDLE_KEY_SEND_ERROR.equalsIgnoreCase(property)) {
            setLevel(5);
        } else if ("fatal".equalsIgnoreCase(property)) {
            setLevel(6);
        } else if ("off".equalsIgnoreCase(property)) {
            setLevel(7);
        }
    }

    public void setLevel(int i) {
        this.currentLogLevel = i;
    }

    public int getLevel() {
        return this.currentLogLevel;
    }

    protected void log(int i, Object obj, Throwable th) {
        StringBuffer stringBuffer = new StringBuffer();
        if (showDateTime) {
            stringBuffer.append(dateFormatter.format(new Date()));
            stringBuffer.append(" ");
        }
        switch (i) {
            case 1:
                stringBuffer.append("[TRACE] ");
                break;
            case 2:
                stringBuffer.append("[DEBUG] ");
                break;
            case 3:
                stringBuffer.append("[INFO] ");
                break;
            case 4:
                stringBuffer.append("[WARN] ");
                break;
            case 5:
                stringBuffer.append("[ERROR] ");
                break;
            case 6:
                stringBuffer.append("[FATAL] ");
                break;
        }
        if (showShortName) {
            if (this.prefix == null) {
                StringBuffer stringBuffer2 = new StringBuffer();
                String str = this.logName;
                this.prefix = stringBuffer2.append(str.substring(str.lastIndexOf(".") + 1)).append(" - ").toString();
                StringBuffer stringBuffer3 = new StringBuffer();
                String str2 = this.prefix;
                this.prefix = stringBuffer3.append(str2.substring(str2.lastIndexOf("/") + 1)).append("-").toString();
            }
            stringBuffer.append(this.prefix);
        } else if (showLogName) {
            stringBuffer.append(String.valueOf(this.logName)).append(" - ");
        }
        stringBuffer.append(String.valueOf(obj));
        if (th != null) {
            stringBuffer.append(" <");
            stringBuffer.append(th.toString());
            stringBuffer.append(">");
            th.printStackTrace();
        }
        System.err.println(stringBuffer.toString());
    }

    protected boolean isLevelEnabled(int i) {
        return i >= this.currentLogLevel;
    }

    @Override // org.apache.commons.logging.Log
    public final void debug(Object obj) {
        if (isLevelEnabled(2)) {
            log(2, obj, null);
        }
    }

    @Override // org.apache.commons.logging.Log
    public final void debug(Object obj, Throwable th) {
        if (isLevelEnabled(2)) {
            log(2, obj, th);
        }
    }

    @Override // org.apache.commons.logging.Log
    public final void trace(Object obj) {
        if (isLevelEnabled(1)) {
            log(1, obj, null);
        }
    }

    @Override // org.apache.commons.logging.Log
    public final void trace(Object obj, Throwable th) {
        if (isLevelEnabled(1)) {
            log(1, obj, th);
        }
    }

    @Override // org.apache.commons.logging.Log
    public final void info(Object obj) {
        if (isLevelEnabled(3)) {
            log(3, obj, null);
        }
    }

    @Override // org.apache.commons.logging.Log
    public final void info(Object obj, Throwable th) {
        if (isLevelEnabled(3)) {
            log(3, obj, th);
        }
    }

    @Override // org.apache.commons.logging.Log
    public final void warn(Object obj) {
        if (isLevelEnabled(4)) {
            log(4, obj, null);
        }
    }

    @Override // org.apache.commons.logging.Log
    public final void warn(Object obj, Throwable th) {
        if (isLevelEnabled(4)) {
            log(4, obj, th);
        }
    }

    @Override // org.apache.commons.logging.Log
    public final void error(Object obj) {
        if (isLevelEnabled(5)) {
            log(5, obj, null);
        }
    }

    @Override // org.apache.commons.logging.Log
    public final void error(Object obj, Throwable th) {
        if (isLevelEnabled(5)) {
            log(5, obj, th);
        }
    }

    @Override // org.apache.commons.logging.Log
    public final void fatal(Object obj) {
        if (isLevelEnabled(6)) {
            log(6, obj, null);
        }
    }

    @Override // org.apache.commons.logging.Log
    public final void fatal(Object obj, Throwable th) {
        if (isLevelEnabled(6)) {
            log(6, obj, th);
        }
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isDebugEnabled() {
        return isLevelEnabled(2);
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isErrorEnabled() {
        return isLevelEnabled(5);
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isFatalEnabled() {
        return isLevelEnabled(6);
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isInfoEnabled() {
        return isLevelEnabled(3);
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isTraceEnabled() {
        return isLevelEnabled(1);
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isWarnEnabled() {
        return isLevelEnabled(4);
    }
}
