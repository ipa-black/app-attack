package org.apache.mina.io.filter;

import com.appodeal.ads.modules.common.internal.Constants;
import java.lang.reflect.Method;
import java.text.DateFormat;
import java.util.Date;
import java.util.IdentityHashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import org.apache.commons.logging.LogFactory;
import org.apache.commons.logging.impl.LogFactoryImpl;
import org.apache.mina.common.ByteBuffer;
import org.apache.mina.io.IoFilter;
import org.apache.mina.io.IoFilterAdapter;
import org.apache.mina.io.IoSession;
/* loaded from: classes4.dex */
public class SSLFilter extends IoFilterAdapter {
    public static final Object SSL_MARKER;
    static /* synthetic */ Class class$org$apache$mina$io$filter$SSLFilter;
    private static final Logger log;
    private boolean client;
    private String[] enabledCipherSuites;
    private String[] enabledProtocols;
    private boolean needClientAuth;
    private SSLContext sslContext;
    private Map sslSessionHandlerMap = new IdentityHashMap();
    private boolean wantClientAuth;

    /* loaded from: classes4.dex */
    public interface Debug {
        public static final Debug ON = new DebugOn();
        public static final Debug OFF = new DebugOff();

        void print(SSLFilter sSLFilter, String str);
    }

    static {
        Class cls = class$org$apache$mina$io$filter$SSLFilter;
        if (cls == null) {
            cls = class$("org.apache.mina.io.filter.SSLFilter");
            class$org$apache$mina$io$filter$SSLFilter = cls;
        }
        log = Logger.getLogger(cls.getName());
        SSL_MARKER = new Object() { // from class: org.apache.mina.io.filter.SSLFilter.1
            public String toString() {
                return "SSL_MARKER";
            }
        };
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    public SSLFilter(SSLContext sSLContext) {
        if (sSLContext == null) {
            throw new NullPointerException("sslContext");
        }
        this.sslContext = sSLContext;
    }

    public boolean isUseClientMode() {
        return this.client;
    }

    public void setUseClientMode(boolean z) {
        this.client = z;
    }

    public boolean isNeedClientAuth() {
        return this.needClientAuth;
    }

    public void setNeedClientAuth(boolean z) {
        this.needClientAuth = z;
    }

    public boolean isWantClientAuth() {
        return this.wantClientAuth;
    }

    public void setWantClientAuth(boolean z) {
        this.wantClientAuth = z;
    }

    public String[] getEnabledCipherSuites() {
        return this.enabledCipherSuites;
    }

    public void setEnabledCipherSuites(String[] strArr) {
        this.enabledCipherSuites = strArr;
    }

    public String[] getEnabledProtocols() {
        return this.enabledProtocols;
    }

    public void setEnabledProtocols(String[] strArr) {
        this.enabledProtocols = strArr;
    }

    @Override // org.apache.mina.io.IoFilterAdapter, org.apache.mina.io.IoFilter
    public void sessionOpened(IoFilter.NextFilter nextFilter, IoSession ioSession) throws SSLException {
        createSSLSessionHandler(ioSession);
        nextFilter.sessionOpened(ioSession);
    }

    @Override // org.apache.mina.io.IoFilterAdapter, org.apache.mina.io.IoFilter
    public void sessionClosed(IoFilter.NextFilter nextFilter, IoSession ioSession) {
        SSLHandler sSLSessionHandler = getSSLSessionHandler(ioSession);
        Logger logger = log;
        if (logger.isLoggable(Level.FINEST)) {
            logger.log(Level.FINEST, new StringBuffer().append(ioSession).append(" Closed: ").append(sSLSessionHandler).toString());
        }
        if (sSLSessionHandler != null) {
            synchronized (sSLSessionHandler) {
                try {
                    sSLSessionHandler.shutdown();
                    writeNetBuffer(ioSession, sSLSessionHandler);
                    nextFilter.sessionClosed(ioSession);
                    sSLSessionHandler.release();
                } catch (SSLException e2) {
                    nextFilter.exceptionCaught(ioSession, e2);
                    nextFilter.sessionClosed(ioSession);
                    sSLSessionHandler.release();
                }
                removeSSLSessionHandler(ioSession);
            }
        }
    }

    @Override // org.apache.mina.io.IoFilterAdapter, org.apache.mina.io.IoFilter
    public void dataRead(IoFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer) {
        SSLHandler sSLSessionHandler = getSSLSessionHandler(ioSession);
        if (sSLSessionHandler != null) {
            Logger logger = log;
            if (logger.isLoggable(Level.FINEST)) {
                logger.log(Level.FINEST, new StringBuffer().append(ioSession).append(" Data Read: ").append(sSLSessionHandler).append(" (").append(byteBuffer).append(')').toString());
            }
            synchronized (sSLSessionHandler) {
                try {
                    sSLSessionHandler.dataRead(byteBuffer.buf());
                    handleSSLData(nextFilter, ioSession, sSLSessionHandler);
                    if (sSLSessionHandler.isClosed()) {
                        if (logger.isLoggable(Level.FINEST)) {
                            logger.log(Level.FINEST, new StringBuffer().append(ioSession).append(" SSL Session closed. Closing connection..").toString());
                        }
                        ioSession.close();
                    }
                } catch (SSLException e2) {
                    e = e2;
                    if (!sSLSessionHandler.isInitialHandshakeComplete()) {
                        SSLHandshakeException sSLHandshakeException = new SSLHandshakeException("Initial SSL handshake failed.");
                        sSLHandshakeException.initCause(e);
                        e = sSLHandshakeException;
                    }
                    nextFilter.exceptionCaught(ioSession, e);
                }
            }
            return;
        }
        nextFilter.dataRead(ioSession, byteBuffer);
    }

    @Override // org.apache.mina.io.IoFilterAdapter, org.apache.mina.io.IoFilter
    public void dataWritten(IoFilter.NextFilter nextFilter, IoSession ioSession, Object obj) {
        nextFilter.dataWritten(ioSession, obj);
    }

    @Override // org.apache.mina.io.IoFilterAdapter, org.apache.mina.io.IoFilter
    public void filterWrite(IoFilter.NextFilter nextFilter, IoSession ioSession, ByteBuffer byteBuffer, Object obj) throws SSLException {
        SSLHandler createSSLSessionHandler = createSSLSessionHandler(ioSession);
        Logger logger = log;
        if (logger.isLoggable(Level.FINEST)) {
            logger.log(Level.FINEST, new StringBuffer().append(ioSession).append(" Filtered Write: ").append(createSSLSessionHandler).toString());
        }
        synchronized (createSSLSessionHandler) {
            if (createSSLSessionHandler.isWritingEncryptedData()) {
                if (logger.isLoggable(Level.FINEST)) {
                    logger.log(Level.FINEST, new StringBuffer().append(ioSession).append("   already encrypted: ").append(byteBuffer).toString());
                }
                nextFilter.filterWrite(ioSession, byteBuffer, obj);
            } else if (createSSLSessionHandler.isInitialHandshakeComplete()) {
                if (logger.isLoggable(Level.FINEST)) {
                    logger.log(Level.FINEST, new StringBuffer().append(ioSession).append(" encrypt: ").append(byteBuffer).toString());
                }
                createSSLSessionHandler.encrypt(byteBuffer.buf());
                ByteBuffer copy = copy(createSSLSessionHandler.getOutNetBuffer());
                if (logger.isLoggable(Level.FINEST)) {
                    logger.log(Level.FINEST, new StringBuffer().append(ioSession).append(" encrypted buf: ").append(copy).toString());
                }
                byteBuffer.release();
                nextFilter.filterWrite(ioSession, copy, obj);
            } else {
                if (!ioSession.isConnected()) {
                    if (logger.isLoggable(Level.FINEST)) {
                        logger.log(Level.FINEST, new StringBuffer().append(ioSession).append(" Write request on closed session.").toString());
                    }
                } else {
                    if (logger.isLoggable(Level.FINEST)) {
                        logger.log(Level.FINEST, new StringBuffer().append(ioSession).append(" Handshaking is not complete yet. Buffering write request.").toString());
                    }
                    createSSLSessionHandler.scheduleWrite(nextFilter, byteBuffer, obj);
                }
            }
        }
    }

    private void handleSSLData(IoFilter.NextFilter nextFilter, IoSession ioSession, SSLHandler sSLHandler) throws SSLException {
        if (sSLHandler.isInitialHandshakeComplete()) {
            sSLHandler.flushScheduledWrites();
        }
        writeNetBuffer(ioSession, sSLHandler);
        handleAppDataRead(nextFilter, ioSession, sSLHandler);
    }

    private void handleAppDataRead(IoFilter.NextFilter nextFilter, IoSession ioSession, SSLHandler sSLHandler) {
        Logger logger = log;
        if (logger.isLoggable(Level.FINEST)) {
            logger.log(Level.FINEST, new StringBuffer().append(ioSession).append(" appBuffer: ").append(sSLHandler.getAppBuffer()).toString());
        }
        if (sSLHandler.getAppBuffer().hasRemaining()) {
            ByteBuffer copy = copy(sSLHandler.getAppBuffer());
            if (logger.isLoggable(Level.FINEST)) {
                logger.log(Level.FINEST, new StringBuffer().append(ioSession).append(" app data read: ").append(copy).append(" (").append(copy.getHexDump()).append(')').toString());
            }
            nextFilter.dataRead(ioSession, copy);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeNetBuffer(IoSession ioSession, SSLHandler sSLHandler) throws SSLException {
        if (sSLHandler.getOutNetBuffer().hasRemaining()) {
            synchronized (sSLHandler) {
                sSLHandler.setWritingEncryptedData(true);
            }
            try {
                Logger logger = log;
                if (logger.isLoggable(Level.FINEST)) {
                    logger.log(Level.FINEST, new StringBuffer().append(ioSession).append(" write outNetBuffer: ").append(sSLHandler.getOutNetBuffer()).toString());
                }
                ByteBuffer copy = copy(sSLHandler.getOutNetBuffer());
                if (logger.isLoggable(Level.FINEST)) {
                    logger.log(Level.FINEST, new StringBuffer().append(ioSession).append(" session write: ").append(copy).toString());
                }
                ioSession.write(copy, SSL_MARKER);
                while (sSLHandler.needToCompleteInitialHandshake()) {
                    try {
                        sSLHandler.continueHandshake();
                        if (sSLHandler.getOutNetBuffer().hasRemaining()) {
                            Logger logger2 = log;
                            if (logger2.isLoggable(Level.FINEST)) {
                                logger2.log(Level.FINEST, new StringBuffer().append(ioSession).append(" write outNetBuffer2: ").append(sSLHandler.getOutNetBuffer()).toString());
                            }
                            ioSession.write(copy(sSLHandler.getOutNetBuffer()), SSL_MARKER);
                        }
                    } catch (SSLException e2) {
                        SSLHandshakeException sSLHandshakeException = new SSLHandshakeException("Initial SSL handshake failed.");
                        sSLHandshakeException.initCause(e2);
                        throw sSLHandshakeException;
                    }
                }
                synchronized (sSLHandler) {
                    sSLHandler.setWritingEncryptedData(false);
                }
            } catch (Throwable th) {
                synchronized (sSLHandler) {
                    sSLHandler.setWritingEncryptedData(false);
                    throw th;
                }
            }
        }
    }

    private static ByteBuffer copy(java.nio.ByteBuffer byteBuffer) {
        ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.remaining());
        allocate.put(byteBuffer);
        allocate.flip();
        return allocate;
    }

    private SSLHandler createSSLSessionHandler(IoSession ioSession) throws SSLException {
        SSLHandler sSLHandler = (SSLHandler) this.sslSessionHandlerMap.get(ioSession);
        if (sSLHandler == null) {
            synchronized (this.sslSessionHandlerMap) {
                sSLHandler = (SSLHandler) this.sslSessionHandlerMap.get(ioSession);
                if (sSLHandler == null) {
                    sSLHandler = new SSLHandler(this, this.sslContext, ioSession);
                    this.sslSessionHandlerMap.put(ioSession, sSLHandler);
                    sSLHandler.doHandshake();
                }
            }
        }
        return sSLHandler;
    }

    private SSLHandler getSSLSessionHandler(IoSession ioSession) {
        return (SSLHandler) this.sslSessionHandlerMap.get(ioSession);
    }

    private void removeSSLSessionHandler(IoSession ioSession) {
        synchronized (this.sslSessionHandlerMap) {
            this.sslSessionHandlerMap.remove(ioSession);
        }
    }

    /* loaded from: classes4.dex */
    private static class DebugOn implements Debug {
        private static final Method debugMethod;
        private static final Object log;
        private final Date date;
        private final DateFormat df;

        private DebugOn() {
            this.df = DateFormat.getDateTimeInstance(2, 2);
            this.date = new Date();
        }

        static {
            Method method;
            Class<?> cls;
            Class cls2;
            Class<?> cls3;
            Object obj = null;
            try {
                Class<?> cls4 = Class.forName(LogFactoryImpl.LOG_PROPERTY);
                Class<?> cls5 = Class.forName(LogFactory.FACTORY_PROPERTY);
                Class<?>[] clsArr = new Class[1];
                if (SSLFilter.class$java$lang$String == null) {
                    cls = SSLFilter.class$("java.lang.String");
                    SSLFilter.class$java$lang$String = cls;
                } else {
                    cls = SSLFilter.class$java$lang$String;
                }
                clsArr[0] = cls;
                Method method2 = cls5.getMethod("getLog", clsArr);
                if (SSLFilter.class$org$apache$mina$common$DefaultExceptionMonitor == null) {
                    cls2 = SSLFilter.class$("org.apache.mina.common.DefaultExceptionMonitor");
                    SSLFilter.class$org$apache$mina$common$DefaultExceptionMonitor = cls2;
                } else {
                    cls2 = SSLFilter.class$org$apache$mina$common$DefaultExceptionMonitor;
                }
                Object invoke = method2.invoke(null, cls2.getPackage().getName());
                Class<?>[] clsArr2 = new Class[1];
                if (SSLFilter.class$java$lang$Object == null) {
                    cls3 = SSLFilter.class$("java.lang.Object");
                    SSLFilter.class$java$lang$Object = cls3;
                } else {
                    cls3 = SSLFilter.class$java$lang$Object;
                }
                clsArr2[0] = cls3;
                method = cls4.getMethod(Constants.DEBUG_INTERSTITIAL, clsArr2);
                obj = invoke;
            } catch (Exception unused) {
                method = null;
            }
            log = obj;
            debugMethod = method;
        }

        @Override // org.apache.mina.io.filter.SSLFilter.Debug
        public void print(SSLFilter sSLFilter, String str) {
            String stringBuffer;
            if (sSLFilter.isUseClientMode()) {
                stringBuffer = new StringBuffer("[CLIENT] ").append(str).toString();
            } else {
                stringBuffer = new StringBuffer("[SERVER] ").append(str).toString();
            }
            if (log == null) {
                logToStdOut(stringBuffer);
            } else {
                logToCommonsLogging(stringBuffer);
            }
        }

        private void logToCommonsLogging(String str) {
            try {
                debugMethod.invoke(log, str);
            } catch (Exception unused) {
                logToStdOut(str);
            }
        }

        private void logToStdOut(String str) {
            synchronized (System.out) {
                this.date.setTime(System.currentTimeMillis());
                System.out.print('[');
                System.out.print(this.df.format(this.date));
                System.out.print("] [");
                System.out.print(Thread.currentThread().getName());
                System.out.print("] ");
                System.out.println(str);
            }
        }
    }

    /* loaded from: classes4.dex */
    private static class DebugOff implements Debug {
        @Override // org.apache.mina.io.filter.SSLFilter.Debug
        public void print(SSLFilter sSLFilter, String str) {
        }

        private DebugOff() {
        }
    }
}
