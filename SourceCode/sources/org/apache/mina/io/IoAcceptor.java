package org.apache.mina.io;

import java.io.IOException;
import java.net.SocketAddress;
/* loaded from: classes4.dex */
public interface IoAcceptor extends IoSessionManager {
    void bind(SocketAddress socketAddress, IoHandler ioHandler) throws IOException;

    void unbind(SocketAddress socketAddress);
}
