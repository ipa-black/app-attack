package org.apache.mina.io;

import org.apache.mina.common.ByteBuffer;
/* loaded from: classes4.dex */
public class IoSessionFilterChain extends AbstractIoFilterChain {
    private final IoSessionManagerFilterChain managerChain;

    public IoSessionFilterChain(IoSessionManagerFilterChain ioSessionManagerFilterChain) {
        this.managerChain = ioSessionManagerFilterChain;
    }

    @Override // org.apache.mina.io.AbstractIoFilterChain
    protected void doWrite(IoSession ioSession, ByteBuffer byteBuffer, Object obj) {
        this.managerChain.filterWrite(ioSession, byteBuffer, obj);
    }
}
