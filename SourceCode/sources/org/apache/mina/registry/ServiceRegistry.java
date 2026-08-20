package org.apache.mina.registry;

import java.io.IOException;
import java.util.Set;
import org.apache.mina.common.TransportType;
import org.apache.mina.io.IoAcceptor;
import org.apache.mina.io.IoHandler;
import org.apache.mina.protocol.ProtocolAcceptor;
import org.apache.mina.protocol.ProtocolProvider;
/* loaded from: classes5.dex */
public interface ServiceRegistry {
    void bind(Service service, IoHandler ioHandler) throws IOException;

    void bind(Service service, ProtocolProvider protocolProvider) throws IOException;

    Set getAllServices();

    IoAcceptor getIoAcceptor(TransportType transportType);

    ProtocolAcceptor getProtocolAcceptor(TransportType transportType);

    Set getServices(int i);

    Set getServices(String str);

    Set getServices(TransportType transportType);

    void unbind(Service service);

    void unbindAll();
}
