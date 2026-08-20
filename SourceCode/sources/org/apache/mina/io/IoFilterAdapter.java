package org.apache.mina.io;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.io.IoFilter;
/* loaded from: classes4.dex */
public class IoFilterAdapter implements IoFilter {
    @Override // org.apache.mina.io.IoFilter
    public void sessionOpened(IoFilter.NextFilter nextFilter, IoSession ioSession) throws Exception {
        nextFilter.sessionOpened(ioSession);
    }

    @Override // org.apache.mina.io.IoFilter
    public void sessionClosed(IoFilter.NextFilter nextFilter, IoSession ioSession) throws Exception {
        nextFilter.sessionClosed(ioSession);
    }

    @Override // org.apache.mina.io.IoFilter
    public void sessionIdle(IoFilter.NextFilter nextFilter, IoSession ioSession, IdleStatus idleStatus) throws Exception {
        nextFilter.sessionIdle(ioSession, idleStatus);
    }

    @Override // org.apache.mina.io.IoFilter
    public void exceptionCaught(IoFilter.NextFilter nextFilter, IoSession ioSession, Throwable th) throws Exception {
        nextFilter.exceptionCaught(ioSession, th);
    }

    @Override // org.apache.mina.io.IoFilter
    public void dataRead(IoFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer) throws Exception {
        nextFilter.dataRead(ioSession, byteBuffer);
    }

    @Override // org.apache.mina.io.IoFilter
    public void dataWritten(IoFilter.NextFilter nextFilter, IoSession ioSession, Object obj) throws Exception {
        nextFilter.dataWritten(ioSession, obj);
    }

    @Override // org.apache.mina.io.IoFilter
    public void filterWrite(IoFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer, Object obj) throws Exception {
        nextFilter.filterWrite(ioSession, byteBuffer, obj);
    }
}
