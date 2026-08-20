package org.apache.mina.examples.httpserver;

import org.apache.mina.common.TransportType;
import org.apache.mina.examples.echoserver.ssl.BogusSSLContextFactory;
import org.apache.mina.io.filter.SSLFilter;
import org.apache.mina.registry.Service;
import org.apache.mina.registry.ServiceRegistry;
import org.apache.mina.registry.SimpleServiceRegistry;
/* loaded from: classes4.dex */
public class Main {
    private static final int PORT = 8081;
    private static final boolean USE_SSL = true;

    public static void main(String[] strArr) throws Exception {
        SimpleServiceRegistry simpleServiceRegistry = new SimpleServiceRegistry();
        addSSLSupport(simpleServiceRegistry);
        simpleServiceRegistry.bind(new Service("http", TransportType.SOCKET, (int) PORT), new HttpProtocolHandler());
        System.out.println("Listening on port 8081");
    }

    private static void addSSLSupport(ServiceRegistry serviceRegistry) throws Exception {
        System.out.println("SSL is enabled.");
        serviceRegistry.getIoAcceptor(TransportType.SOCKET).getFilterChain().addLast("sslFilter", new SSLFilter(BogusSSLContextFactory.getInstance(true)));
    }
}
