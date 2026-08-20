package org.apache.mina.examples.reverser;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.protocol.ProtocolEncoder;
import org.apache.mina.protocol.ProtocolEncoderOutput;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.ProtocolViolationException;
/* loaded from: classes4.dex */
public class TextLineEncoder implements ProtocolEncoder {
    @Override // org.apache.mina.protocol.ProtocolEncoder
    public void encode(ProtocolSession protocolSession, Object obj, ProtocolEncoderOutput protocolEncoderOutput) throws ProtocolViolationException {
        String obj2 = obj.toString();
        if (obj2.length() > 256) {
            throw new ProtocolViolationException("Cannot encode too long string.");
        }
        String stringBuffer = new StringBuffer().append(obj2).append("\r\n").toString();
        ByteBuffer allocate = ByteBuffer.allocate(stringBuffer.length());
        for (int i = 0; i < stringBuffer.length(); i++) {
            allocate.put((byte) stringBuffer.charAt(i));
        }
        allocate.flip();
        protocolEncoderOutput.write(allocate);
    }
}
