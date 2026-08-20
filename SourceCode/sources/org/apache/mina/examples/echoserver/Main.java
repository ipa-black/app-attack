package org.apache.mina.examples.echoserver;

import org.apache.mina.common.TransportType;
import org.apache.mina.examples.echoserver.ssl.BogusSSLContextFactory;
import org.apache.mina.io.filter.IoLoggingFilter;
import org.apache.mina.io.filter.SSLFilter;
import org.apache.mina.registry.Service;
import org.apache.mina.registry.ServiceRegistry;
import org.apache.mina.registry.SimpleServiceRegistry;
/* loaded from: classes4.dex */
public class Main {
    private static final int PORT = 8080;
    private static final boolean USE_SSL = false;

    public static void main(String[] strArr) throws Exception {
        SimpleServiceRegistry simpleServiceRegistry = new SimpleServiceRegistry();
        addLogger(simpleServiceRegistry);
        simpleServiceRegistry.bind(new Service("echo", TransportType.SOCKET, (int) PORT), new EchoProtocolHandler());
        System.out.println("Listening on port 8080");
    }

    private static void addSSLSupport(ServiceRegistry serviceRegistry) throws Exception {
        serviceRegistry.getIoAcceptor(TransportType.SOCKET).getFilterChain().addLast("sslFilter", new SSLFilter(BogusSSLContextFactory.getInstance(true)));
        System.out.println("SSL ON");
    }

    private static void addLogger(ServiceRegistry serviceRegistry) {
        serviceRegistry.getIoAcceptor(TransportType.SOCKET).getFilterChain().addLast("logger", new IoLoggingFilter());
        System.out.println("Logging ON");
    }
}
