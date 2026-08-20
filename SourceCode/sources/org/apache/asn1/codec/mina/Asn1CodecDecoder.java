package org.apache.asn1.codec.mina;

import org.apache.asn1.codec.DecoderException;
import org.apache.asn1.codec.stateful.DecoderCallback;
import org.apache.asn1.codec.stateful.StatefulDecoder;
import org.apache.mina.common.ByteBuffer;
import org.apache.mina.protocol.ProtocolDecoder;
import org.apache.mina.protocol.ProtocolDecoderOutput;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.ProtocolViolationException;
/* loaded from: classes5.dex */
public class Asn1CodecDecoder implements ProtocolDecoder {
    private final DecoderCallbackImpl callback;
    private final StatefulDecoder decoder;

    public Asn1CodecDecoder(StatefulDecoder statefulDecoder) {
        DecoderCallbackImpl decoderCallbackImpl = new DecoderCallbackImpl();
        this.callback = decoderCallbackImpl;
        statefulDecoder.setCallback(decoderCallbackImpl);
        this.decoder = statefulDecoder;
    }

    @Override // org.apache.mina.protocol.ProtocolDecoder
    public void decode(ProtocolSession protocolSession, ByteBuffer byteBuffer, ProtocolDecoderOutput protocolDecoderOutput) throws ProtocolViolationException {
        this.callback.decOut = protocolDecoderOutput;
        try {
            this.decoder.decode(byteBuffer.buf());
        } catch (DecoderException e2) {
            throw new ProtocolViolationException("Failed to decode.", e2);
        }
    }

    /* loaded from: classes5.dex */
    private class DecoderCallbackImpl implements DecoderCallback {
        private ProtocolDecoderOutput decOut;

        private DecoderCallbackImpl() {
        }

        @Override // org.apache.asn1.codec.stateful.DecoderCallback
        public void decodeOccurred(StatefulDecoder statefulDecoder, Object obj) {
            this.decOut.write(obj);
        }
    }
}
