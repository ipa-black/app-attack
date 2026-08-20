package org.apache.mina.protocol.io;

import org.apache.mina.common.ByteBuffer;
import org.apache.mina.common.IdleStatus;
import org.apache.mina.io.IoHandler;
import org.apache.mina.io.IoSession;
import org.apache.mina.protocol.ProtocolCodecFactory;
import org.apache.mina.protocol.ProtocolDecoder;
import org.apache.mina.protocol.ProtocolEncoder;
import org.apache.mina.protocol.ProtocolFilterChain;
import org.apache.mina.protocol.ProtocolHandler;
import org.apache.mina.protocol.ProtocolProvider;
import org.apache.mina.protocol.ProtocolSession;
import org.apache.mina.protocol.ProtocolViolationException;
import org.apache.mina.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class IoAdapter {
    private static final String KEY = "IoAdapter.ProtocolSession";
    private final IoProtocolSessionManagerFilterChain managerFilterChain;

    /* JADX INFO: Access modifiers changed from: package-private */
    public IoAdapter(IoProtocolSessionManagerFilterChain ioProtocolSessionManagerFilterChain) {
        this.managerFilterChain = ioProtocolSessionManagerFilterChain;
    }

    public ProtocolFilterChain getFilterChain() {
        return this.managerFilterChain;
    }

    public IoHandler adapt(ProtocolProvider protocolProvider) {
        return new SessionHandlerAdapter(protocolProvider);
    }

    public ProtocolSession toProtocolSession(IoSession ioSession) {
        IoHandler handler = ioSession.getHandler();
        if (!(handler instanceof SessionHandlerAdapter)) {
            throw new IllegalArgumentException("Not adapted from IoAdapter.");
        }
        return ((SessionHandlerAdapter) handler).getProtocolSession(ioSession);
    }

    /* loaded from: classes5.dex */
    class SessionHandlerAdapter implements IoHandler {
        final ProtocolCodecFactory codecFactory;
        final ProtocolHandler handler;

        @Override // org.apache.mina.io.IoHandler
        public void sessionCreated(IoSession ioSession) {
        }

        public SessionHandlerAdapter(ProtocolProvider protocolProvider) {
            this.codecFactory = protocolProvider.getCodecFactory();
            this.handler = protocolProvider.getHandler();
        }

        @Override // org.apache.mina.io.IoHandler
        public void sessionOpened(IoSession ioSession) {
            IoAdapter.this.managerFilterChain.sessionOpened(getProtocolSession(ioSession));
        }

        @Override // org.apache.mina.io.IoHandler
        public void sessionClosed(IoSession ioSession) {
            IoAdapter.this.managerFilterChain.sessionClosed(getProtocolSession(ioSession));
        }

        @Override // org.apache.mina.io.IoHandler
        public void sessionIdle(IoSession ioSession, IdleStatus idleStatus) {
            IoAdapter.this.managerFilterChain.sessionIdle(getProtocolSession(ioSession), idleStatus);
        }

        @Override // org.apache.mina.io.IoHandler
        public void exceptionCaught(IoSession ioSession, Throwable th) {
            IoAdapter.this.managerFilterChain.exceptionCaught(getProtocolSession(ioSession), th);
        }

        @Override // org.apache.mina.io.IoHandler
        public void dataRead(IoSession ioSession, ByteBuffer byteBuffer) {
            IoProtocolSession protocolSession = getProtocolSession(ioSession);
            ProtocolDecoder protocolDecoder = protocolSession.decoder;
            try {
                synchronized (protocolDecoder) {
                    protocolDecoder.decode(protocolSession, byteBuffer, protocolSession.decOut);
                }
                Queue messageQueue = protocolSession.decOut.getMessageQueue();
                synchronized (messageQueue) {
                    if (!messageQueue.isEmpty()) {
                        do {
                            IoAdapter.this.managerFilterChain.messageReceived(protocolSession, messageQueue.pop());
                        } while (!messageQueue.isEmpty());
                    }
                }
            } catch (ProtocolViolationException e2) {
                e2.setBuffer(byteBuffer);
                IoAdapter.this.managerFilterChain.exceptionCaught(protocolSession, e2);
            } catch (Throwable th) {
                IoAdapter.this.managerFilterChain.exceptionCaught(protocolSession, th);
            }
        }

        @Override // org.apache.mina.io.IoHandler
        public void dataWritten(IoSession ioSession, Object obj) {
            if (obj == null) {
                return;
            }
            IoAdapter.this.managerFilterChain.messageSent(getProtocolSession(ioSession), obj);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void doWrite(IoSession ioSession) {
            IoProtocolSession protocolSession = getProtocolSession(ioSession);
            ProtocolEncoder protocolEncoder = protocolSession.encoder;
            Queue queue = protocolSession.writeQueue;
            if (queue.isEmpty()) {
                return;
            }
            while (!queue.isEmpty()) {
                try {
                    synchronized (queue) {
                        Object pop = queue.pop();
                        if (pop == null) {
                            return;
                        }
                        Queue bufferQueue = protocolSession.encOut.getBufferQueue();
                        protocolEncoder.encode(protocolSession, pop, protocolSession.encOut);
                        while (true) {
                            ByteBuffer byteBuffer = (ByteBuffer) bufferQueue.pop();
                            if (byteBuffer == null) {
                                break;
                            }
                            ioSession.write(byteBuffer, bufferQueue.isEmpty() ? pop : null);
                        }
                    }
                } catch (Throwable th) {
                    IoAdapter.this.managerFilterChain.exceptionCaught(protocolSession, th);
                    return;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public IoProtocolSession getProtocolSession(IoSession ioSession) {
            IoProtocolSession ioProtocolSession = (IoProtocolSession) ioSession.getAttribute(IoAdapter.KEY);
            if (ioProtocolSession == null) {
                synchronized (ioSession) {
                    ioProtocolSession = (IoProtocolSession) ioSession.getAttribute(IoAdapter.KEY);
                    if (ioProtocolSession == null) {
                        ioProtocolSession = new IoProtocolSession(IoAdapter.this.managerFilterChain, ioSession, this);
                        ioSession.setAttribute(IoAdapter.KEY, ioProtocolSession);
                    }
                }
            }
            return ioProtocolSession;
        }
    }
}
