package org.apache.mina.protocol.vmpipe;

import org.apache.mina.common.IdleStatus;
import org.apache.mina.protocol.ProtocolFilter;
import org.apache.mina.protocol.ProtocolFilterAdapter;
import org.apache.mina.protocol.ProtocolSession;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class VmPipeFilter extends ProtocolFilterAdapter {
    @Override // org.apache.mina.protocol.ProtocolFilterAdapter, org.apache.mina.protocol.ProtocolFilter
    public void messageReceived(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
        VmPipeSession vmPipeSession = (VmPipeSession) protocolSession;
        vmPipeSession.setIdle(IdleStatus.BOTH_IDLE, false);
        vmPipeSession.setIdle(IdleStatus.READER_IDLE, false);
        vmPipeSession.increaseReadBytes(1);
        vmPipeSession.remoteSession.getManagerFilterChain().messageSent(vmPipeSession.remoteSession, obj);
        nextFilter.messageReceived(protocolSession, obj);
    }

    @Override // org.apache.mina.protocol.ProtocolFilterAdapter, org.apache.mina.protocol.ProtocolFilter
    public void messageSent(ProtocolFilter.NextFilter nextFilter, ProtocolSession protocolSession, Object obj) {
        VmPipeSession vmPipeSession = (VmPipeSession) protocolSession;
        vmPipeSession.setIdle(IdleStatus.BOTH_IDLE, false);
        vmPipeSession.setIdle(IdleStatus.WRITER_IDLE, false);
        vmPipeSession.increaseWrittenBytes(1);
        nextFilter.messageSent(protocolSession, obj);
    }
}
