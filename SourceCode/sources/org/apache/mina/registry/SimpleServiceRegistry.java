package org.apache.mina.registry;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.apache.mina.common.TransportType;
import org.apache.mina.io.IoAcceptor;
import org.apache.mina.io.IoHandler;
import org.apache.mina.io.datagram.DatagramAcceptor;
import org.apache.mina.io.filter.IoThreadPoolFilter;
import org.apache.mina.io.socket.SocketAcceptor;
import org.apache.mina.protocol.ProtocolAcceptor;
import org.apache.mina.protocol.ProtocolProvider;
import org.apache.mina.protocol.filter.ProtocolThreadPoolFilter;
import org.apache.mina.protocol.io.IoProtocolAcceptor;
import org.apache.mina.protocol.vmpipe.VmPipeAcceptor;
import org.apache.mina.protocol.vmpipe.VmPipeAddress;
/* loaded from: classes5.dex */
public class SimpleServiceRegistry implements ServiceRegistry {
    protected final IoAcceptor datagramIoAcceptor;
    protected final ProtocolAcceptor datagramProtocolAcceptor;
    protected final IoThreadPoolFilter ioThreadPoolFilter;
    protected final ProtocolThreadPoolFilter protocolThreadPoolFilter;
    private final Set services;
    protected final IoAcceptor socketIoAcceptor;
    protected final ProtocolAcceptor socketProtocolAcceptor;
    protected final ProtocolAcceptor vmPipeAcceptor;

    public SimpleServiceRegistry() throws IOException {
        SocketAcceptor socketAcceptor = new SocketAcceptor();
        this.socketIoAcceptor = socketAcceptor;
        DatagramAcceptor datagramAcceptor = new DatagramAcceptor();
        this.datagramIoAcceptor = datagramAcceptor;
        IoProtocolAcceptor ioProtocolAcceptor = new IoProtocolAcceptor(socketAcceptor);
        this.socketProtocolAcceptor = ioProtocolAcceptor;
        IoProtocolAcceptor ioProtocolAcceptor2 = new IoProtocolAcceptor(datagramAcceptor);
        this.datagramProtocolAcceptor = ioProtocolAcceptor2;
        VmPipeAcceptor vmPipeAcceptor = new VmPipeAcceptor();
        this.vmPipeAcceptor = vmPipeAcceptor;
        IoThreadPoolFilter ioThreadPoolFilter = new IoThreadPoolFilter();
        this.ioThreadPoolFilter = ioThreadPoolFilter;
        ProtocolThreadPoolFilter protocolThreadPoolFilter = new ProtocolThreadPoolFilter();
        this.protocolThreadPoolFilter = protocolThreadPoolFilter;
        this.services = new HashSet();
        socketAcceptor.getFilterChain().addFirst("threadPool", ioThreadPoolFilter);
        datagramAcceptor.getFilterChain().addFirst("threadPool", ioThreadPoolFilter);
        ioProtocolAcceptor.getFilterChain().addFirst("threadPool", protocolThreadPoolFilter);
        ioProtocolAcceptor2.getFilterChain().addFirst("threadPool", protocolThreadPoolFilter);
        vmPipeAcceptor.getFilterChain().addFirst("threadPool", protocolThreadPoolFilter);
    }

    @Override // org.apache.mina.registry.ServiceRegistry
    public void bind(Service service, IoHandler ioHandler) throws IOException {
        findIoAcceptor(service.getTransportType()).bind(service.getAddress(), ioHandler);
        startThreadPools();
        this.services.add(service);
    }

    @Override // org.apache.mina.registry.ServiceRegistry
    public synchronized void bind(Service service, ProtocolProvider protocolProvider) throws IOException {
        findProtocolAcceptor(service.getTransportType()).bind(service.getAddress(), protocolProvider);
        startThreadPools();
        this.services.add(service);
    }

    @Override // org.apache.mina.registry.ServiceRegistry
    public synchronized void unbind(Service service) {
        ProtocolAcceptor findProtocolAcceptor = findProtocolAcceptor(service.getTransportType());
        try {
            findProtocolAcceptor.unbind(service.getAddress());
        } catch (Exception unused) {
        }
        try {
            findProtocolAcceptor.unbind(service.getAddress());
        } catch (Exception unused2) {
        }
        this.services.remove(service);
        stopThreadPools();
    }

    @Override // org.apache.mina.registry.ServiceRegistry
    public synchronized void unbindAll() {
        Iterator it = new HashSet(this.services).iterator();
        while (it.hasNext()) {
            unbind((Service) it.next());
        }
    }

    @Override // org.apache.mina.registry.ServiceRegistry
    public IoAcceptor getIoAcceptor(TransportType transportType) {
        return findIoAcceptor(transportType);
    }

    @Override // org.apache.mina.registry.ServiceRegistry
    public ProtocolAcceptor getProtocolAcceptor(TransportType transportType) {
        return findProtocolAcceptor(transportType);
    }

    @Override // org.apache.mina.registry.ServiceRegistry
    public synchronized Set getAllServices() {
        return new HashSet(this.services);
    }

    @Override // org.apache.mina.registry.ServiceRegistry
    public synchronized Set getServices(String str) {
        HashSet hashSet;
        hashSet = new HashSet();
        for (Service service : this.services) {
            if (str.equals(service.getName())) {
                hashSet.add(service);
            }
        }
        return hashSet;
    }

    @Override // org.apache.mina.registry.ServiceRegistry
    public Set getServices(TransportType transportType) {
        HashSet hashSet = new HashSet();
        for (Service service : this.services) {
            if (service.getTransportType() == transportType) {
                hashSet.add(service);
            }
        }
        return hashSet;
    }

    @Override // org.apache.mina.registry.ServiceRegistry
    public Set getServices(int i) {
        int port;
        HashSet hashSet = new HashSet();
        for (Service service : this.services) {
            SocketAddress address = service.getAddress();
            if (address instanceof InetSocketAddress) {
                port = ((InetSocketAddress) address).getPort();
            } else {
                port = address instanceof VmPipeAddress ? ((VmPipeAddress) address).getPort() : -1;
            }
            if (port == i) {
                hashSet.add(service);
            }
        }
        return hashSet;
    }

    protected IoAcceptor findIoAcceptor(TransportType transportType) {
        if (transportType == TransportType.SOCKET) {
            return this.socketIoAcceptor;
        }
        if (transportType == TransportType.DATAGRAM) {
            return this.datagramIoAcceptor;
        }
        throw new IllegalArgumentException(new StringBuffer("Unsupported transport type: ").append(transportType).toString());
    }

    protected ProtocolAcceptor findProtocolAcceptor(TransportType transportType) {
        if (transportType == TransportType.SOCKET) {
            return this.socketProtocolAcceptor;
        }
        if (transportType == TransportType.DATAGRAM) {
            return this.datagramProtocolAcceptor;
        }
        if (transportType == TransportType.VM_PIPE) {
            return this.vmPipeAcceptor;
        }
        throw new IllegalArgumentException(new StringBuffer("Unsupported transport type: ").append(transportType).toString());
    }

    private void startThreadPools() {
        if (this.services.isEmpty()) {
            this.ioThreadPoolFilter.start();
            this.protocolThreadPoolFilter.start();
        }
    }

    private void stopThreadPools() {
        if (this.services.isEmpty()) {
            this.ioThreadPoolFilter.stop();
            this.protocolThreadPoolFilter.stop();
        }
    }
}
