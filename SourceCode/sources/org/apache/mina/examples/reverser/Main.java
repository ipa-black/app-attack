package org.apache.mina.examples.reverser;

import org.apache.mina.common.TransportType;
import org.apache.mina.protocol.filter.ProtocolLoggingFilter;
import org.apache.mina.registry.Service;
import org.apache.mina.registry.ServiceRegistry;
import org.apache.mina.registry.SimpleServiceRegistry;
/* loaded from: classes4.dex */
public class Main {
    private static final int PORT = 8080;

    public static void main(String[] strArr) throws Exception {
        SimpleServiceRegistry simpleServiceRegistry = new SimpleServiceRegistry();
        addLogger(simpleServiceRegistry);
        simpleServiceRegistry.bind(new Service("reverse", TransportType.SOCKET, (int) PORT), new ReverseProtocolProvider());
        System.out.println("Listening on port 8080");
    }

    private static void addLogger(ServiceRegistry serviceRegistry) {
        serviceRegistry.getProtocolAcceptor(TransportType.SOCKET).getFilterChain().addLast("logger", new ProtocolLoggingFilter());
        System.out.println("Logging ON");
    }
}
