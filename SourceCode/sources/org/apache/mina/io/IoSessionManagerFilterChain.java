package org.apache.mina.io;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.io.IoFilter;
/* loaded from: classes4.dex */
public abstract class IoSessionManagerFilterChain extends AbstractIoFilterChain {
    private final IoSessionManager manager;

    /* JADX INFO: Access modifiers changed from: protected */
    public IoSessionManagerFilterChain(IoSessionManager ioSessionManager) {
        this.manager = ioSessionManager;
    }

    public IoSessionManager getManager() {
        return this.manager;
    }

    @Override // org.apache.mina.io.AbstractIoFilterChain
    protected IoFilter createTailFilter() {
        return new IoFilter() { // from class: org.apache.mina.io.IoSessionManagerFilterChain.1
            @Override // org.apache.mina.io.IoFilter
            public void sessionOpened(IoFilter.NextFilter nextFilter, IoSession ioSession) throws Exception {
                ((IoSessionFilterChain) ioSession.getFilterChain()).sessionOpened(ioSession);
            }

            @Override // org.apache.mina.io.IoFilter
            public void sessionClosed(IoFilter.NextFilter nextFilter, IoSession ioSession) throws Exception {
                ((IoSessionFilterChain) ioSession.getFilterChain()).sessionClosed(ioSession);
            }

            @Override // org.apache.mina.io.IoFilter
            public void sessionIdle(IoFilter.NextFilter nextFilter, IoSession ioSession, IdleStatus idleStatus) throws Exception {
                ((IoSessionFilterChain) ioSession.getFilterChain()).sessionIdle(ioSession, idleStatus);
            }

            @Override // org.apache.mina.io.IoFilter
            public void exceptionCaught(IoFilter.NextFilter nextFilter, IoSession ioSession, Throwable th) throws Exception {
                ((IoSessionFilterChain) ioSession.getFilterChain()).exceptionCaught(ioSession, th);
            }

            @Override // org.apache.mina.io.IoFilter
            public void dataRead(IoFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer) throws Exception {
                ((IoSessionFilterChain) ioSession.getFilterChain()).dataRead(ioSession, byteBuffer);
            }

            @Override // org.apache.mina.io.IoFilter
            public void dataWritten(IoFilter.NextFilter nextFilter, IoSession ioSession, Object obj) throws Exception {
                ((IoSessionFilterChain) ioSession.getFilterChain()).dataWritten(ioSession, obj);
            }

            @Override // org.apache.mina.io.IoFilter
            public void filterWrite(IoFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer, Object obj) throws Exception {
                nextFilter.filterWrite(ioSession, byteBuffer, obj);
            }
        };
    }
}
