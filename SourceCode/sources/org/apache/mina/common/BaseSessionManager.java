package org.apache.mina.common;
/* loaded from: classes4.dex */
public class BaseSessionManager implements SessionManager {
    protected ExceptionMonitor exceptionMonitor = new DefaultExceptionMonitor();

    @Override // org.apache.mina.common.SessionManager
    public ExceptionMonitor getExceptionMonitor() {
        return this.exceptionMonitor;
    }

    @Override // org.apache.mina.common.SessionManager
    public void setExceptionMonitor(ExceptionMonitor exceptionMonitor) {
        if (exceptionMonitor == null) {
            exceptionMonitor = new DefaultExceptionMonitor();
        }
        this.exceptionMonitor = exceptionMonitor;
    }
}
