package org.apache.mina.examples.echoserver.ssl;

import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.security.GeneralSecurityException;
import javax.net.ServerSocketFactory;
/* loaded from: classes4.dex */
public class SSLServerSocketFactory extends ServerSocketFactory {
    private static ServerSocketFactory factory = null;
    private static boolean sslEnabled = false;
    private static ServerSocketFactory sslFactory;

    @Override // javax.net.ServerSocketFactory
    public ServerSocket createServerSocket(int i) throws IOException {
        return new ServerSocket(i);
    }

    @Override // javax.net.ServerSocketFactory
    public ServerSocket createServerSocket(int i, int i2) throws IOException {
        return new ServerSocket(i, i2);
    }

    @Override // javax.net.ServerSocketFactory
    public ServerSocket createServerSocket(int i, int i2, InetAddress inetAddress) throws IOException {
        return new ServerSocket(i, i2, inetAddress);
    }

    public static ServerSocketFactory getServerSocketFactory() throws IOException {
        if (isSslEnabled()) {
            if (sslFactory == null) {
                try {
                    sslFactory = BogusSSLContextFactory.getInstance(true).getServerSocketFactory();
                } catch (GeneralSecurityException e2) {
                    IOException iOException = new IOException("could not create SSL socket");
                    iOException.initCause(e2);
                    throw iOException;
                }
            }
            return sslFactory;
        }
        if (factory == null) {
            factory = new SSLServerSocketFactory();
        }
        return factory;
    }

    public static boolean isSslEnabled() {
        return sslEnabled;
    }

    public static void setSslEnabled(boolean z) {
        sslEnabled = z;
    }
}
