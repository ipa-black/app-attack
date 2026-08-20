package org.apache.mina.protocol.codec;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.protocol.ProtocolDecoderOutput;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.ProtocolViolationException;
/* loaded from: classes5.dex */
public interface MessageDecoder {
    public static final MessageDecoderResult OK = MessageDecoderResult.OK;
    public static final MessageDecoderResult NEED_DATA = MessageDecoderResult.NEED_DATA;
    public static final MessageDecoderResult NOT_OK = MessageDecoderResult.NOT_OK;

    MessageDecoderResult decodable(ProtocolSession protocolSession, ByteBuffer byteBuffer);

    MessageDecoderResult decode(ProtocolSession protocolSession, ByteBuffer byteBuffer, ProtocolDecoderOutput protocolDecoderOutput) throws ProtocolViolationException;
}
