package org.apache.mina.io;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.IdleStatus;
/* loaded from: classes4.dex */
public interface IoHandler {
    void dataRead(IoSession ioSession, ByteBuffer byteBuffer) throws Exception;

    void dataWritten(IoSession ioSession, Object obj) throws Exception;

    void exceptionCaught(IoSession ioSession, Throwable th) throws Exception;

    void sessionClosed(IoSession ioSession) throws Exception;

    void sessionCreated(IoSession ioSession) throws Exception;

    void sessionIdle(IoSession ioSession, IdleStatus idleStatus) throws Exception;

    void sessionOpened(IoSession ioSession) throws Exception;
}
