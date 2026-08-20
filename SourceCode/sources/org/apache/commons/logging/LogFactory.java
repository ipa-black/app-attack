package org.apache.commons.logging;

import com.google.android.exoplayer2.C;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Properties;
/* loaded from: classes5.dex */
public abstract class LogFactory {
    protected static final String FACTORY_DEFAULT = "org.apache.commons.logging.impl.LogFactoryImpl";
    protected static final String FACTORY_PROPERTIES = "commons-logging.properties";
    public static final String FACTORY_PROPERTY = "org.apache.commons.logging.LogFactory";
    protected static final String SERVICE_ID = "META-INF/services/org.apache.commons.logging.LogFactory";
    static /* synthetic */ Class class$java$lang$Thread;
    static /* synthetic */ Class class$org$apache$commons$logging$LogFactory;
    protected static Hashtable factories = new Hashtable();

    public abstract Object getAttribute(String str);

    public abstract String[] getAttributeNames();

    public abstract Log getInstance(Class cls) throws LogConfigurationException;

    public abstract Log getInstance(String str) throws LogConfigurationException;

    public abstract void release();

    public abstract void removeAttribute(String str);

    public abstract void setAttribute(String str, Object obj);

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError(e2.getMessage());
        }
    }

    public static LogFactory getFactory() throws LogConfigurationException {
        InputStream resourceAsStream;
        BufferedReader bufferedReader;
        ClassLoader findClassLoader = findClassLoader();
        LogFactory logFactory = (LogFactory) factories.get(findClassLoader);
        if (logFactory != null) {
            return logFactory;
        }
        try {
            String property = System.getProperty(FACTORY_PROPERTY);
            if (property != null) {
                logFactory = newFactory(property, findClassLoader);
            }
        } catch (SecurityException unused) {
        }
        if (logFactory == null) {
            try {
                if (findClassLoader == null) {
                    resourceAsStream = ClassLoader.getSystemResourceAsStream(SERVICE_ID);
                } else {
                    resourceAsStream = findClassLoader.getResourceAsStream(SERVICE_ID);
                }
                if (resourceAsStream != null) {
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream, C.UTF8_NAME));
                    } catch (UnsupportedEncodingException unused2) {
                        bufferedReader = new BufferedReader(new InputStreamReader(resourceAsStream));
                    }
                    String readLine = bufferedReader.readLine();
                    bufferedReader.close();
                    if (readLine != null && !"".equals(readLine)) {
                        logFactory = newFactory(readLine, findClassLoader);
                    }
                }
            } catch (Exception unused3) {
            }
        }
        Properties properties = null;
        try {
            InputStream resourceAsStream2 = findClassLoader.getResourceAsStream(FACTORY_PROPERTIES);
            if (resourceAsStream2 != null) {
                Properties properties2 = new Properties();
                try {
                    properties2.load(resourceAsStream2);
                    resourceAsStream2.close();
                    String property2 = properties2.getProperty(FACTORY_PROPERTY);
                    if (logFactory == null) {
                        if (property2 == null) {
                            property2 = FACTORY_DEFAULT;
                        }
                        logFactory = newFactory(property2, findClassLoader);
                    }
                } catch (IOException | SecurityException unused4) {
                }
                properties = properties2;
            }
        } catch (IOException | SecurityException unused5) {
        }
        if (logFactory == null) {
            logFactory = newFactory(FACTORY_DEFAULT, findClassLoader);
        }
        if (properties != null) {
            Enumeration<?> propertyNames = properties.propertyNames();
            while (propertyNames.hasMoreElements()) {
                String str = (String) propertyNames.nextElement();
                logFactory.setAttribute(str, properties.getProperty(str));
            }
        }
        factories.put(findClassLoader, logFactory);
        return logFactory;
    }

    public static Log getLog(Class cls) throws LogConfigurationException {
        return getFactory().getInstance(cls);
    }

    public static Log getLog(String str) throws LogConfigurationException {
        return getFactory().getInstance(str);
    }

    public static void releaseAll() {
        synchronized (factories) {
            Enumeration elements = factories.elements();
            while (elements.hasMoreElements()) {
                ((LogFactory) elements.nextElement()).release();
            }
            factories.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static ClassLoader findClassLoader() throws LogConfigurationException {
        try {
            Class cls = class$java$lang$Thread;
            if (cls == null) {
                cls = class$("java.lang.Thread");
                class$java$lang$Thread = cls;
            }
            try {
                ClassLoader classLoader = (ClassLoader) cls.getMethod("getContextClassLoader", null).invoke(Thread.currentThread(), null);
                if (classLoader == null) {
                    Class cls2 = class$org$apache$commons$logging$LogFactory;
                    if (cls2 == null) {
                        cls2 = class$(FACTORY_PROPERTY);
                        class$org$apache$commons$logging$LogFactory = cls2;
                    }
                    return cls2.getClassLoader();
                }
                return classLoader;
            } catch (IllegalAccessException e2) {
                throw new LogConfigurationException("Unexpected IllegalAccessException", e2);
            } catch (InvocationTargetException e3) {
                throw new LogConfigurationException("Unexpected InvocationTargetException", e3);
            }
        } catch (NoSuchMethodException unused) {
            Class cls3 = class$org$apache$commons$logging$LogFactory;
            if (cls3 == null) {
                cls3 = class$(FACTORY_PROPERTY);
                class$org$apache$commons$logging$LogFactory = cls3;
            }
            return cls3.getClassLoader();
        }
    }

    protected static LogFactory newFactory(String str, ClassLoader classLoader) throws LogConfigurationException {
        Class<?> cls;
        try {
            if (classLoader == null) {
                cls = Class.forName(str);
            } else {
                try {
                    cls = classLoader.loadClass(str);
                } catch (ClassNotFoundException unused) {
                    cls = Class.forName(str);
                }
            }
            return (LogFactory) cls.newInstance();
        } catch (Exception e2) {
            throw new LogConfigurationException(e2);
        }
    }
}
