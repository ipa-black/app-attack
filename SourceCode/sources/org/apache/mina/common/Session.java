package org.apache.mina.common;

import java.net.SocketAddress;
import java.util.Set;
/* loaded from: classes4.dex */
public interface Session {
    void close();

    void close(boolean z);

    Object getAttachment();

    Object getAttribute(String str);

    Set getAttributeKeys();

    SessionConfig getConfig();

    long getLastIoTime();

    long getLastReadTime();

    long getLastWriteTime();

    SocketAddress getLocalAddress();

    long getReadBytes();

    SocketAddress getRemoteAddress();

    TransportType getTransportType();

    long getWrittenBytes();

    boolean isConnected();

    boolean isIdle(IdleStatus idleStatus);

    Object removeAttribute(String str);

    Object setAttachment(Object obj);

    Object setAttribute(String str, Object obj);
}
