package org.apache.kerberos.protocol;

import java.io.IOException;
import org.apache.kerberos.io.decoder.KdcRequestDecoder;
import org.apache.mina.common.ByteBuffer;
import org.apache.mina.protocol.ProtocolDecoder;
import org.apache.mina.protocol.ProtocolDecoderOutput;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.ProtocolViolationException;
/* loaded from: classes5.dex */
public class KerberosDecoder implements ProtocolDecoder {
    private KdcRequestDecoder decoder = new KdcRequestDecoder();

    @Override // org.apache.mina.protocol.ProtocolDecoder
    public void decode(ProtocolSession protocolSession, ByteBuffer byteBuffer, ProtocolDecoderOutput protocolDecoderOutput) throws ProtocolViolationException {
        try {
            protocolDecoderOutput.write(this.decoder.decode(byteBuffer.buf()));
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }
}
