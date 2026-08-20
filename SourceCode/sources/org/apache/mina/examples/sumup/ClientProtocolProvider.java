package org.apache.mina.examples.sumup;

import org.apache.mina.protocol.ProtocolCodecFactory;
import org.apache.mina.protocol.ProtocolDecoder;
import org.apache.mina.protocol.ProtocolEncoder;
import org.apache.mina.protocol.ProtocolHandler;
import org.apache.mina.protocol.ProtocolProvider;
import org.apache.mina.protocol.codec.NettyDecoder;
import org.apache.mina.protocol.codec.NettyEncoder;
/* loaded from: classes4.dex */
public class ClientProtocolProvider implements ProtocolProvider {
    private static final ProtocolCodecFactory CODEC_FACTORY = new ProtocolCodecFactory() { // from class: org.apache.mina.examples.sumup.ClientProtocolProvider.1
        @Override // org.apache.mina.protocol.ProtocolCodecFactory
        public ProtocolEncoder newEncoder() {
            return new NettyEncoder();
        }

        @Override // org.apache.mina.protocol.ProtocolCodecFactory
        public ProtocolDecoder newDecoder() {
            return new NettyDecoder(new SumUpMessageRecognizer(1));
        }
    };
    private final ProtocolHandler handler;

    public ClientProtocolProvider(int[] iArr) {
        this.handler = new ClientSessionHandler(iArr);
    }

    @Override // org.apache.mina.protocol.ProtocolProvider
    public ProtocolCodecFactory getCodecFactory() {
        return CODEC_FACTORY;
    }

    @Override // org.apache.mina.protocol.ProtocolProvider
    public ProtocolHandler getHandler() {
        return this.handler;
    }
}
