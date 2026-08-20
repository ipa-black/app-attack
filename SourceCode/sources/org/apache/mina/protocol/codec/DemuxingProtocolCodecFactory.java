package org.apache.mina.protocol.codec;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.apache.mina.common.ByteBuffer;
import org.apache.mina.protocol.ProtocolCodecFactory;
import org.apache.mina.protocol.ProtocolDecoder;
import org.apache.mina.protocol.ProtocolDecoderOutput;
import org.apache.mina.protocol.ProtocolEncoder;
import org.apache.mina.protocol.ProtocolEncoderOutput;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.ProtocolViolationException;
/* loaded from: classes5.dex */
public class DemuxingProtocolCodecFactory implements ProtocolCodecFactory {
    private MessageDecoder[] decoders = new MessageDecoder[0];
    private final Map encoders = new HashMap();
    private final ProtocolEncoder protocolEncoder = new ProtocolEncoderImpl();
    private final ProtocolDecoder protocolDecoder = new ProtocolDecoderImpl();

    public void register(MessageEncoder messageEncoder) {
        for (Class cls : messageEncoder.getMessageTypes()) {
            this.encoders.put(cls, messageEncoder);
        }
    }

    public void register(MessageDecoder messageDecoder) {
        if (messageDecoder == null) {
            throw new NullPointerException("decoder");
        }
        MessageDecoder[] messageDecoderArr = this.decoders;
        MessageDecoder[] messageDecoderArr2 = new MessageDecoder[messageDecoderArr.length + 1];
        System.arraycopy(messageDecoderArr, 0, messageDecoderArr2, 0, messageDecoderArr.length);
        messageDecoderArr2[messageDecoderArr.length] = messageDecoder;
        this.decoders = messageDecoderArr2;
    }

    @Override // org.apache.mina.protocol.ProtocolCodecFactory
    public ProtocolEncoder newEncoder() {
        return this.protocolEncoder;
    }

    @Override // org.apache.mina.protocol.ProtocolCodecFactory
    public ProtocolDecoder newDecoder() {
        return this.protocolDecoder;
    }

    /* loaded from: classes5.dex */
    private class ProtocolEncoderImpl implements ProtocolEncoder {
        private ProtocolEncoderImpl() {
        }

        @Override // org.apache.mina.protocol.ProtocolEncoder
        public void encode(ProtocolSession protocolSession, Object obj, ProtocolEncoderOutput protocolEncoderOutput) throws ProtocolViolationException {
            Class<?> cls = obj.getClass();
            MessageEncoder findEncoder = findEncoder(cls);
            if (findEncoder == null) {
                throw new ProtocolViolationException(new StringBuffer("Unexpected message type: ").append(cls).toString());
            }
            findEncoder.encode(protocolSession, obj, protocolEncoderOutput);
        }

        private MessageEncoder findEncoder(Class cls) {
            MessageEncoder messageEncoder = (MessageEncoder) DemuxingProtocolCodecFactory.this.encoders.get(cls);
            return messageEncoder == null ? findEncoder(cls, new HashSet()) : messageEncoder;
        }

        private MessageEncoder findEncoder(Class cls, Set set) {
            if (set.contains(cls)) {
                return null;
            }
            set.add(cls);
            MessageEncoder messageEncoder = (MessageEncoder) DemuxingProtocolCodecFactory.this.encoders.get(cls);
            if (messageEncoder == null) {
                MessageEncoder findEncoder = findEncoder(cls, set);
                if (findEncoder != null) {
                    return findEncoder;
                }
                for (Class<?> cls2 : cls.getInterfaces()) {
                    MessageEncoder findEncoder2 = findEncoder(cls2, set);
                    if (findEncoder2 != null) {
                        return findEncoder2;
                    }
                }
                return null;
            }
            return messageEncoder;
        }
    }

    /* loaded from: classes5.dex */
    private class ProtocolDecoderImpl extends CumulativeProtocolDecoder {
        private MessageDecoder currentDecoder;

        protected ProtocolDecoderImpl() {
            super(16);
        }

        @Override // org.apache.mina.protocol.codec.CumulativeProtocolDecoder
        protected boolean doDecode(ProtocolSession protocolSession, ByteBuffer byteBuffer, ProtocolDecoderOutput protocolDecoderOutput) throws ProtocolViolationException {
            if (this.currentDecoder == null) {
                MessageDecoder[] messageDecoderArr = DemuxingProtocolCodecFactory.this.decoders;
                int length = messageDecoderArr.length - 1;
                int i = 0;
                while (true) {
                    if (length < 0) {
                        break;
                    }
                    MessageDecoder messageDecoder = messageDecoderArr[length];
                    int limit = byteBuffer.limit();
                    byteBuffer.position(0);
                    MessageDecoderResult decodable = messageDecoder.decodable(protocolSession, byteBuffer);
                    byteBuffer.position(0);
                    byteBuffer.limit(limit);
                    if (decodable == MessageDecoder.OK) {
                        this.currentDecoder = messageDecoder;
                        break;
                    }
                    if (decodable == MessageDecoder.NOT_OK) {
                        i++;
                    } else if (decodable != MessageDecoder.NEED_DATA) {
                        throw new IllegalStateException(new StringBuffer("Unexpected decode result (see your decodable()): ").append(decodable).toString());
                    }
                    length--;
                }
                if (i == messageDecoderArr.length) {
                    byteBuffer.position(byteBuffer.limit());
                    throw new ProtocolViolationException(new StringBuffer("No appropriate message decoder: ").append(byteBuffer.getHexDump()).toString());
                } else if (this.currentDecoder == null) {
                    return false;
                }
            }
            MessageDecoderResult decode = this.currentDecoder.decode(protocolSession, byteBuffer, protocolDecoderOutput);
            if (decode == MessageDecoder.OK) {
                this.currentDecoder = null;
                return true;
            } else if (decode == MessageDecoder.NEED_DATA) {
                return false;
            } else {
                if (decode == MessageDecoder.NOT_OK) {
                    throw new ProtocolViolationException("Message decoder returned NOT_OK.");
                }
                throw new IllegalStateException(new StringBuffer("Unexpected decode result (see your decode()): ").append(decode).toString());
            }
        }
    }
}
