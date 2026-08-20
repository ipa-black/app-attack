package org.apache.mina.protocol.io;

import java.net.SocketAddress;
import java.util.Set;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.common.SessionConfig;
import org.apache.mina.common.TransportType;
import org.apache.mina.io.IoSession;
import org.apache.mina.protocol.ProtocolDecoder;
import org.apache.mina.protocol.ProtocolEncoder;
import org.apache.mina.protocol.ProtocolFilterChain;
import org.apache.mina.protocol.ProtocolHandler;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.ProtocolSessionFilterChain;
import org.apache.mina.protocol.ProtocolSessionManagerFilterChain;
import org.apache.mina.protocol.SimpleProtocolDecoderOutput;
import org.apache.mina.protocol.SimpleProtocolEncoderOutput;
import org.apache.mina.protocol.io.IoAdapter;
import org.apache.mina.util.Queue;
/* loaded from: classes5.dex */
public class IoProtocolSession implements ProtocolSession {
    final ProtocolDecoder decoder;
    final ProtocolEncoder encoder;
    private final ProtocolSessionFilterChain filterChain;
    final IoSession session;
    final IoAdapter.SessionHandlerAdapter shAdapter;
    final Queue writeQueue = new Queue();
    final SimpleProtocolEncoderOutput encOut = new SimpleProtocolEncoderOutput();
    final SimpleProtocolDecoderOutput decOut = new SimpleProtocolDecoderOutput();

    /* JADX INFO: Access modifiers changed from: package-private */
    public IoProtocolSession(ProtocolSessionManagerFilterChain protocolSessionManagerFilterChain, IoSession ioSession, IoAdapter.SessionHandlerAdapter sessionHandlerAdapter) {
        this.filterChain = new ProtocolSessionFilterChain(protocolSessionManagerFilterChain);
        this.session = ioSession;
        this.shAdapter = sessionHandlerAdapter;
        this.encoder = sessionHandlerAdapter.codecFactory.newEncoder();
        this.decoder = sessionHandlerAdapter.codecFactory.newDecoder();
    }

    public IoSession getIoSession() {
        return this.session;
    }

    @Override // org.apache.mina.protocol.ProtocolSession
    public ProtocolFilterChain getFilterChain() {
        return this.filterChain;
    }

    @Override // org.apache.mina.protocol.ProtocolSession
    public ProtocolHandler getHandler() {
        return this.shAdapter.handler;
    }

    @Override // org.apache.mina.protocol.ProtocolSession
    public ProtocolEncoder getEncoder() {
        return this.encoder;
    }

    @Override // org.apache.mina.protocol.ProtocolSession
    public ProtocolDecoder getDecoder() {
        return this.decoder;
    }

    @Override // org.apache.mina.common.Session
    public void close() {
        this.session.close();
    }

    @Override // org.apache.mina.common.Session
    public void close(boolean z) {
        this.session.close(z);
    }

    @Override // org.apache.mina.common.Session
    public Object getAttachment() {
        return this.session.getAttachment();
    }

    @Override // org.apache.mina.common.Session
    public Object setAttachment(Object obj) {
        return this.session.setAttachment(obj);
    }

    @Override // org.apache.mina.common.Session
    public Object getAttribute(String str) {
        return this.session.getAttribute(str);
    }

    @Override // org.apache.mina.common.Session
    public Object setAttribute(String str, Object obj) {
        return this.session.setAttribute(str, obj);
    }

    @Override // org.apache.mina.common.Session
    public Object removeAttribute(String str) {
        return this.session.removeAttribute(str);
    }

    @Override // org.apache.mina.common.Session
    public Set getAttributeKeys() {
        return this.session.getAttributeKeys();
    }

    @Override // org.apache.mina.protocol.ProtocolSession
    public void write(Object obj) {
        this.filterChain.filterWrite(this, obj);
    }

    @Override // org.apache.mina.common.Session
    public TransportType getTransportType() {
        return this.session.getTransportType();
    }

    @Override // org.apache.mina.common.Session
    public boolean isConnected() {
        return this.session.isConnected();
    }

    @Override // org.apache.mina.common.Session
    public SessionConfig getConfig() {
        return this.session.getConfig();
    }

    @Override // org.apache.mina.common.Session
    public SocketAddress getRemoteAddress() {
        return this.session.getRemoteAddress();
    }

    @Override // org.apache.mina.common.Session
    public SocketAddress getLocalAddress() {
        return this.session.getLocalAddress();
    }

    @Override // org.apache.mina.common.Session
    public long getReadBytes() {
        return this.session.getReadBytes();
    }

    @Override // org.apache.mina.common.Session
    public long getWrittenBytes() {
        return this.session.getWrittenBytes();
    }

    @Override // org.apache.mina.common.Session
    public long getLastIoTime() {
        return this.session.getLastIoTime();
    }

    @Override // org.apache.mina.common.Session
    public long getLastReadTime() {
        return this.session.getLastReadTime();
    }

    @Override // org.apache.mina.common.Session
    public long getLastWriteTime() {
        return this.session.getLastWriteTime();
    }

    @Override // org.apache.mina.common.Session
    public boolean isIdle(IdleStatus idleStatus) {
        return this.session.isIdle(idleStatus);
    }
}
