package org.apache.mina.util;

import java.net.SocketException;
import org.apache.mina.common.Session;
import org.apache.mina.common.SessionConfig;
import org.apache.mina.io.datagram.DatagramSessionConfig;
import org.apache.mina.io.socket.SocketSessionConfig;
/* loaded from: classes5.dex */
public class SessionUtil {
    public static void initialize(Session session) throws SocketException {
        SessionConfig config = session.getConfig();
        if (config instanceof SocketSessionConfig) {
            SocketSessionConfig socketSessionConfig = (SocketSessionConfig) config;
            socketSessionConfig.setReuseAddress(true);
            socketSessionConfig.setKeepAlive(true);
        } else if (config instanceof DatagramSessionConfig) {
            ((DatagramSessionConfig) config).setReuseAddress(true);
        }
    }

    private SessionUtil() {
    }
}
