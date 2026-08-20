package org.apache.mina.examples.sumup;

import java.net.InetSocketAddress;
import org.apache.mina.io.filter.IoThreadPoolFilter;
import org.apache.mina.io.socket.SocketAcceptor;
import org.apache.mina.protocol.filter.ProtocolThreadPoolFilter;
import org.apache.mina.protocol.io.IoProtocolAcceptor;
/* loaded from: classes4.dex */
public class Server {
    private static final int SERVER_PORT = 8080;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.mina.protocol.ProtocolHandlerFilter, org.apache.mina.protocol.filter.ProtocolThreadPoolFilter] */
    /* JADX WARN: Type inference failed for: r4v1, types: [org.apache.mina.io.IoHandlerFilter, org.apache.mina.io.filter.IoThreadPoolFilter] */
    public static void main(String[] strArr) throws Throwable {
        ?? ioThreadPoolFilter = new IoThreadPoolFilter();
        ?? protocolThreadPoolFilter = new ProtocolThreadPoolFilter();
        ioThreadPoolFilter.start();
        protocolThreadPoolFilter.start();
        IoProtocolAcceptor ioProtocolAcceptor = new IoProtocolAcceptor(new SocketAcceptor());
        ioProtocolAcceptor.getIoAcceptor().getFilterChain().addFirst("threadPool", ioThreadPoolFilter);
        ioProtocolAcceptor.getFilterChain().addFirst("threadPool", protocolThreadPoolFilter);
        ioProtocolAcceptor.bind(new InetSocketAddress(SERVER_PORT), new ServerProtocolProvider());
        System.out.println("Listening on port 8080");
    }
}
