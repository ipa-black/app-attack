package com.appodeal.ads.utils;

import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Arrays;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes2.dex */
public final class t extends SSLSocketFactory {

    /* renamed from: a  reason: collision with root package name */
    public final SSLSocketFactory f7826a;

    /* loaded from: classes2.dex */
    public static class a extends SSLSocket {

        /* renamed from: a  reason: collision with root package name */
        public final SSLSocket f7827a;

        public a(SSLSocket sSLSocket) {
            this.f7827a = sSLSocket;
        }

        @Override // javax.net.ssl.SSLSocket
        public final void addHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
            this.f7827a.addHandshakeCompletedListener(handshakeCompletedListener);
        }

        @Override // java.net.Socket
        public final void bind(SocketAddress socketAddress) {
            this.f7827a.bind(socketAddress);
        }

        @Override // java.net.Socket, java.io.Closeable, java.lang.AutoCloseable
        public final synchronized void close() {
            this.f7827a.close();
        }

        @Override // java.net.Socket
        public final void connect(SocketAddress socketAddress) {
            this.f7827a.connect(socketAddress);
        }

        @Override // java.net.Socket
        public final void connect(SocketAddress socketAddress, int i) {
            this.f7827a.connect(socketAddress, i);
        }

        public final boolean equals(Object obj) {
            return this.f7827a.equals(obj);
        }

        @Override // java.net.Socket
        public final SocketChannel getChannel() {
            return this.f7827a.getChannel();
        }

        @Override // javax.net.ssl.SSLSocket
        public final boolean getEnableSessionCreation() {
            return this.f7827a.getEnableSessionCreation();
        }

        @Override // javax.net.ssl.SSLSocket
        public final String[] getEnabledCipherSuites() {
            return this.f7827a.getEnabledCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocket
        public final String[] getEnabledProtocols() {
            return this.f7827a.getEnabledProtocols();
        }

        @Override // java.net.Socket
        public final InetAddress getInetAddress() {
            return this.f7827a.getInetAddress();
        }

        @Override // java.net.Socket
        public final InputStream getInputStream() {
            return this.f7827a.getInputStream();
        }

        @Override // java.net.Socket
        public final boolean getKeepAlive() {
            return this.f7827a.getKeepAlive();
        }

        @Override // java.net.Socket
        public final InetAddress getLocalAddress() {
            return this.f7827a.getLocalAddress();
        }

        @Override // java.net.Socket
        public final int getLocalPort() {
            return this.f7827a.getLocalPort();
        }

        @Override // java.net.Socket
        public final SocketAddress getLocalSocketAddress() {
            return this.f7827a.getLocalSocketAddress();
        }

        @Override // javax.net.ssl.SSLSocket
        public final boolean getNeedClientAuth() {
            return this.f7827a.getNeedClientAuth();
        }

        @Override // java.net.Socket
        public final boolean getOOBInline() {
            return this.f7827a.getOOBInline();
        }

        @Override // java.net.Socket
        public final OutputStream getOutputStream() {
            return this.f7827a.getOutputStream();
        }

        @Override // java.net.Socket
        public final int getPort() {
            return this.f7827a.getPort();
        }

        @Override // java.net.Socket
        public final synchronized int getReceiveBufferSize() {
            return this.f7827a.getReceiveBufferSize();
        }

        @Override // java.net.Socket
        public final SocketAddress getRemoteSocketAddress() {
            return this.f7827a.getRemoteSocketAddress();
        }

        @Override // java.net.Socket
        public final boolean getReuseAddress() {
            return this.f7827a.getReuseAddress();
        }

        @Override // java.net.Socket
        public final synchronized int getSendBufferSize() {
            return this.f7827a.getSendBufferSize();
        }

        @Override // javax.net.ssl.SSLSocket
        public final SSLSession getSession() {
            return this.f7827a.getSession();
        }

        @Override // java.net.Socket
        public final int getSoLinger() {
            return this.f7827a.getSoLinger();
        }

        @Override // java.net.Socket
        public final synchronized int getSoTimeout() {
            return this.f7827a.getSoTimeout();
        }

        @Override // javax.net.ssl.SSLSocket
        public final String[] getSupportedCipherSuites() {
            return this.f7827a.getSupportedCipherSuites();
        }

        @Override // javax.net.ssl.SSLSocket
        public final String[] getSupportedProtocols() {
            return this.f7827a.getSupportedProtocols();
        }

        @Override // java.net.Socket
        public final boolean getTcpNoDelay() {
            return this.f7827a.getTcpNoDelay();
        }

        @Override // java.net.Socket
        public final int getTrafficClass() {
            return this.f7827a.getTrafficClass();
        }

        @Override // javax.net.ssl.SSLSocket
        public final boolean getUseClientMode() {
            return this.f7827a.getUseClientMode();
        }

        @Override // javax.net.ssl.SSLSocket
        public final boolean getWantClientAuth() {
            return this.f7827a.getWantClientAuth();
        }

        @Override // java.net.Socket
        public final boolean isBound() {
            return this.f7827a.isBound();
        }

        @Override // java.net.Socket
        public final boolean isClosed() {
            return this.f7827a.isClosed();
        }

        @Override // java.net.Socket
        public final boolean isConnected() {
            return this.f7827a.isConnected();
        }

        @Override // java.net.Socket
        public final boolean isInputShutdown() {
            return this.f7827a.isInputShutdown();
        }

        @Override // java.net.Socket
        public final boolean isOutputShutdown() {
            return this.f7827a.isOutputShutdown();
        }

        @Override // javax.net.ssl.SSLSocket
        public final void removeHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
            this.f7827a.removeHandshakeCompletedListener(handshakeCompletedListener);
        }

