package org.apache.kerberos.protocol;

import java.io.IOException;
import org.apache.kerberos.io.encoder.ErrorMessageEncoder;
import org.apache.kerberos.io.encoder.KdcReplyEncoder;
import org.apache.kerberos.messages.ErrorMessage;
import org.apache.kerberos.messages.KdcReply;
import org.apache.mina.common.ByteBuffer;
import org.apache.mina.protocol.ProtocolEncoder;
import org.apache.mina.protocol.ProtocolEncoderOutput;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.ProtocolViolationException;
/* loaded from: classes5.dex */
public class KerberosEncoder implements ProtocolEncoder {
    private KdcReplyEncoder replyEncoder = new KdcReplyEncoder();
    private ErrorMessageEncoder errorEncoder = new ErrorMessageEncoder();

    @Override // org.apache.mina.protocol.ProtocolEncoder
    public void encode(ProtocolSession protocolSession, Object obj, ProtocolEncoderOutput protocolEncoderOutput) throws ProtocolViolationException {
        ByteBuffer allocate = ByteBuffer.allocate(1024);
        try {
            if (obj instanceof KdcReply) {
                this.replyEncoder.encode((KdcReply) obj, allocate.buf());
            } else if (obj instanceof ErrorMessage) {
                this.errorEncoder.encode((ErrorMessage) obj, allocate.buf());
            }
            allocate.flip();
            protocolEncoderOutput.write(allocate);
        } catch (IOException unused) {
            throw new ProtocolViolationException();
        }
    }
}
