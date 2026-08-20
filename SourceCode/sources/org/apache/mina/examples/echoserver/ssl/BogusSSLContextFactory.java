package org.apache.mina.examples.echoserver.ssl;

import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
/* loaded from: classes4.dex */
public class BogusSSLContextFactory {
    private static final String BOGUS_KEYSTORE = "bogus.cert";
    private static final String PROTOCOL = "TLS";
    static /* synthetic */ Class class$org$apache$mina$examples$echoserver$ssl$BogusSSLContextFactory;
    private static final char[] BOGUS_PW = {'b', 'o', 'g', 'u', 's', 'p', 'w'};
    private static SSLContext serverInstance = null;
    private static SSLContext clientInstance = null;

    public static SSLContext getInstance(boolean z) throws GeneralSecurityException {
        if (z) {
            if (serverInstance == null) {
                Class cls = class$org$apache$mina$examples$echoserver$ssl$BogusSSLContextFactory;
                if (cls == null) {
                    cls = class$("org.apache.mina.examples.echoserver.ssl.BogusSSLContextFactory");
                    class$org$apache$mina$examples$echoserver$ssl$BogusSSLContextFactory = cls;
                }
                synchronized (cls) {
                    if (serverInstance == null) {
                        try {
                            serverInstance = createBougusServerSSLContext();
                        } catch (Exception e2) {
                            throw new GeneralSecurityException(new StringBuffer("Can't create Server SSLContext:").append(e2).toString());
                        }
                    }
                }
            }
            return serverInstance;
        }
        if (clientInstance == null) {
            Class cls2 = class$org$apache$mina$examples$echoserver$ssl$BogusSSLContextFactory;
            if (cls2 == null) {
                cls2 = class$("org.apache.mina.examples.echoserver.ssl.BogusSSLContextFactory");
                class$org$apache$mina$examples$echoserver$ssl$BogusSSLContextFactory = cls2;
            }
            synchronized (cls2) {
                if (clientInstance == null) {
                    clientInstance = createBougusClientSSLContext();
                }
            }
        }
        return clientInstance;
    }

    static /* synthetic */ Class class$(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e2) {
            throw new NoClassDefFoundError().initCause(e2);
        }
    }

    private static SSLContext createBougusServerSSLContext() throws GeneralSecurityException, IOException {
        InputStream resourceAsStream;
        KeyStore keyStore = KeyStore.getInstance("JKS");
        InputStream inputStream = null;
        try {
            Class cls = class$org$apache$mina$examples$echoserver$ssl$BogusSSLContextFactory;
            if (cls == null) {
                cls = class$("org.apache.mina.examples.echoserver.ssl.BogusSSLContextFactory");
                class$org$apache$mina$examples$echoserver$ssl$BogusSSLContextFactory = cls;
            }
            resourceAsStream = cls.getResourceAsStream(BOGUS_KEYSTORE);
        } catch (Throwable th) {
            th = th;
        }
        try {
            keyStore.load(resourceAsStream, BOGUS_PW);
            if (resourceAsStream != null) {
                try {
                    resourceAsStream.close();
                } catch (IOException unused) {
                }
            }
            KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance("SunX509");
            keyManagerFactory.init(keyStore, BOGUS_PW);
            SSLContext sSLContext = SSLContext.getInstance(PROTOCOL);
            sSLContext.init(keyManagerFactory.getKeyManagers(), BogusTrustManagerFactory.X509_MANAGERS, null);
            return sSLContext;
        } catch (Throwable th2) {
            th = th2;
            inputStream = resourceAsStream;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    private static SSLContext createBougusClientSSLContext() throws GeneralSecurityException {
        SSLContext sSLContext = SSLContext.getInstance(PROTOCOL);
        sSLContext.init(null, BogusTrustManagerFactory.X509_MANAGERS, null);
        return sSLContext;
    }
}
