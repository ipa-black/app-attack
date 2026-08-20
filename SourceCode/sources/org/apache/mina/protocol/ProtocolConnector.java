package org.apache.mina.protocol;

import java.io.IOException;
import java.net.SocketAddress;
/* loaded from: classes5.dex */
public interface ProtocolConnector extends ProtocolSessionManager {
    ProtocolSession connect(SocketAddress socketAddress, int i, ProtocolProvider protocolProvider) throws IOException;

    ProtocolSession connect(SocketAddress socketAddress, SocketAddress socketAddress2, int i, ProtocolProvider protocolProvider) throws IOException;

    ProtocolSession connect(SocketAddress socketAddress, SocketAddress socketAddress2, ProtocolProvider protocolProvider) throws IOException;

    ProtocolSession connect(SocketAddress socketAddress, ProtocolProvider protocolProvider) throws IOException;
}
