package org.apache.mina.io.filter;

import java.util.logging.Level;
import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.io.IoFilter;
import org.apache.mina.io.IoSession;
import org.apache.mina.util.SessionLog;
/* loaded from: classes4.dex */
public class IoLoggingFilter implements IoFilter {
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

    @Override // org.apache.mina.io.IoFilter
    public void sessionOpened(IoFilter.NextFilter nextFilter, IoSession ioSession) {
        SessionLog.log(this.defaultLevel, ioSession, "OPENED");
        nextFilter.sessionOpened(ioSession);
    }

    @Override // org.apache.mina.io.IoFilter
    public void sessionClosed(IoFilter.NextFilter nextFilter, IoSession ioSession) {
        SessionLog.log(this.defaultLevel, ioSession, "CLOSED");
        nextFilter.sessionClosed(ioSession);
    }

    @Override // org.apache.mina.io.IoFilter
    public void sessionIdle(IoFilter.NextFilter nextFilter, IoSession ioSession, IdleStatus idleStatus) {
        SessionLog.log(this.defaultLevel, ioSession, new StringBuffer("IDLE: ").append(idleStatus).toString());
        nextFilter.sessionIdle(ioSession, idleStatus);
    }

    @Override // org.apache.mina.io.IoFilter
    public void exceptionCaught(IoFilter.NextFilter nextFilter, IoSession ioSession, Throwable th) {
        SessionLog.log(this.defaultLevel, ioSession, "EXCEPTION:", th);
        nextFilter.exceptionCaught(ioSession, th);
    }

    @Override // org.apache.mina.io.IoFilter
    public void dataRead(IoFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer) {
        SessionLog.log(this.defaultLevel, ioSession, new StringBuffer("READ: ").append(byteBuffer.getHexDump()).toString());
        nextFilter.dataRead(ioSession, byteBuffer);
    }

    @Override // org.apache.mina.io.IoFilter
    public void dataWritten(IoFilter.NextFilter nextFilter, IoSession ioSession, Object obj) {
        SessionLog.log(this.defaultLevel, ioSession, new StringBuffer("WRITTEN: ").append(obj).toString());
        nextFilter.dataWritten(ioSession, obj);
    }

    @Override // org.apache.mina.io.IoFilter
    public void filterWrite(IoFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer, Object obj) {
        SessionLog.log(this.defaultLevel, ioSession, new StringBuffer("WRITE: ").append(obj).append(", ").append(byteBuffer.getHexDump()).toString());
        nextFilter.filterWrite(ioSession, byteBuffer, obj);
    }
}
