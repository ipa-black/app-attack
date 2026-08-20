package org.apache.mina.io;

import java.io.IOException;
import java.net.SocketAddress;
/* loaded from: classes4.dex */
public interface IoConnector extends IoSessionManager {
    IoSession connect(SocketAddress socketAddress, int i, IoHandler ioHandler) throws IOException;

    IoSession connect(SocketAddress socketAddress, SocketAddress socketAddress2, int i, IoHandler ioHandler) throws IOException;

    IoSession connect(SocketAddress socketAddress, SocketAddress socketAddress2, IoHandler ioHandler) throws IOException;

    IoSession connect(SocketAddress socketAddress, IoHandler ioHandler) throws IOException;
}
