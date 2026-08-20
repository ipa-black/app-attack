package org.apache.mina.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.apache.mina.io.datagram.DatagramSessionConfig;
import org.apache.mina.io.socket.SocketSessionConfig;
/* loaded from: classes4.dex */
public class DefaultSessionInitializer implements SessionInitializer {
    private final Map attributes = new HashMap();

    public Object getAttribute(String str) {
        return this.attributes.get(str);
    }

    public Object setAttribute(String str, Object obj) {
        return this.attributes.put(str, obj);
    }

    public Object removeAttribute(String str) {
        return this.attributes.remove(str);
    }

    public Set getAttributeKeys() {
        return this.attributes.keySet();
    }

    @Override // org.apache.mina.common.SessionInitializer
    public void initializeSession(Session session) throws IOException {
        SessionConfig config = session.getConfig();
        if (config instanceof SocketSessionConfig) {
            SocketSessionConfig socketSessionConfig = (SocketSessionConfig) config;
            socketSessionConfig.setReuseAddress(true);
            socketSessionConfig.setKeepAlive(true);
        } else if (config instanceof DatagramSessionConfig) {
            ((DatagramSessionConfig) config).setReuseAddress(true);
        }
        for (Map.Entry entry : this.attributes.entrySet()) {
            session.setAttribute((String) entry.getKey(), entry.getValue());
        }
    }
}