        @Override // java.net.Socket
        public final void sendUrgentData(int i) {
            this.f7827a.sendUrgentData(i);
        }

        @Override // javax.net.ssl.SSLSocket
        public final void setEnableSessionCreation(boolean z) {
            this.f7827a.setEnableSessionCreation(z);
        }

        @Override // javax.net.ssl.SSLSocket
        public final void setEnabledCipherSuites(String[] strArr) {
            this.f7827a.setEnabledCipherSuites(strArr);
        }

        @Override // java.net.Socket
        public final void setKeepAlive(boolean z) {
            this.f7827a.setKeepAlive(z);
        }

        @Override // javax.net.ssl.SSLSocket
        public final void setNeedClientAuth(boolean z) {
            this.f7827a.setNeedClientAuth(z);
        }

        @Override // java.net.Socket
        public final void setOOBInline(boolean z) {
            this.f7827a.setOOBInline(z);
        }

        @Override // java.net.Socket
        public final void setPerformancePreferences(int i, int i2, int i3) {
            this.f7827a.setPerformancePreferences(i, i2, i3);
        }

        @Override // java.net.Socket
        public final synchronized void setReceiveBufferSize(int i) {
            this.f7827a.setReceiveBufferSize(i);
        }

        @Override // java.net.Socket
        public final void setReuseAddress(boolean z) {
            this.f7827a.setReuseAddress(z);
        }

        @Override // java.net.Socket
        public final synchronized void setSendBufferSize(int i) {
            this.f7827a.setSendBufferSize(i);
        }

        @Override // java.net.Socket
        public final void setSoLinger(boolean z, int i) {
            this.f7827a.setSoLinger(z, i);
        }

        @Override // java.net.Socket
        public final synchronized void setSoTimeout(int i) {
            this.f7827a.setSoTimeout(i);
        }

        @Override // java.net.Socket
        public final void setTcpNoDelay(boolean z) {
            this.f7827a.setTcpNoDelay(z);
        }

        @Override // java.net.Socket
        public final void setTrafficClass(int i) {
            this.f7827a.setTrafficClass(i);
        }

        @Override // javax.net.ssl.SSLSocket
        public final void setUseClientMode(boolean z) {
            this.f7827a.setUseClientMode(z);
        }

        @Override // javax.net.ssl.SSLSocket
        public final void setWantClientAuth(boolean z) {
            this.f7827a.setWantClientAuth(z);
        }

        @Override // java.net.Socket
        public final void shutdownInput() {
            this.f7827a.shutdownInput();
        }

        @Override // java.net.Socket
        public final void shutdownOutput() {
            this.f7827a.shutdownOutput();
        }

        @Override // javax.net.ssl.SSLSocket
        public final void startHandshake() {
            this.f7827a.startHandshake();
        }

        @Override // javax.net.ssl.SSLSocket, java.net.Socket
        public final String toString() {
            return this.f7827a.toString();
        }
    }

    /* loaded from: classes2.dex */
    public static class b extends a {
        public b(SSLSocket sSLSocket) {
            super(sSLSocket);
        }

        @Override // javax.net.ssl.SSLSocket
        public final void setEnabledProtocols(String[] strArr) {
            PrintStream printStream;
            String str;
            if (strArr != null && strArr.length == 1 && "SSLv3".equals(strArr[0])) {
                ArrayList arrayList = new ArrayList(Arrays.asList(this.f7827a.getEnabledProtocols()));
                if (arrayList.size() > 1) {
                    arrayList.remove("SSLv3");
                    printStream = System.out;
                    str = "Removed SSLv3 from enabled protocols";
                } else {
                    printStream = System.out;
                    str = "SSL stuck with protocol available for " + arrayList;
                }
                printStream.println(str);
                strArr = (String[]) arrayList.toArray(new String[0]);
            }
            this.f7827a.setEnabledProtocols(strArr);
        }
    }

    public t(SSLSocketFactory sSLSocketFactory) {
        this.f7826a = sSLSocketFactory;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i) {
        Socket createSocket = this.f7826a.createSocket(str, i);
        return createSocket instanceof SSLSocket ? new b((SSLSocket) createSocket) : createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getDefaultCipherSuites() {
        return this.f7826a.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final String[] getSupportedCipherSuites() {
        return this.f7826a.getSupportedCipherSuites();
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        Socket createSocket = this.f7826a.createSocket(str, i, inetAddress, i2);
        return createSocket instanceof SSLSocket ? new b((SSLSocket) createSocket) : createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i) {
        Socket createSocket = this.f7826a.createSocket(inetAddress, i);
        return createSocket instanceof SSLSocket ? new b((SSLSocket) createSocket) : createSocket;
    }

    @Override // javax.net.SocketFactory
    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        Socket createSocket = this.f7826a.createSocket(inetAddress, i, inetAddress2, i2);
        return createSocket instanceof SSLSocket ? new b((SSLSocket) createSocket) : createSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public final Socket createSocket(Socket socket, String str, int i, boolean z) {
        Socket createSocket = this.f7826a.createSocket(socket, str, i, z);
        return createSocket instanceof SSLSocket ? new b((SSLSocket) createSocket) : createSocket;
    }
}
