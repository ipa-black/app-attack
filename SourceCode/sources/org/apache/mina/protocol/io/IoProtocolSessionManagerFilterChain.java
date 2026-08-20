package org.apache.mina.protocol.io;

import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.ProtocolSessionManager;
import org.apache.mina.protocol.ProtocolSessionManagerFilterChain;
import org.apache.mina.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class IoProtocolSessionManagerFilterChain extends ProtocolSessionManagerFilterChain {
    /* JADX INFO: Access modifiers changed from: package-private */
    public IoProtocolSessionManagerFilterChain(ProtocolSessionManager protocolSessionManager) {
        super(protocolSessionManager);
    }

    @Override // org.apache.mina.protocol.AbstractProtocolFilterChain
    protected void doWrite(ProtocolSession protocolSession, Object obj) {
        IoProtocolSession ioProtocolSession = (IoProtocolSession) protocolSession;
        Queue queue = ioProtocolSession.writeQueue;
        synchronized (queue) {
            queue.push(obj);
        }
        ioProtocolSession.shAdapter.doWrite(ioProtocolSession.session);
    }
}
