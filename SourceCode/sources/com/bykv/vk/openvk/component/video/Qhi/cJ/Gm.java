package com.bykv.vk.openvk.component.video.Qhi.cJ;

import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Collections;
import java.util.List;
/* compiled from: SkipProxySelector.java */
/* loaded from: classes2.dex */
class Gm extends ProxySelector {
    private static final List<Proxy> Qhi = Collections.singletonList(Proxy.NO_PROXY);
    private final int CJ;
    private final String ac;
    private final ProxySelector cJ = ProxySelector.getDefault();

    private Gm(String str, int i) {
        this.ac = str;
        this.CJ = i;
    }

    @Override // java.net.ProxySelector
    public List<Proxy> select(URI uri) {
        if (uri != null) {
            return (this.ac.equalsIgnoreCase(uri.getHost()) && this.CJ == uri.getPort()) ? Qhi : this.cJ.select(uri);
        }
        throw new IllegalArgumentException("URI can't be null");
    }

    @Override // java.net.ProxySelector
    public void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException) {
        this.cJ.connectFailed(uri, socketAddress, iOException);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void Qhi(String str, int i) {
        ProxySelector.setDefault(new Gm(str, i));
    }
}
