package org.apache.mina.protocol.vmpipe;

import java.net.SocketAddress;
/* loaded from: classes5.dex */
class AnonymousVmPipeAddress extends SocketAddress implements Comparable {
    static final AnonymousVmPipeAddress INSTANCE = new AnonymousVmPipeAddress();
    private static final long serialVersionUID = 3258135768999475512L;

    public int hashCode() {
        return 1432482932;
    }

    private AnonymousVmPipeAddress() {
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        return obj instanceof AnonymousVmPipeAddress;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object obj) {
        return hashCode() - ((AnonymousVmPipeAddress) obj).hashCode();
    }

    public String toString() {
        return "vm:anonymous";
    }
}
