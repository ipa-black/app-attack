package org.apache.mina.common;

import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
/* loaded from: classes4.dex */
public final class TransportType implements Serializable {
    private static final long serialVersionUID = 3258132470497883447L;
    private final String[] names;
    private final transient boolean stateless;
    private static final Map name2type = new HashMap();
    public static final TransportType SOCKET = new TransportType(new String[]{"SOCKET", "TCP"}, false);
    public static final TransportType DATAGRAM = new TransportType(new String[]{"DATAGRAM", "UDP"}, true);
    public static final TransportType VM_PIPE = new TransportType(new String[]{"VM_PIPE"}, false);

    private static void register(String[] strArr, TransportType transportType) {
        synchronized (name2type) {
            for (int length = strArr.length - 1; length >= 0; length--) {
                if (name2type.containsKey(strArr[length])) {
                    throw new IllegalArgumentException(new StringBuffer().append("Transport type name '").append(strArr[length]).append("' is already taken.").toString());
                }
            }
            for (int length2 = strArr.length - 1; length2 >= 0; length2--) {
                name2type.put(strArr[length2].toUpperCase(), transportType);
            }
        }
    }

    public static TransportType getInstance(String str) {
        TransportType transportType = (TransportType) name2type.get(str.toUpperCase());
        if (transportType != null) {
            return transportType;
        }
        throw new IllegalArgumentException(new StringBuffer("Unknown transport type name: ").append(str).toString());
    }

    public TransportType(String[] strArr, boolean z) {
        if (strArr == null) {
            throw new NullPointerException("names");
        }
        if (strArr.length == 0) {
            throw new IllegalArgumentException("names is empty");
        }
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            if (str == null) {
                throw new NullPointerException(new StringBuffer("strVals[").append(i).append("]").toString());
            }
            strArr[i] = str.toUpperCase();
        }
        register(strArr, this);
        this.names = strArr;
        this.stateless = z;
    }

    public boolean isStateless() {
        return this.stateless;
    }

    public Set getNames() {
        TreeSet treeSet = new TreeSet();
        for (int length = this.names.length - 1; length >= 0; length--) {
            treeSet.add(this.names[length]);
        }
        return treeSet;
    }

    public String toString() {
        return this.names[0];
    }

    private Object readResolve() throws ObjectStreamException {
        for (int length = this.names.length - 1; length >= 0; length--) {
            try {
                return getInstance(this.names[length]);
            } catch (IllegalArgumentException unused) {
            }
        }
        throw new InvalidObjectException("Unknown transport type.");
    }
}
