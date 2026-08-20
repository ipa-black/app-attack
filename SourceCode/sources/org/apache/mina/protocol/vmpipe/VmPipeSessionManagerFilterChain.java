package org.apache.mina.protocol.vmpipe;

import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.ProtocolSessionManager;
import org.apache.mina.protocol.ProtocolSessionManagerFilterChain;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class VmPipeSessionManagerFilterChain extends ProtocolSessionManagerFilterChain {
    /* JADX INFO: Access modifiers changed from: package-private */
    public VmPipeSessionManagerFilterChain(ProtocolSessionManager protocolSessionManager) {
        super(protocolSessionManager);
    }

    @Override // org.apache.mina.protocol.AbstractProtocolFilterChain
    protected void doWrite(ProtocolSession protocolSession, Object obj) {
        VmPipeSession vmPipeSession = (VmPipeSession) protocolSession;
        synchronized (vmPipeSession.lock) {
            if (vmPipeSession.closed) {
                throw new IllegalStateException("Session is closed.");
            }
            vmPipeSession.remoteSession.getManagerFilterChain().messageReceived(vmPipeSession.remoteSession, obj);
        }
    }
}
