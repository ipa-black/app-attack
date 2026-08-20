package org.apache.mina.examples.registry;

import org.apache.mina.common.TransportType;
import org.apache.mina.examples.echoserver.EchoProtocolHandler;
import org.apache.mina.examples.reverser.ReverseProtocolProvider;
import org.apache.mina.registry.Service;
import org.apache.mina.registry.SimpleServiceRegistry;
/* loaded from: classes4.dex */
public class Main {
    public static void main(String[] strArr) throws Exception {
        SimpleServiceRegistry simpleServiceRegistry = new SimpleServiceRegistry();
        simpleServiceRegistry.bind(new Service("echo", TransportType.SOCKET, 8080), new EchoProtocolHandler());
        simpleServiceRegistry.bind(new Service("echo", TransportType.DATAGRAM, 8080), new EchoProtocolHandler());
        simpleServiceRegistry.bind(new Service("reverse", TransportType.SOCKET, 8081), new ReverseProtocolProvider());
        simpleServiceRegistry.bind(new Service("reverse", TransportType.DATAGRAM, 8081), new ReverseProtocolProvider());
        simpleServiceRegistry.bind(new Service("reverse", TransportType.VM_PIPE, 8081), new ReverseProtocolProvider());
        System.out.println(simpleServiceRegistry.getAllServices());
    }
}
