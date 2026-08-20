package org.apache.mina.protocol;
/* loaded from: classes5.dex */
public interface ProtocolEncoder {
    void encode(ProtocolSession protocolSession, Object obj, ProtocolEncoderOutput protocolEncoderOutput) throws ProtocolViolationException;
}
