package org.apache.mina.io;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.util.SessionUtil;
/* loaded from: classes4.dex */
public class IoHandlerAdapter implements IoHandler {
    @Override // org.apache.mina.io.IoHandler
    public void dataRead(IoSession ioSession, ByteBuffer byteBuffer) throws Exception {
    }

    @Override // org.apache.mina.io.IoHandler
    public void dataWritten(IoSession ioSession, Object obj) throws Exception {
    }

    @Override // org.apache.mina.io.IoHandler
    public void exceptionCaught(IoSession ioSession, Throwable th) throws Exception {
    }

    @Override // org.apache.mina.io.IoHandler
    public void sessionClosed(IoSession ioSession) throws Exception {
    }

    @Override // org.apache.mina.io.IoHandler
    public void sessionIdle(IoSession ioSession, IdleStatus idleStatus) throws Exception {
    }

    @Override // org.apache.mina.io.IoHandler
    public void sessionOpened(IoSession ioSession) throws Exception {
    }

    @Override // org.apache.mina.io.IoHandler
    public void sessionCreated(IoSession ioSession) throws Exception {
        SessionUtil.initialize(ioSession);
    }
}
