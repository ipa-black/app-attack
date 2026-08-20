package org.apache.mina.io.socket;

import java.net.SocketException;
import org.apache.mina.common.BaseSessionConfig;
/* loaded from: classes4.dex */
public class SocketSessionConfig extends BaseSessionConfig {
    private static final int DEFAULT_READ_BUFFER_SIZE = 1024;
    private int readBufferSize = 1024;
    private final SocketSession session;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SocketSessionConfig(SocketSession socketSession) {
        this.session = socketSession;
    }

    public boolean getKeepAlive() throws SocketException {
        return this.session.getChannel().socket().getKeepAlive();
    }

    public void setKeepAlive(boolean z) throws SocketException {
        this.session.getChannel().socket().setKeepAlive(z);
    }

    public boolean getOOBInline() throws SocketException {
        return this.session.getChannel().socket().getOOBInline();
    }

    public void setOOBInline(boolean z) throws SocketException {
        this.session.getChannel().socket().setOOBInline(z);
    }

    public boolean getReuseAddress() throws SocketException {
        return this.session.getChannel().socket().getReuseAddress();
    }

    public void setReuseAddress(boolean z) throws SocketException {
        this.session.getChannel().socket().setReuseAddress(z);
    }

    public int getSoLinger() throws SocketException {
        return this.session.getChannel().socket().getSoLinger();
    }

    public void setSoLinger(boolean z, int i) throws SocketException {
        this.session.getChannel().socket().setSoLinger(z, i);
    }

    public boolean getTcpNoDelay() throws SocketException {
        return this.session.getChannel().socket().getTcpNoDelay();
    }

    public void setTcpNoDelay(boolean z) throws SocketException {
        this.session.getChannel().socket().setTcpNoDelay(z);
    }

    public int getTrafficClass() throws SocketException {
        return this.session.getChannel().socket().getTrafficClass();
    }

    public void setTrafficClass(int i) throws SocketException {
        this.session.getChannel().socket().setTrafficClass(i);
    }

    public int getSendBufferSize() throws SocketException {
        return this.session.getChannel().socket().getSendBufferSize();
    }

    public void setSendBufferSize(int i) throws SocketException {
        this.session.getChannel().socket().setSendBufferSize(i);
    }

    public int getReceiveBufferSize() throws SocketException {
        return this.session.getChannel().socket().getReceiveBufferSize();
    }

    public void setReceiveBufferSize(int i) throws SocketException {
        this.session.getChannel().socket().setReceiveBufferSize(i);
    }

    public int getSessionReceiveBufferSize() {
        return this.readBufferSize;
    }

    public void setSessionReceiveBufferSize(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException(new StringBuffer("Invalid session receive buffer size: ").append(i).toString());
        }
        this.readBufferSize = i;
    }
}
