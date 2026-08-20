package org.apache.commons.logging.impl;

import org.apache.commons.logging.Log;
import org.apache.log4j.Category;
import org.apache.log4j.Priority;
/* loaded from: classes5.dex */
public final class Log4JCategoryLog implements Log {
    private static final String FQCN;
    static /* synthetic */ Class class$org$apache$commons$logging$impl$Log4JCategoryLog;
    private Category category;

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError(e2.getMessage());
        }
    }

    static {
        Class cls = class$org$apache$commons$logging$impl$Log4JCategoryLog;
        if (cls == null) {
            cls = class$("org.apache.commons.logging.impl.Log4JCategoryLog");
            class$org$apache$commons$logging$impl$Log4JCategoryLog = cls;
        }
        FQCN = cls.getName();
    }

    public Log4JCategoryLog(String str) {
        this.category = null;
        this.category = Category.getInstance(str);
    }

    public Log4JCategoryLog(Category category) {
        this.category = category;
    }

    @Override // org.apache.commons.logging.Log
    public void trace(Object obj) {
        this.category.log(FQCN, Priority.DEBUG, obj, (Throwable) null);
    }

    @Override // org.apache.commons.logging.Log
    public void trace(Object obj, Throwable th) {
        this.category.log(FQCN, Priority.DEBUG, obj, th);
    }

    @Override // org.apache.commons.logging.Log
    public void debug(Object obj) {
        this.category.log(FQCN, Priority.DEBUG, obj, (Throwable) null);
    }

    @Override // org.apache.commons.logging.Log
    public void debug(Object obj, Throwable th) {
        this.category.log(FQCN, Priority.DEBUG, obj, th);
    }

    @Override // org.apache.commons.logging.Log
    public void info(Object obj) {
        this.category.log(FQCN, Priority.INFO, obj, (Throwable) null);
    }

    @Override // org.apache.commons.logging.Log
    public void info(Object obj, Throwable th) {
        this.category.log(FQCN, Priority.INFO, obj, th);
    }

    @Override // org.apache.commons.logging.Log
    public void warn(Object obj) {
        this.category.log(FQCN, Priority.WARN, obj, (Throwable) null);
    }

    @Override // org.apache.commons.logging.Log
    public void warn(Object obj, Throwable th) {
        this.category.log(FQCN, Priority.WARN, obj, th);
    }

    @Override // org.apache.commons.logging.Log
    public void error(Object obj) {
        this.category.log(FQCN, Priority.ERROR, obj, (Throwable) null);
    }

    @Override // org.apache.commons.logging.Log
    public void error(Object obj, Throwable th) {
        this.category.log(FQCN, Priority.ERROR, obj, th);
    }

    @Override // org.apache.commons.logging.Log
    public void fatal(Object obj) {
        this.category.log(FQCN, Priority.FATAL, obj, (Throwable) null);
    }

    @Override // org.apache.commons.logging.Log
    public void fatal(Object obj, Throwable th) {
        this.category.log(FQCN, Priority.FATAL, obj, th);
    }

    @Override // org.apache.commons.logging.Log
    public boolean isDebugEnabled() {
        return this.category.isDebugEnabled();
    }

    @Override // org.apache.commons.logging.Log
    public boolean isErrorEnabled() {
        return this.category.isEnabledFor(Priority.ERROR);
    }

    @Override // org.apache.commons.logging.Log
    public boolean isFatalEnabled() {
        return this.category.isEnabledFor(Priority.FATAL);
    }

    @Override // org.apache.commons.logging.Log
    public boolean isInfoEnabled() {
        return this.category.isInfoEnabled();
    }

    @Override // org.apache.commons.logging.Log
    public boolean isTraceEnabled() {
        return this.category.isDebugEnabled();
    }

    @Override // org.apache.commons.logging.Log
    public boolean isWarnEnabled() {
        return this.category.isEnabledFor(Priority.WARN);
    }
}
