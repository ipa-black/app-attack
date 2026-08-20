package org.apache.mina.examples.reverser;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.protocol.ProtocolDecoder;
import org.apache.mina.protocol.ProtocolDecoderOutput;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.ProtocolViolationException;
/* loaded from: classes4.dex */
public class TextLineDecoder implements ProtocolDecoder {
    private StringBuffer decodeBuf = new StringBuffer();

    @Override // org.apache.mina.protocol.ProtocolDecoder
    public void decode(ProtocolSession protocolSession, ByteBuffer byteBuffer, ProtocolDecoderOutput protocolDecoderOutput) throws ProtocolViolationException {
        do {
            byte b2 = byteBuffer.get();
            if (b2 == 10) {
                String stringBuffer = this.decodeBuf.toString();
                StringBuffer stringBuffer2 = this.decodeBuf;
                stringBuffer2.delete(0, stringBuffer2.length());
                protocolDecoderOutput.write(stringBuffer);
            } else if (b2 != 13) {
                this.decodeBuf.append((char) b2);
            }
            if (this.decodeBuf.length() > 256) {
                StringBuffer stringBuffer3 = this.decodeBuf;
                stringBuffer3.delete(0, stringBuffer3.length());
                throw new ProtocolViolationException("The line is too long.");
            }
        } while (byteBuffer.hasRemaining());
    }
}
