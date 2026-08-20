package org.apache.commons.logging.impl;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogConfigurationException;
import org.apache.commons.logging.LogFactory;
import org.apache.log4j.Category;
/* loaded from: classes5.dex */
public final class Log4jFactory extends LogFactory {
    private Hashtable attributes = new Hashtable();
    private Hashtable instances = new Hashtable();

    @Override // org.apache.commons.logging.LogFactory
    public Object getAttribute(String str) {
        return this.attributes.get(str);
    }

    @Override // org.apache.commons.logging.LogFactory
    public String[] getAttributeNames() {
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
        Log log = (Log) this.instances.get(cls);
        if (log != null) {
            return log;
        }
        Log4JCategoryLog log4JCategoryLog = new Log4JCategoryLog(Category.getInstance(cls));
        this.instances.put(cls, log4JCategoryLog);
        return log4JCategoryLog;
    }

    @Override // org.apache.commons.logging.LogFactory
    public Log getInstance(String str) throws LogConfigurationException {
        Log log = (Log) this.instances.get(str);
        if (log != null) {
            return log;
        }
        Log4JCategoryLog log4JCategoryLog = new Log4JCategoryLog(Category.getInstance(str));
        this.instances.put(str, log4JCategoryLog);
        return log4JCategoryLog;
    }

    @Override // org.apache.commons.logging.LogFactory
    public void release() {
        this.instances.clear();
    }

    @Override // org.apache.commons.logging.LogFactory
    public void removeAttribute(String str) {
        this.attributes.remove(str);
    }

    @Override // org.apache.commons.logging.LogFactory
    public void setAttribute(String str, Object obj) {
        if (obj == null) {
            this.attributes.remove(str);
        } else {
            this.attributes.put(str, obj);
        }
    }
}
