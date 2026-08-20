package org.apache.mina.registry;

import java.io.Serializable;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import org.apache.mina.common.TransportType;
import org.apache.mina.protocol.vmpipe.VmPipeAddress;
/* loaded from: classes5.dex */
public class Service implements Serializable, Cloneable {
    private static final long serialVersionUID = 3258407344110383155L;
    private final SocketAddress address;
    private final String name;
    private final TransportType transportType;

    public Service(String str, TransportType transportType, int i) {
        this(str, transportType, new InetSocketAddress(i));
    }

    public Service(String str, TransportType transportType, SocketAddress socketAddress) {
        if (str == null) {
            throw new NullPointerException("name");
        }
        if (transportType == null) {
            throw new NullPointerException("transportType");
        }
        if (socketAddress == null) {
            throw new NullPointerException("address");
        }
        if (transportType == TransportType.VM_PIPE && !(socketAddress instanceof VmPipeAddress)) {
            throw new IllegalArgumentException(new StringBuffer("VM_PIPE transport type accepts only VmPipeAddress: ").append(socketAddress.getClass()).toString());
        }
        this.name = str;
        this.transportType = transportType;
        this.address = socketAddress;
    }

    public String getName() {
        return this.name;
    }

    public TransportType getTransportType() {
        return this.transportType;
    }

    public SocketAddress getAddress() {
        return this.address;
    }

    public int hashCode() {
        return ((this.name.hashCode() * 37) ^ (this.transportType.hashCode() * 37)) ^ this.address.hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Service) {
            Service service = (Service) obj;
            return this.name.equals(service.name) && this.transportType == service.transportType && this.address.equals(service.address);
        }
        return false;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    public String toString() {
        return new StringBuffer("(").append(this.transportType).append(", ").append(this.name).append(", ").append(this.address).append(')').toString();
    }
}
