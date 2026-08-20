package org.apache.mina.io.datagram;

import java.net.SocketException;
import java.nio.channels.DatagramChannel;
import org.apache.mina.common.BaseSessionConfig;
/* loaded from: classes4.dex */
public class DatagramSessionConfig extends BaseSessionConfig {
    private final DatagramChannel ch;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DatagramSessionConfig(DatagramChannel datagramChannel) {
        this.ch = datagramChannel;
    }

    public boolean getReuseAddress() throws SocketException {
        return this.ch.socket().getReuseAddress();
    }

    public void setReuseAddress(boolean z) throws SocketException {
        this.ch.socket().setReuseAddress(z);
    }

    public int getTrafficClass() throws SocketException {
        return this.ch.socket().getTrafficClass();
    }

    public void setTrafficClass(int i) throws SocketException {
        this.ch.socket().setTrafficClass(i);
    }
}
