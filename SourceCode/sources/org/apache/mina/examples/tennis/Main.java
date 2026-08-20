package org.apache.mina.examples.tennis;

import org.apache.mina.common.TransportType;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.vmpipe.VmPipeAddress;
import org.apache.mina.protocol.vmpipe.VmPipeConnector;
import org.apache.mina.registry.Service;
import org.apache.mina.registry.SimpleServiceRegistry;
/* loaded from: classes4.dex */
public class Main {
    public static void main(String[] strArr) throws Exception {
        SimpleServiceRegistry simpleServiceRegistry = new SimpleServiceRegistry();
        VmPipeAddress vmPipeAddress = new VmPipeAddress(8080);
        Service service = new Service("tennis", TransportType.VM_PIPE, vmPipeAddress);
        simpleServiceRegistry.bind(service, new TennisPlayer());
        ProtocolSession connect = new VmPipeConnector().connect(vmPipeAddress, new TennisPlayer());
        connect.write(new TennisBall(10));
        while (connect.isConnected()) {
            Thread.sleep(100L);
        }
        simpleServiceRegistry.unbind(service);
    }
}
