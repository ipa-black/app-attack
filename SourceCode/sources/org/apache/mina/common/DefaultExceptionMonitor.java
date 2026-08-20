package org.apache.mina.common;

import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes4.dex */
public class DefaultExceptionMonitor implements ExceptionMonitor {
    static /* synthetic */ Class class$org$apache$mina$common$DefaultExceptionMonitor;
    private static final Logger log;

    static {
        Class cls = class$org$apache$mina$common$DefaultExceptionMonitor;
        if (cls == null) {
            cls = class$("org.apache.mina.common.DefaultExceptionMonitor");
            class$org$apache$mina$common$DefaultExceptionMonitor = cls;
        }
        log = Logger.getLogger(cls.getName());
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    @Override // org.apache.mina.common.ExceptionMonitor
    public void exceptionCaught(Object obj, Throwable th) {
        log.log(Level.WARNING, "Unexpected exception.", th);
    }
}
