package org.apache.mina.io.filter;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.HashSet;
import java.util.Set;
import org.apache.mina.common.ByteBuffer;
import org.apache.mina.io.IoFilter;
import org.apache.mina.io.IoFilterAdapter;
import org.apache.mina.io.IoSession;
/* loaded from: classes4.dex */
public class BlacklistFilter extends IoFilterAdapter {
    private final Set blacklist = new HashSet();

    public synchronized void block(InetAddress inetAddress) {
        this.blacklist.add(inetAddress);
    }

    public synchronized void unblock(InetAddress inetAddress) {
        this.blacklist.remove(inetAddress);
    }

    @Override // org.apache.mina.io.IoFilterAdapter, org.apache.mina.io.IoFilter
    public void dataRead(IoFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer) throws Exception {
        if (isBlocked(ioSession)) {
            return;
        }
        super.dataRead(nextFilter, ioSession, byteBuffer);
    }

    @Override // org.apache.mina.io.IoFilterAdapter, org.apache.mina.io.IoFilter
    public void sessionOpened(IoFilter.NextFilter nextFilter, IoSession ioSession) throws Exception {
        if (isBlocked(ioSession)) {
            ioSession.close();
        } else {
            super.sessionOpened(nextFilter, ioSession);
        }
    }

    private boolean isBlocked(IoSession ioSession) {
        SocketAddress remoteAddress = ioSession.getRemoteAddress();
        return (remoteAddress instanceof InetSocketAddress) && this.blacklist.contains(((InetSocketAddress) remoteAddress).getAddress());
    }
}
