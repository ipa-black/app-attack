package org.apache.mina.protocol;

import java.io.IOException;
import java.net.SocketAddress;
/* loaded from: classes5.dex */
public interface ProtocolAcceptor extends ProtocolSessionManager {
    void bind(SocketAddress socketAddress, ProtocolProvider protocolProvider) throws IOException;

    void unbind(SocketAddress socketAddress);
}
