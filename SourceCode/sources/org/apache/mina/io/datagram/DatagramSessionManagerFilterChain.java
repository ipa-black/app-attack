package org.apache.mina.io.datagram;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.io.IoSession;
import org.apache.mina.io.IoSessionManagerFilterChain;
import org.apache.mina.util.Queue;
/* loaded from: classes4.dex */
class DatagramSessionManagerFilterChain extends IoSessionManagerFilterChain {
    /* JADX INFO: Access modifiers changed from: package-private */
    public DatagramSessionManagerFilterChain(DatagramSessionManager datagramSessionManager) {
        super(datagramSessionManager);
    }

    @Override // org.apache.mina.io.AbstractIoFilterChain
    protected void doWrite(IoSession ioSession, ByteBuffer byteBuffer, Object obj) {
        DatagramSession datagramSession = (DatagramSession) ioSession;
        Queue writeBufferQueue = datagramSession.getWriteBufferQueue();
        Queue writeMarkerQueue = datagramSession.getWriteMarkerQueue();
        synchronized (writeBufferQueue) {
            writeBufferQueue.push(byteBuffer);
            writeMarkerQueue.push(obj);
        }
        ((DatagramSessionManager) getManager()).flushSession(datagramSession);
    }
}
