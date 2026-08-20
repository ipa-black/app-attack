package org.apache.mina.protocol.codec;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.protocol.ProtocolDecoder;
import org.apache.mina.protocol.ProtocolDecoderOutput;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.ProtocolViolationException;
/* loaded from: classes5.dex */
public abstract class CumulativeProtocolDecoder implements ProtocolDecoder {
    private ByteBuffer buf;

    protected abstract boolean doDecode(ProtocolSession protocolSession, ByteBuffer byteBuffer, ProtocolDecoderOutput protocolDecoderOutput) throws ProtocolViolationException;

    /* JADX INFO: Access modifiers changed from: protected */
    public CumulativeProtocolDecoder(int i) {
        ByteBuffer allocate = ByteBuffer.allocate(i);
        this.buf = allocate;
        allocate.setAutoExpand(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x002e, code lost:
        throw new java.lang.IllegalStateException("doDecode() can't return true when buffer is not consumed.");
     */
    @Override // org.apache.mina.protocol.ProtocolDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void decode(org.apache.mina.protocol.ProtocolSession r3, org.apache.mina.common.ByteBuffer r4, org.apache.mina.protocol.ProtocolDecoderOutput r5) throws org.apache.mina.protocol.ProtocolViolationException {
        /*
            r2 = this;
            org.apache.mina.common.TransportType r0 = r3.getTransportType()
            boolean r0 = r0.isStateless()
            if (r0 != 0) goto L34
            org.apache.mina.common.ByteBuffer r0 = r2.buf
            r0.put(r4)
            r0.flip()
        L12:
            int r4 = r0.position()     // Catch: java.lang.Throwable -> L2f
            boolean r1 = r2.doDecode(r3, r0, r5)     // Catch: java.lang.Throwable -> L2f
            if (r1 != 0) goto L20
            r0.compact()
            return
        L20:
            int r1 = r0.position()     // Catch: java.lang.Throwable -> L2f
            if (r1 == r4) goto L27
            goto L12
        L27:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L2f
            java.lang.String r4 = "doDecode() can't return true when buffer is not consumed."
            r3.<init>(r4)     // Catch: java.lang.Throwable -> L2f
            throw r3     // Catch: java.lang.Throwable -> L2f
        L2f:
            r3 = move-exception
            r0.compact()
            throw r3
        L34:
            java.lang.IllegalStateException r3 = new java.lang.IllegalStateException
            java.lang.String r4 = "This decoder doesn't work for stateless transport types."
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.mina.protocol.codec.CumulativeProtocolDecoder.decode(org.apache.mina.protocol.ProtocolSession, org.apache.mina.common.ByteBuffer, org.apache.mina.protocol.ProtocolDecoderOutput):void");
    }
}
