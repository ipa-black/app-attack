package org.apache.mina.examples.netcat;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.io.IoHandlerAdapter;
import org.apache.mina.io.IoSession;
/* loaded from: classes4.dex */
public class NetCatProtocolHandler extends IoHandlerAdapter {
    @Override // org.apache.mina.io.IoHandlerAdapter, org.apache.mina.io.IoHandler
    public void sessionOpened(IoSession ioSession) {
        ioSession.getConfig().setIdleTime(IdleStatus.READER_IDLE, 10);
    }

    @Override // org.apache.mina.io.IoHandlerAdapter, org.apache.mina.io.IoHandler
    public void sessionClosed(IoSession ioSession) {
        System.err.println(new StringBuffer("Total ").append(ioSession.getReadBytes()).append(" byte(s)").toString());
    }

    @Override // org.apache.mina.io.IoHandlerAdapter, org.apache.mina.io.IoHandler
    public void sessionIdle(IoSession ioSession, IdleStatus idleStatus) {
        if (idleStatus == IdleStatus.READER_IDLE) {
            ioSession.close();
        }
    }

    @Override // org.apache.mina.io.IoHandlerAdapter, org.apache.mina.io.IoHandler
    public void dataRead(IoSession ioSession, ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining()) {
            System.out.print((char) byteBuffer.get());
        }
        System.out.flush();
    }
}
