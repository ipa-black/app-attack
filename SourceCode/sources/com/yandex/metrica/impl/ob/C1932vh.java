package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Fh;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.ServerSocket;
import java.security.KeyStore;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
/* renamed from: com.yandex.metrica.impl.ob.vh  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1932vh implements Fh {

    /* renamed from: a  reason: collision with root package name */
    private final File f15934a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1932vh(File file) {
        this.f15934a = file;
    }

    @Override // com.yandex.metrica.impl.ob.Fh
    public ServerSocket a(int i) throws IOException, Fh.a {
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            KeyManagerFactory keyManagerFactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
            KeyStore keyStore = KeyStore.getInstance("PKCS12");
            keyStore.load(new FileInputStream(this.f15934a), "`0l}%01ny{jl~;|&".toCharArray());
            keyManagerFactory.init(keyStore, "`0l}%01ny{jl~;|&".toCharArray());
            sSLContext.init(keyManagerFactory.getKeyManagers(), null, null);
            return sSLContext.getServerSocketFactory().createServerSocket(i);
        } catch (Exception e2) {
            throw new Fh.a("https_open_error", e2);
        }
    }
}
