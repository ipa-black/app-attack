package org.apache.mina.examples.echoserver.ssl;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.net.UnknownHostException;
import java.security.GeneralSecurityException;
import javax.net.SocketFactory;
/* loaded from: classes4.dex */
public class SSLSocketFactory extends SocketFactory {
    private static SocketFactory factory = null;
    private static boolean sslEnabled = false;
    private static javax.net.ssl.SSLSocketFactory sslFactory;

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i) throws IOException, UnknownHostException {
        if (isSslEnabled()) {
            return getSSLFactory().createSocket(str, i);
        }
        return new Socket(str, i);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException, UnknownHostException {
        if (isSslEnabled()) {
            return getSSLFactory().createSocket(str, i, inetAddress, i2);
        }
        return new Socket(str, i, inetAddress, i2);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        if (isSslEnabled()) {
            return getSSLFactory().createSocket(inetAddress, i);
        }
        return new Socket(inetAddress, i);
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        if (isSslEnabled()) {
            return getSSLFactory().createSocket(inetAddress, i, inetAddress2, i2);
        }
        return new Socket(inetAddress, i, inetAddress2, i2);
    }

    public static SocketFactory getSocketFactory() {
        if (factory == null) {
            factory = new SSLSocketFactory();
        }
        return factory;
    }

    private javax.net.ssl.SSLSocketFactory getSSLFactory() {
        if (sslFactory == null) {
            try {
                sslFactory = BogusSSLContextFactory.getInstance(false).getSocketFactory();
            } catch (GeneralSecurityException e2) {
                throw new RuntimeException("could not create SSL socket", e2);
            }
        }
        return sslFactory;
    }

    public static boolean isSslEnabled() {
        return sslEnabled;
    }

    public static void setSslEnabled(boolean z) {
        sslEnabled = z;
    }
}
