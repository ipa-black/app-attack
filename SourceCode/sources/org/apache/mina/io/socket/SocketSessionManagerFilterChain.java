package org.apache.mina.io.socket;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.io.IoSession;
import org.apache.mina.io.IoSessionManager;
import org.apache.mina.io.IoSessionManagerFilterChain;
import org.apache.mina.util.Queue;
/* loaded from: classes4.dex */
class SocketSessionManagerFilterChain extends IoSessionManagerFilterChain {
    /* JADX INFO: Access modifiers changed from: package-private */
    public SocketSessionManagerFilterChain(IoSessionManager ioSessionManager) {
        super(ioSessionManager);
    }

    @Override // org.apache.mina.io.AbstractIoFilterChain
    protected void doWrite(IoSession ioSession, ByteBuffer byteBuffer, Object obj) {
        SocketSession socketSession = (SocketSession) ioSession;
        Queue writeBufferQueue = socketSession.getWriteBufferQueue();
        Queue writeMarkerQueue = socketSession.getWriteMarkerQueue();
        synchronized (writeBufferQueue) {
            writeBufferQueue.push(byteBuffer);
            writeMarkerQueue.push(obj);
        }
        SocketIoProcessor.getInstance().flushSession(socketSession);
    }
}
