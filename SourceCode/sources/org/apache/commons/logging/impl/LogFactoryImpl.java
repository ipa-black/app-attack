package org.apache.commons.logging.impl;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogConfigurationException;
import org.apache.commons.logging.LogFactory;
/* loaded from: classes5.dex */
public class LogFactoryImpl extends LogFactory {
    public static final String LOG_DEFAULT = "org.apache.commons.logging.impl.SimpleLog";
    public static final String LOG_PROPERTY = "org.apache.commons.logging.Log";
    protected static final String LOG_PROPERTY_OLD = "org.apache.commons.logging.log";
    static /* synthetic */ Class class$java$lang$String;
    static /* synthetic */ Class class$org$apache$commons$logging$Log;
    static /* synthetic */ Class class$org$apache$commons$logging$LogFactory;
    protected Class[] logConstructorSignature;
    protected Method logMethod;
    protected Class[] logMethodSignature;
    protected Hashtable attributes = new Hashtable();
    protected Hashtable instances = new Hashtable();
    protected Constructor logConstructor = null;
    protected LogFactory proxyFactory = null;

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError(e2.getMessage());
        }
    }

    public LogFactoryImpl() {
        Class[] clsArr = new Class[1];
        Class cls = class$java$lang$String;
        if (cls == null) {
            cls = class$("java.lang.String");
            class$java$lang$String = cls;
        }
        clsArr[0] = cls;
        this.logConstructorSignature = clsArr;
        this.logMethod = null;
        Class[] clsArr2 = new Class[1];
        Class cls2 = class$org$apache$commons$logging$LogFactory;
        if (cls2 == null) {
            cls2 = class$(LogFactory.FACTORY_PROPERTY);
            class$org$apache$commons$logging$LogFactory = cls2;
        }
        clsArr2[0] = cls2;
        this.logMethodSignature = clsArr2;
        guessConfig();
    }

    @Override // org.apache.commons.logging.LogFactory
    public Object getAttribute(String str) {
        LogFactory logFactory = this.proxyFactory;
        if (logFactory != null) {
            return logFactory.getAttribute(str);
        }
        return this.attributes.get(str);
    }

    @Override // org.apache.commons.logging.LogFactory
    public String[] getAttributeNames() {
        LogFactory logFactory = this.proxyFactory;
        if (logFactory != null) {
            return logFactory.getAttributeNames();
        }
        Vector vector = new Vector();
        Enumeration keys = this.attributes.keys();
        while (keys.hasMoreElements()) {
            vector.addElement((String) keys.nextElement());
        }
        int size = vector.size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = (String) vector.elementAt(i);
        }
        return strArr;
    }

    @Override // org.apache.commons.logging.LogFactory
    public Log getInstance(Class cls) throws LogConfigurationException {
        LogFactory logFactory = this.proxyFactory;
        if (logFactory != null) {
            return logFactory.getInstance(cls);
        }
        return getInstance(cls.getName());
    }

    @Override // org.apache.commons.logging.LogFactory
    public Log getInstance(String str) throws LogConfigurationException {
        LogFactory logFactory = this.proxyFactory;
        if (logFactory != null) {
            return logFactory.getInstance(str);
        }
        Log log = (Log) this.instances.get(str);
        if (log == null) {
            Log newInstance = newInstance(str);
            this.instances.put(str, newInstance);
            return newInstance;
        }
        return log;
    }

    @Override // org.apache.commons.logging.LogFactory
    public void release() {
        LogFactory logFactory = this.proxyFactory;
        if (logFactory != null) {
            logFactory.release();
        }
        this.instances.clear();
    }

    @Override // org.apache.commons.logging.LogFactory
    public void removeAttribute(String str) {
        LogFactory logFactory = this.proxyFactory;
        if (logFactory != null) {
            logFactory.removeAttribute(str);
        }
        this.attributes.remove(str);
    }

    @Override // org.apache.commons.logging.LogFactory
    public void setAttribute(String str, Object obj) {
        LogFactory logFactory = this.proxyFactory;
        if (logFactory != null) {
            logFactory.setAttribute(str, obj);
        }
        if (obj == null) {
            this.attributes.remove(str);
        } else {
            this.attributes.put(str, obj);
        }
    }

    protected Constructor getLogConstructor() throws LogConfigurationException {
        String str;
        Constructor constructor = this.logConstructor;
        if (constructor != null) {
            return constructor;
        }
        try {
            str = (String) getAttribute(LOG_PROPERTY);
            if (str == null) {
                try {
                    str = (String) getAttribute(LOG_PROPERTY_OLD);
                } catch (SecurityException unused) {
                }
            }
            if (str == null) {
                str = System.getProperty(LOG_PROPERTY);
            }
            if (str == null) {
                str = System.getProperty(LOG_PROPERTY_OLD);
            }
            if (str == null && isLog4JAvailable()) {
                str = "org.apache.commons.logging.impl.Log4JCategoryLog";
            }
            if (str == null) {
                if (isJdk14Available()) {
                    str = "org.apache.commons.logging.impl.Jdk14Logger";
                }
            }
            if (str == null) {
                str = LOG_DEFAULT;
            }
        } catch (SecurityException unused2) {
            str = null;
        }
        try {
            Class<?> loadClass = loadClass(str);
            Class cls = class$org$apache$commons$logging$Log;
            if (cls == null) {
                cls = class$(LOG_PROPERTY);
                class$org$apache$commons$logging$Log = cls;
            }
            if (!cls.isAssignableFrom(loadClass)) {
                throw new LogConfigurationException(new StringBuffer("Class ").append(str).append(" does not implement Log").toString());
            }
            try {
                this.logMethod = loadClass.getMethod("setLogFactory", this.logMethodSignature);
            } catch (Throwable unused3) {
                this.logMethod = null;
            }
            try {
                Constructor<?> constructor2 = loadClass.getConstructor(this.logConstructorSignature);
                this.logConstructor = constructor2;
                return constructor2;
            } catch (Throwable th) {
                throw new LogConfigurationException("No suitable Log constructor", th);
            }
        } catch (Throwable th2) {
            throw new LogConfigurationException(th2);
        }
    }

    static Class loadClass(String str) throws ClassNotFoundException {
        try {
            return LogFactory.findClassLoader().loadClass(str);
        } catch (ClassNotFoundException unused) {
            return Class.forName(str);
        }
    }

    protected void guessConfig() {
        if (isLog4JAvailable()) {
            try {
                this.proxyFactory = (LogFactory) loadClass("org.apache.commons.logging.Log4jFactory").newInstance();
            } catch (Throwable unused) {
                this.proxyFactory = null;
            }
        }
    }

    protected boolean isJdk14Available() {
        try {
            loadClass("java.util.logging.Logger");
            loadClass("org.apache.commons.logging.impl.Jdk14Logger");
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    protected boolean isLog4JAvailable() {
        try {
            loadClass("org.apache.log4j.Category");
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    protected Log newInstance(String str) throws LogConfigurationException {
        try {
            Object[] objArr = {str};
            Log log = (Log) getLogConstructor().newInstance(objArr);
            Method method = this.logMethod;
            if (method != null) {
                objArr[0] = this;
                method.invoke(log, objArr);
            }
            return log;
        } catch (Throwable th) {
            throw new LogConfigurationException(th);
        }
    }
}
