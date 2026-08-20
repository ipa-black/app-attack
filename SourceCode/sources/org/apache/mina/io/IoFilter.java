package org.apache.mina.io;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.IdleStatus;
/* loaded from: classes4.dex */
public interface IoFilter {

    /* loaded from: classes4.dex */
    public interface NextFilter {
        void dataRead(IoSession ioSession, ByteBuffer byteBuffer);

        void dataWritten(IoSession ioSession, Object obj);

        void exceptionCaught(IoSession ioSession, Throwable th);

        void filterWrite(IoSession ioSession, ByteBuffer byteBuffer, Object obj);

        void sessionClosed(IoSession ioSession);

        void sessionIdle(IoSession ioSession, IdleStatus idleStatus);

        void sessionOpened(IoSession ioSession);
    }

    void dataRead(NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer) throws Exception;

    void dataWritten(NextFilter nextFilter, IoSession ioSession, Object obj) throws Exception;

    void exceptionCaught(NextFilter nextFilter, IoSession ioSession, Throwable th) throws Exception;

    void filterWrite(NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer, Object obj) throws Exception;

    void sessionClosed(NextFilter nextFilter, IoSession ioSession) throws Exception;

    void sessionIdle(NextFilter nextFilter, IoSession ioSession, IdleStatus idleStatus) throws Exception;

    void sessionOpened(NextFilter nextFilter, IoSession ioSession) throws Exception;
}
