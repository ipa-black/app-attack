package org.apache.mina.examples.reverser;

import org.apache.mina.protocol.ProtocolCodecFactory;
import org.apache.mina.protocol.ProtocolDecoder;
import org.apache.mina.protocol.ProtocolEncoder;
import org.apache.mina.protocol.ProtocolHandler;
import org.apache.mina.protocol.ProtocolProvider;
/* loaded from: classes4.dex */
public class ReverseProtocolProvider implements ProtocolProvider {
    private static ProtocolHandler HANDLER = new ReverseProtocolHandler();
    private static ProtocolCodecFactory CODEC_FACTORY = new ProtocolCodecFactory() { // from class: org.apache.mina.examples.reverser.ReverseProtocolProvider.1
        @Override // org.apache.mina.protocol.ProtocolCodecFactory
        public ProtocolEncoder newEncoder() {
            return new TextLineEncoder();
        }

        @Override // org.apache.mina.protocol.ProtocolCodecFactory
        public ProtocolDecoder newDecoder() {
            return new TextLineDecoder();
        }
    };

    @Override // org.apache.mina.protocol.ProtocolProvider
    public ProtocolCodecFactory getCodecFactory() {
        return CODEC_FACTORY;
    }

    @Override // org.apache.mina.protocol.ProtocolProvider
    public ProtocolHandler getHandler() {
        return HANDLER;
    }
}
