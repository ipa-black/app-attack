package org.apache.kerberos.protocol;

import org.apache.kerberos.service.KdcConfiguration;
import org.apache.kerberos.store.PrincipalStore;
import org.apache.mina.protocol.ProtocolCodecFactory;
import org.apache.mina.protocol.ProtocolDecoder;
import org.apache.mina.protocol.ProtocolEncoder;
import org.apache.mina.protocol.ProtocolHandler;
import org.apache.mina.protocol.ProtocolProvider;
/* loaded from: classes5.dex */
public class KerberosProtocolProvider implements ProtocolProvider {
    private static ProtocolCodecFactory CODEC_FACTORY = new ProtocolCodecFactory() { // from class: org.apache.kerberos.protocol.KerberosProtocolProvider.1
        @Override // org.apache.mina.protocol.ProtocolCodecFactory
        public ProtocolEncoder newEncoder() {
            return new KerberosEncoder();
        }

        @Override // org.apache.mina.protocol.ProtocolCodecFactory
        public ProtocolDecoder newDecoder() {
            return new KerberosDecoder();
        }
    };
    private static ProtocolHandler HANDLER;

    public KerberosProtocolProvider(KdcConfiguration kdcConfiguration, PrincipalStore principalStore) {
        HANDLER = new KerberosProtocolHandler(kdcConfiguration, principalStore);
    }

    @Override // org.apache.mina.protocol.ProtocolProvider
    public ProtocolCodecFactory getCodecFactory() {
        return CODEC_FACTORY;
    }

    @Override // org.apache.mina.protocol.ProtocolProvider
    public ProtocolHandler getHandler() {
        return HANDLER;
    }
}
