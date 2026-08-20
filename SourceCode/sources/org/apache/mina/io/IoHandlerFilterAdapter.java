package org.apache.mina.io;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.io.IoHandlerFilter;
/* loaded from: classes4.dex */
public class IoHandlerFilterAdapter implements IoHandlerFilter {
    @Override // org.apache.mina.io.IoHandlerFilter
    public void sessionOpened(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession) {
        nextFilter.sessionOpened(ioSession);
    }

    @Override // org.apache.mina.io.IoHandlerFilter
    public void sessionClosed(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession) {
        nextFilter.sessionClosed(ioSession);
    }

    @Override // org.apache.mina.io.IoHandlerFilter
    public void sessionIdle(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession, IdleStatus idleStatus) {
        nextFilter.sessionIdle(ioSession, idleStatus);
    }

    @Override // org.apache.mina.io.IoHandlerFilter
    public void exceptionCaught(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession, Throwable th) {
        nextFilter.exceptionCaught(ioSession, th);
    }

    @Override // org.apache.mina.io.IoHandlerFilter
    public void dataRead(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer) {
        nextFilter.dataRead(ioSession, byteBuffer);
    }

    @Override // org.apache.mina.io.IoHandlerFilter
    public void dataWritten(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession, Object obj) {
        nextFilter.dataWritten(ioSession, obj);
    }

    @Override // org.apache.mina.io.IoHandlerFilter
    public void filterWrite(IoHandlerFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer, Object obj) {
        nextFilter.filterWrite(ioSession, byteBuffer, obj);
    }
}
