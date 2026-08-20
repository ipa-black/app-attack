package org.apache.mina.io.filter;

import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import org.apache.mina.io.IoFilter;
import org.apache.mina.io.IoSession;
import org.apache.mina.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class SSLHandler {
    static /* synthetic */ Class class$org$apache$mina$io$filter$SSLFilter;
    private static final Logger log;
    private ByteBuffer appBuffer;
    private ByteBuffer inNetBuffer;
    private boolean initialHandshakeComplete;
    private SSLEngineResult.HandshakeStatus initialHandshakeStatus;
    private ByteBuffer outNetBuffer;
    private final SSLFilter parent;
    private final IoSession session;
    private SSLEngine sslEngine;
    private final Queue nextFilterQueue = new Queue();
    private final Queue writeBufferQueue = new Queue();
    private final Queue writeMarkerQueue = new Queue();
    private ByteBuffer hsBB = ByteBuffer.allocate(0);
    private boolean shutdown = false;
    private boolean closed = false;
    private boolean isWritingEncryptedData = false;

    static {
        Class cls = class$org$apache$mina$io$filter$SSLFilter;
        if (cls == null) {
            cls = class$("org.apache.mina.io.filter.SSLFilter");
            class$org$apache$mina$io$filter$SSLFilter = cls;
        }
        log = Logger.getLogger(cls.getName());
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SSLHandler(SSLFilter sSLFilter, SSLContext sSLContext, IoSession ioSession) throws SSLException {
        this.parent = sSLFilter;
        this.session = ioSession;
        SSLEngine createSSLEngine = sSLContext.createSSLEngine();
        this.sslEngine = createSSLEngine;
        createSSLEngine.setUseClientMode(sSLFilter.isUseClientMode());
        this.sslEngine.setNeedClientAuth(sSLFilter.isNeedClientAuth());
        this.sslEngine.setWantClientAuth(sSLFilter.isWantClientAuth());
        if (sSLFilter.getEnabledCipherSuites() != null) {
            this.sslEngine.setEnabledCipherSuites(sSLFilter.getEnabledCipherSuites());
        }
        if (sSLFilter.getEnabledProtocols() != null) {
            this.sslEngine.setEnabledProtocols(sSLFilter.getEnabledProtocols());
        }
        this.sslEngine.beginHandshake();
        this.initialHandshakeStatus = this.sslEngine.getHandshakeStatus();
        this.initialHandshakeComplete = false;
        SSLByteBufferPool.initiate(this.sslEngine);
        this.appBuffer = SSLByteBufferPool.getApplicationBuffer();
        this.inNetBuffer = SSLByteBufferPool.getPacketBuffer();
        ByteBuffer packetBuffer = SSLByteBufferPool.getPacketBuffer();
        this.outNetBuffer = packetBuffer;
        packetBuffer.position(0);
        this.outNetBuffer.limit(0);
    }

    public void setWritingEncryptedData(boolean z) {
        this.isWritingEncryptedData = z;
    }

    public boolean isWritingEncryptedData() {
        return this.isWritingEncryptedData;
    }

    public boolean isInitialHandshakeComplete() {
        return this.initialHandshakeComplete;
    }

    public boolean isClosed() {
        return this.closed;
    }

    public boolean needToCompleteInitialHandshake() {
        return this.initialHandshakeStatus == SSLEngineResult.HandshakeStatus.NEED_WRAP && !this.closed;
    }

    public synchronized void scheduleWrite(IoFilter.NextFilter nextFilter, org.apache.mina.common.ByteBuffer byteBuffer, Object obj) {
        this.nextFilterQueue.push(nextFilter);
        this.writeBufferQueue.push(byteBuffer);
        this.writeMarkerQueue.push(obj);
    }

    public synchronized void flushScheduledWrites() throws SSLException {
        while (true) {
            org.apache.mina.common.ByteBuffer byteBuffer = (org.apache.mina.common.ByteBuffer) this.writeBufferQueue.pop();
            if (byteBuffer != null) {
                Logger logger = log;
                if (logger.isLoggable(Level.FINEST)) {
                    logger.log(Level.FINEST, new StringBuffer().append(this.session).append(" Flushing buffered write request: ").append(byteBuffer).toString());
                }
                Object pop = this.writeMarkerQueue.pop();
                this.parent.filterWrite((IoFilter.NextFilter) this.nextFilterQueue.pop(), this.session, byteBuffer, pop);
            }
        }
    }

    public void dataRead(ByteBuffer byteBuffer) throws SSLException {
        if (byteBuffer.limit() > this.inNetBuffer.remaining()) {
            ByteBuffer byteBuffer2 = this.inNetBuffer;
            ByteBuffer expandBuffer = SSLByteBufferPool.expandBuffer(byteBuffer2, byteBuffer2.capacity() + (byteBuffer.limit() * 2));
            this.inNetBuffer = expandBuffer;
            ByteBuffer expandBuffer2 = SSLByteBufferPool.expandBuffer(this.appBuffer, expandBuffer.capacity() * 2);
            this.appBuffer = expandBuffer2;
            expandBuffer2.position(0);
            this.appBuffer.limit(0);
            Logger logger = log;
            if (logger.isLoggable(Level.FINEST)) {
                logger.log(Level.FINEST, new StringBuffer().append(this.session).append(" expanded inNetBuffer:").append(this.inNetBuffer).toString());
                logger.log(Level.FINEST, new StringBuffer().append(this.session).append(" expanded appBuffer:").append(this.appBuffer).toString());
            }
        }
        this.inNetBuffer.put(byteBuffer);
        if (!this.initialHandshakeComplete) {
            doHandshake();
        } else {
            doDecrypt();
        }
    }

    public void continueHandshake() throws SSLException {
        Logger logger = log;
        if (logger.isLoggable(Level.FINEST)) {
            logger.log(Level.FINEST, new StringBuffer().append(this.session).append(" continueHandshake()").toString());
        }
        doHandshake();
    }

    public ByteBuffer getAppBuffer() {
        return this.appBuffer;
    }

    public ByteBuffer getOutNetBuffer() {
        return this.outNetBuffer;
    }

    public void encrypt(ByteBuffer byteBuffer) throws SSLException {
        doEncrypt(byteBuffer);
    }

    public void shutdown() throws SSLException {
        if (this.shutdown) {
            return;
        }
        doShutdown();
    }

    public void release() {
        SSLByteBufferPool.release(this.appBuffer);
        SSLByteBufferPool.release(this.inNetBuffer);
        SSLByteBufferPool.release(this.outNetBuffer);
    }

    private void doDecrypt() throws SSLException {
        if (!this.initialHandshakeComplete) {
            throw new IllegalStateException();
        }
        if (this.appBuffer.hasRemaining()) {
            Logger logger = log;
            if (logger.isLoggable(Level.FINEST)) {
                logger.log(Level.FINEST, new StringBuffer().append(this.session).append(" Error: appBuffer not empty!").toString());
            }
            throw new IllegalStateException();
        }
        unwrap();
    }

    private SSLEngineResult.Status checkStatus(SSLEngineResult.Status status) throws SSLException {
        if (status == SSLEngineResult.Status.OK || status == SSLEngineResult.Status.CLOSED || status == SSLEngineResult.Status.BUFFER_UNDERFLOW) {
            return status;
        }
        throw new SSLException(new StringBuffer("SSLEngine error during decrypt: ").append(status).append(" inNetBuffer: ").append(this.inNetBuffer).append("appBuffer: ").append(this.appBuffer).toString());
    }

    private void doEncrypt(ByteBuffer byteBuffer) throws SSLException {
        if (!this.initialHandshakeComplete) {
            throw new IllegalStateException();
        }
        this.outNetBuffer.clear();
        while (byteBuffer.hasRemaining()) {
            if (byteBuffer.remaining() > (this.outNetBuffer.capacity() - this.outNetBuffer.position()) / 2) {
                this.outNetBuffer = SSLByteBufferPool.expandBuffer(this.outNetBuffer, byteBuffer.capacity() * 2);
                Logger logger = log;
                if (logger.isLoggable(Level.FINEST)) {
                    logger.log(Level.FINEST, new StringBuffer().append(this.session).append(" expanded outNetBuffer:").append(this.outNetBuffer).toString());
                }
            }
            SSLEngineResult wrap = this.sslEngine.wrap(byteBuffer, this.outNetBuffer);
            Logger logger2 = log;
            if (logger2.isLoggable(Level.FINEST)) {
                logger2.log(Level.FINEST, new StringBuffer().append(this.session).append(" Wrap res:").append(wrap).toString());
            }
            if (wrap.getStatus() == SSLEngineResult.Status.OK) {
                if (wrap.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.NEED_TASK) {
                    doTasks();
                }
            } else {
                throw new SSLException(new StringBuffer("SSLEngine error during encrypt: ").append(wrap.getStatus()).append(" src: ").append(byteBuffer).append("outNetBuffer: ").append(this.outNetBuffer).toString());
            }
        }
        this.outNetBuffer.flip();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void doHandshake() throws SSLException {
        Logger logger = log;
        if (logger.isLoggable(Level.FINEST)) {
            logger.log(Level.FINEST, new StringBuffer().append(this.session).append(" doHandshake()").toString());
        }
        while (!this.initialHandshakeComplete) {
            if (this.initialHandshakeStatus == SSLEngineResult.HandshakeStatus.FINISHED) {
                Logger logger2 = log;
                if (logger2.isLoggable(Level.FINEST)) {
                    SSLSession session = this.sslEngine.getSession();
                    logger2.log(Level.FINEST, new StringBuffer().append(this.session).append("  initialHandshakeStatus=FINISHED").toString());
                    logger2.log(Level.FINEST, new StringBuffer().append(this.session).append("  sslSession CipherSuite used ").append(session.getCipherSuite()).toString());
                }
                this.initialHandshakeComplete = true;
                return;
            } else if (this.initialHandshakeStatus == SSLEngineResult.HandshakeStatus.NEED_TASK) {
                Logger logger3 = log;
                if (logger3.isLoggable(Level.FINEST)) {
                    logger3.log(Level.FINEST, new StringBuffer().append(this.session).append("  initialHandshakeStatus=NEED_TASK").toString());
                }
                this.initialHandshakeStatus = doTasks();
            } else if (this.initialHandshakeStatus == SSLEngineResult.HandshakeStatus.NEED_UNWRAP) {
                Logger logger4 = log;
                if (logger4.isLoggable(Level.FINEST)) {
                    logger4.log(Level.FINEST, new StringBuffer().append(this.session).append("  initialHandshakeStatus=NEED_UNWRAP").toString());
                }
                SSLEngineResult.Status unwrapHandshake = unwrapHandshake();
                if ((this.initialHandshakeStatus != SSLEngineResult.HandshakeStatus.FINISHED && unwrapHandshake == SSLEngineResult.Status.BUFFER_UNDERFLOW) || this.closed) {
                    return;
                }
            } else if (this.initialHandshakeStatus == SSLEngineResult.HandshakeStatus.NEED_WRAP) {
                Logger logger5 = log;
                if (logger5.isLoggable(Level.FINEST)) {
                    logger5.log(Level.FINEST, new StringBuffer().append(this.session).append("  initialHandshakeStatus=NEED_WRAP").toString());
                }
                if (this.outNetBuffer.hasRemaining()) {
                    if (logger5.isLoggable(Level.FINEST)) {
                        logger5.log(Level.FINEST, new StringBuffer().append(this.session).append("  Still data in out buffer!").toString());
                    }
                    return;
                }
                this.outNetBuffer.clear();
                SSLEngineResult wrap = this.sslEngine.wrap(this.hsBB, this.outNetBuffer);
                if (logger5.isLoggable(Level.FINEST)) {
                    logger5.log(Level.FINEST, new StringBuffer().append(this.session).append(" Wrap res:").append(wrap).toString());
                }
                this.outNetBuffer.flip();
                this.initialHandshakeStatus = wrap.getHandshakeStatus();
                this.parent.writeNetBuffer(this.session, this);
            } else {
                throw new IllegalStateException(new StringBuffer().append("Invalid Handshaking State").append(this.initialHandshakeStatus).toString());
            }
        }
    }

    SSLEngineResult.Status unwrap() throws SSLException {
        SSLEngineResult unwrap;
        Logger logger = log;
        if (logger.isLoggable(Level.FINEST)) {
            logger.log(Level.FINEST, new StringBuffer().append(this.session).append(" unwrap()").toString());
        }
        this.appBuffer.clear();
        this.inNetBuffer.flip();
        do {
            Logger logger2 = log;
            if (logger2.isLoggable(Level.FINEST)) {
                logger2.log(Level.FINEST, new StringBuffer().append(this.session).append("   inNetBuffer: ").append(this.inNetBuffer).toString());
                logger2.log(Level.FINEST, new StringBuffer().append(this.session).append("   appBuffer: ").append(this.appBuffer).toString());
            }
            unwrap = this.sslEngine.unwrap(this.inNetBuffer, this.appBuffer);
            if (logger2.isLoggable(Level.FINEST)) {
                logger2.log(Level.FINEST, new StringBuffer().append(this.session).append(" Unwrap res:").append(unwrap).toString());
            }
        } while (unwrap.getStatus() == SSLEngineResult.Status.OK);
        if (unwrap.getStatus() == SSLEngineResult.Status.CLOSED) {
            this.closed = true;
        }
        this.inNetBuffer.compact();
        this.appBuffer.flip();
        return checkStatus(unwrap.getStatus());
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0178  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private javax.net.ssl.SSLEngineResult.Status unwrapHandshake() throws javax.net.ssl.SSLException {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.mina.io.filter.SSLHandler.unwrapHandshake():javax.net.ssl.SSLEngineResult$Status");
    }

    private SSLEngineResult.HandshakeStatus doTasks() {
        Logger logger = log;
        if (logger.isLoggable(Level.FINEST)) {
            logger.log(Level.FINEST, new StringBuffer().append(this.session).append("   doTasks()").toString());
        }
        while (true) {
            Runnable delegatedTask = this.sslEngine.getDelegatedTask();
            if (delegatedTask == null) {
                break;
            }
            Logger logger2 = log;
            if (logger2.isLoggable(Level.FINEST)) {
                logger2.log(Level.FINEST, new StringBuffer().append(this.session).append("    doTask: ").append(delegatedTask).toString());
            }
            delegatedTask.run();
        }
        Logger logger3 = log;
        if (logger3.isLoggable(Level.FINEST)) {
            logger3.log(Level.FINEST, new StringBuffer().append(this.session).append("   doTasks(): ").append(this.sslEngine.getHandshakeStatus()).toString());
        }
        return this.sslEngine.getHandshakeStatus();
    }

    void doShutdown() throws SSLException {
        if (!this.shutdown) {
            this.sslEngine.closeOutbound();
            this.shutdown = true;
        }
        this.outNetBuffer.clear();
        SSLEngineResult wrap = this.sslEngine.wrap(this.hsBB, this.outNetBuffer);
        if (wrap.getStatus() != SSLEngineResult.Status.CLOSED) {
            throw new SSLException(new StringBuffer("Improper close state: ").append(wrap).toString());
        }
        this.outNetBuffer.flip();
    }
}
