package org.apache.mina.io;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.IdleStatus;
/* loaded from: classes4.dex */
public interface IoHandlerFilter {

    /* loaded from: classes4.dex */
    public interface NextFilter extends IoHandler {
        void filterWrite(IoSession ioSession, ByteBuffer byteBuffer, Object obj);
    }

    void dataRead(NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer);

    void dataWritten(NextFilter nextFilter, IoSession ioSession, Object obj);

    void exceptionCaught(NextFilter nextFilter, IoSession ioSession, Throwable th);

    void filterWrite(NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer, Object obj);

    void sessionClosed(NextFilter nextFilter, IoSession ioSession);

    void sessionIdle(NextFilter nextFilter, IoSession ioSession, IdleStatus idleStatus);

    void sessionOpened(NextFilter nextFilter, IoSession ioSession);
}
