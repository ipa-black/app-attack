package org.apache.mina.examples.echoserver;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.SessionConfig;
import org.apache.mina.io.IoHandlerAdapter;
import org.apache.mina.io.IoSession;
import org.apache.mina.io.socket.SocketSessionConfig;
/* loaded from: classes4.dex */
public class EchoProtocolHandler extends IoHandlerAdapter {
    @Override // org.apache.mina.io.IoHandlerAdapter, org.apache.mina.io.IoHandler
    public void sessionCreated(IoSession ioSession) {
        SessionConfig config = ioSession.getConfig();
        if (config instanceof SocketSessionConfig) {
            ((SocketSessionConfig) config).setSessionReceiveBufferSize(2048);
        }
    }

    @Override // org.apache.mina.io.IoHandlerAdapter, org.apache.mina.io.IoHandler
    public void exceptionCaught(IoSession ioSession, Throwable th) {
        ioSession.close();
    }

    @Override // org.apache.mina.io.IoHandlerAdapter, org.apache.mina.io.IoHandler
    public void dataRead(IoSession ioSession, ByteBuffer byteBuffer) {
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
        allocate.put(byteBuffer);
        allocate.flip();
        ioSession.write(allocate, null);
    }
}
