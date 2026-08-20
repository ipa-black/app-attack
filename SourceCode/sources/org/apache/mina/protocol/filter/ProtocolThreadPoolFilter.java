package org.apache.mina.protocol.filter;

import org.apache.mina.common.IdleStatus;
import org.apache.mina.common.Session;
import org.apache.mina.protocol.ProtocolFilter;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.util.BaseThreadPool;
import org.apache.mina.util.EventType;
import org.apache.mina.util.ThreadPool;
/* loaded from: classes5.dex */
public class ProtocolThreadPoolFilter extends BaseThreadPool implements ThreadPool, ProtocolFilter {
    @Override // org.apache.mina.protocol.ProtocolFilter
    public void sessionOpened(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession) {
        fireEvent(nextFilter, protocolSession, EventType.OPENED, null);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void sessionClosed(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession) {
        fireEvent(nextFilter, protocolSession, EventType.CLOSED, null);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void sessionIdle(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, IdleStatus idleStatus) {
        fireEvent(nextFilter, protocolSession, EventType.IDLE, idleStatus);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void exceptionCaught(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Throwable th) {
        fireEvent(nextFilter, protocolSession, EventType.EXCEPTION, th);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void messageReceived(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
        fireEvent(nextFilter, protocolSession, EventType.RECEIVED, obj);
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void messageSent(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
        fireEvent(nextFilter, protocolSession, EventType.SENT, obj);
    }

    @Override // org.apache.mina.util.BaseThreadPool
    protected void processEvent(Object obj, Session session, EventType eventType, Object obj2) {
        ProtocolFilter.NextFilter nextFilter = (ProtocolFilter.NextFilter) obj;
        ProtocolSession protocolSession = (ProtocolSession) session;
        if (eventType == EventType.RECEIVED) {
            nextFilter.messageReceived(protocolSession, obj2);
        } else if (eventType == EventType.SENT) {
            nextFilter.messageSent(protocolSession, obj2);
        } else if (eventType == EventType.EXCEPTION) {
            nextFilter.exceptionCaught(protocolSession, (Throwable) obj2);
        } else if (eventType == EventType.IDLE) {
            nextFilter.sessionIdle(protocolSession, (IdleStatus) obj2);
        } else if (eventType == EventType.OPENED) {
            nextFilter.sessionOpened(protocolSession);
        } else if (eventType == EventType.CLOSED) {
            nextFilter.sessionClosed(protocolSession);
        }
    }

    @Override // org.apache.mina.protocol.ProtocolFilter
    public void filterWrite(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
        nextFilter.filterWrite(protocolSession, obj);
    }
}
