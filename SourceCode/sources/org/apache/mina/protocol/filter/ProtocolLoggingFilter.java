package org.apache.mina.protocol.filter;

import java.util.logging.Level;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.protocol.ProtocolFilter;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.util.SessionLog;
/* loaded from: classes5.dex */
public class ProtocolLoggingFilter implements ProtocolFilter {
    private Level defaultLevel = Level.INFO;
    public static final String PREFIX = SessionLog.PREFIX;
    public static final String LOGGER = SessionLog.LOGGER;

    public Level getDefaultLevel() {
        return this.defaultLevel;
    }

    public void setDefaultLevel(Level level) {
        if (level == null) {
            level = Level.INFO;
        }
        this.defaultLevel = level;
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void sessionOpened(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession) {
        SessionLog.log(this.defaultLevel, protocolSession, "OPENED");
        nextFilter.sessionOpened(protocolSession);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void sessionClosed(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession) {
        SessionLog.log(this.defaultLevel, protocolSession, "CLOSED");
        nextFilter.sessionClosed(protocolSession);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void sessionIdle(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, IdleStatus idleStatus) {
        SessionLog.log(this.defaultLevel, protocolSession, new StringBuffer("IDLE: ").append(idleStatus).toString());
        nextFilter.sessionIdle(protocolSession, idleStatus);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void exceptionCaught(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Throwable th) {
        SessionLog.log(this.defaultLevel, protocolSession, "EXCEPTION:", th);
        nextFilter.exceptionCaught(protocolSession, th);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void messageReceived(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
        SessionLog.log(this.defaultLevel, protocolSession, new StringBuffer("RECEIVED: ").append(obj).toString());
        nextFilter.messageReceived(protocolSession, obj);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void messageSent(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
        SessionLog.log(this.defaultLevel, protocolSession, new StringBuffer("SENT: ").append(obj).toString());
        nextFilter.messageSent(protocolSession, obj);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void filterWrite(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
        SessionLog.log(this.defaultLevel, protocolSession, new StringBuffer("WRITE: ").append(obj).toString());
        nextFilter.filterWrite(protocolSession, obj);
    }
}
