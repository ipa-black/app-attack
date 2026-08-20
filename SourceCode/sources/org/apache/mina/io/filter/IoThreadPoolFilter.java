package org.apache.mina.io.filter;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.common.Session;
import org.apache.mina.io.IoFilter;
import org.apache.mina.io.IoSession;
import org.apache.mina.util.BaseThreadPool;
import org.apache.mina.util.EventType;
import org.apache.mina.util.ThreadPool;
/* loaded from: classes4.dex */
public class IoThreadPoolFilter extends BaseThreadPool implements ThreadPool, IoFilter {
    @Override // org.apache.mina.io.IoFilter
    public void sessionOpened(IoFilter.NextFilter nextFilter, IoSession ioSession) {
        fireEvent(nextFilter, ioSession, EventType.OPENED, null);
    }

    @Override // org.apache.mina.io.IoFilter
    public void sessionClosed(IoFilter.NextFilter nextFilter, IoSession ioSession) {
        fireEvent(nextFilter, ioSession, EventType.CLOSED, null);
    }

    @Override // org.apache.mina.io.IoFilter
    public void sessionIdle(IoFilter.NextFilter nextFilter, IoSession ioSession, IdleStatus idleStatus) {
        fireEvent(nextFilter, ioSession, EventType.IDLE, idleStatus);
    }

    @Override // org.apache.mina.io.IoFilter
    public void exceptionCaught(IoFilter.NextFilter nextFilter, IoSession ioSession, Throwable th) {
        fireEvent(nextFilter, ioSession, EventType.EXCEPTION, th);
    }

    @Override // org.apache.mina.io.IoFilter
    public void dataRead(IoFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer) {
        byteBuffer.acquire();
        fireEvent(nextFilter, ioSession, EventType.READ, byteBuffer);
    }

    @Override // org.apache.mina.io.IoFilter
    public void dataWritten(IoFilter.NextFilter nextFilter, IoSession ioSession, Object obj) {
        fireEvent(nextFilter, ioSession, EventType.WRITTEN, obj);
    }

    @Override // org.apache.mina.util.BaseThreadPool
    protected void processEvent(Object obj, Session session, EventType eventType, Object obj2) {
        IoFilter.NextFilter nextFilter = (IoFilter.NextFilter) obj;
        IoSession ioSession = (IoSession) session;
        if (eventType == EventType.READ) {
            ByteBuffer byteBuffer = (ByteBuffer) obj2;
            nextFilter.dataRead(ioSession, byteBuffer);
            byteBuffer.release();
        } else if (eventType == EventType.WRITTEN) {
            nextFilter.dataWritten(ioSession, obj2);
        } else if (eventType == EventType.EXCEPTION) {
            nextFilter.exceptionCaught(ioSession, (Throwable) obj2);
        } else if (eventType == EventType.IDLE) {
            nextFilter.sessionIdle(ioSession, (IdleStatus) obj2);
        } else if (eventType == EventType.OPENED) {
            nextFilter.sessionOpened(ioSession);
        } else if (eventType == EventType.CLOSED) {
            nextFilter.sessionClosed(ioSession);
        }
    }

    @Override // org.apache.mina.io.IoFilter
    public void filterWrite(IoFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer, Object obj) throws Exception {
        nextFilter.filterWrite(ioSession, byteBuffer, obj);
    }
}
