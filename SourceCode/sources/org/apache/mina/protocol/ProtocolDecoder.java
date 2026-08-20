package org.apache.mina.protocol;

import org.apache.mina.common.ByteBuffer;
/* loaded from: classes5.dex */
public interface ProtocolDecoder {
    void decode(ProtocolSession protocolSession, ByteBuffer byteBuffer, ProtocolDecoderOutput protocolDecoderOutput) throws ProtocolViolationException;
}
