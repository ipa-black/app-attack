package org.apache.mina.protocol;
/* loaded from: classes5.dex */
public interface ProtocolProvider {
    ProtocolCodecFactory getCodecFactory();

    ProtocolHandler getHandler();
}
