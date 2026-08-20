package org.apache.mina.protocol.vmpipe;

import java.net.SocketAddress;
/* loaded from: classes5.dex */
public class VmPipeAddress extends SocketAddress implements Comparable {
    private static final long serialVersionUID = 3257844376976830515L;
    private final int port;

    public VmPipeAddress(int i) {
        this.port = i;
    }

    public int getPort() {
        return this.port;
    }

    public int hashCode() {
        return this.port;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return (obj instanceof VmPipeAddress) && this.port == ((VmPipeAddress) obj).port;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return this.port - ((VmPipeAddress) obj).port;
    }

    public String toString() {
        return new StringBuffer("vm:").append(this.port).toString();
    }
}
