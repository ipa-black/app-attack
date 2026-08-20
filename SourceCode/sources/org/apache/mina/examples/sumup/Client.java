package org.apache.mina.examples.sumup;

import java.io.IOException;
import java.net.InetSocketAddress;
import org.apache.mina.io.filter.IoThreadPoolFilter;
import org.apache.mina.io.socket.SocketConnector;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.filter.ProtocolThreadPoolFilter;
import org.apache.mina.protocol.io.IoProtocolConnector;
/* loaded from: classes4.dex */
public class Client {
    private static final int CONNECT_TIMEOUT = 30;
    private static final String HOSTNAME = "localhost";
    private static final int PORT = 8080;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [org.apache.mina.protocol.ProtocolHandlerFilter, org.apache.mina.protocol.filter.ProtocolThreadPoolFilter] */
    /* JADX WARN: Type inference failed for: r6v1, types: [org.apache.mina.io.IoHandlerFilter, org.apache.mina.io.filter.IoThreadPoolFilter] */
    public static void main(String[] strArr) throws Throwable {
        ProtocolSession connect;
        if (strArr.length == 0) {
            System.out.println("Please specify the list of any integers");
            return;
        }
        int[] iArr = new int[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            iArr[i] = Integer.parseInt(strArr[i]);
        }
        ?? ioThreadPoolFilter = new IoThreadPoolFilter();
        ?? protocolThreadPoolFilter = new ProtocolThreadPoolFilter();
        ioThreadPoolFilter.start();
        protocolThreadPoolFilter.start();
        IoProtocolConnector ioProtocolConnector = new IoProtocolConnector(new SocketConnector());
        ioProtocolConnector.getIoConnector().getFilterChain().addFirst("threadPool", ioThreadPoolFilter);
        ioProtocolConnector.getFilterChain().addFirst("threadPool", protocolThreadPoolFilter);
        ClientProtocolProvider clientProtocolProvider = new ClientProtocolProvider(iArr);
        while (true) {
            try {
                connect = ioProtocolConnector.connect(new InetSocketAddress(HOSTNAME, (int) PORT), 30, clientProtocolProvider);
                break;
            } catch (IOException e2) {
                System.err.println("Failed to connect.");
                e2.printStackTrace();
                Thread.sleep(5000L);
            }
        }
        while (connect.isConnected()) {
            Thread.sleep(100L);
        }
        ioThreadPoolFilter.stop();
        protocolThreadPoolFilter.stop();
    }
}
