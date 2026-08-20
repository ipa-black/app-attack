package org.apache.asn1.codec.mina;

import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import org.apache.asn1.codec.EncoderException;
import org.apache.asn1.codec.stateful.EncoderCallback;
import org.apache.asn1.codec.stateful.StatefulEncoder;
import org.apache.mina.protocol.ProtocolEncoder;
import org.apache.mina.protocol.ProtocolEncoderOutput;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.ProtocolViolationException;
/* loaded from: classes5.dex */
public class Asn1CodecEncoder implements ProtocolEncoder {
    private final EncoderCallbackImpl callback;
    private final StatefulEncoder encoder;

    public Asn1CodecEncoder(StatefulEncoder statefulEncoder) {
        EncoderCallbackImpl encoderCallbackImpl = new EncoderCallbackImpl();
        this.callback = encoderCallbackImpl;
        statefulEncoder.setCallback(encoderCallbackImpl);
        this.encoder = statefulEncoder;
    }

    @Override // org.apache.mina.protocol.ProtocolEncoder
    public void encode(ProtocolSession protocolSession, Object obj, ProtocolEncoderOutput protocolEncoderOutput) throws ProtocolViolationException {
        this.callback.encOut = protocolEncoderOutput;
        try {
            this.encoder.encode(obj);
        } catch (EncoderException e2) {
            throw new ProtocolViolationException("Encoding failed.", e2);
        }
    }

    /* loaded from: classes5.dex */
    private class EncoderCallbackImpl implements EncoderCallback {
        private ProtocolEncoderOutput encOut;

        private EncoderCallbackImpl() {
        }

        @Override // org.apache.asn1.codec.stateful.EncoderCallback
        public void encodeOccurred(StatefulEncoder statefulEncoder, Object obj) {
            if (obj instanceof ByteBuffer) {
                this.encOut.write(org.apache.mina.common.ByteBuffer.wrap((ByteBuffer) obj));
            } else if (obj instanceof Object[]) {
                for (Object obj2 : (Object[]) obj) {
                    encodeOccurred(statefulEncoder, obj2);
                }
                this.encOut.mergeAll();
            } else if (obj instanceof Iterator) {
                Iterator it = (Iterator) obj;
                while (it.hasNext()) {
                    encodeOccurred(statefulEncoder, it.next());
                }
                this.encOut.mergeAll();
            } else if (obj instanceof Collection) {
                for (Object obj3 : (Collection) obj) {
                    encodeOccurred(statefulEncoder, obj3);
                }
                this.encOut.mergeAll();
            } else if (obj instanceof Enumeration) {
                Enumeration enumeration = (Enumeration) obj;
                while (enumeration.hasMoreElements()) {
                    encodeOccurred(statefulEncoder, enumeration.nextElement());
                }
                this.encOut.mergeAll();
            } else {
                throw new IllegalArgumentException(new StringBuffer("Encoded result is not a ByteBuffer: ").append(obj.getClass()).toString());
            }
        }
    }
}
