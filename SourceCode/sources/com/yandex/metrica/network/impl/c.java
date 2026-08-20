package com.yandex.metrica.network.impl;

import androidx.browser.trusted.sharing.ShareTarget;
import com.yandex.metrica.network.Call;
import com.yandex.metrica.network.NetworkClient;
import com.yandex.metrica.network.Request;
import com.yandex.metrica.network.Response;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class c implements Call {

    /* renamed from: a  reason: collision with root package name */
    private final NetworkClient f16220a;

    /* renamed from: b  reason: collision with root package name */
    private final Request f16221b;

    /* renamed from: c  reason: collision with root package name */
    private final d f16222c;

    public c(NetworkClient client, Request request, d urlProvider) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(request, "request");
        Intrinsics.checkNotNullParameter(urlProvider, "urlProvider");
        this.f16220a = client;
        this.f16221b = request;
        this.f16222c = urlProvider;
    }

    private final void a(HttpsURLConnection httpsURLConnection) {
        for (Map.Entry entry : this.f16221b.getHeaders().entrySet()) {
            httpsURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
        }
        Integer it = this.f16220a.getReadTimeout();
        if (it != null) {
            Intrinsics.checkNotNullExpressionValue(it, "it");
            httpsURLConnection.setReadTimeout(it.intValue());
        }
        Integer it2 = this.f16220a.getConnectTimeout();
        if (it2 != null) {
            Intrinsics.checkNotNullExpressionValue(it2, "it");
            httpsURLConnection.setConnectTimeout(it2.intValue());
        }
        Boolean it3 = this.f16220a.getUseCaches();
        if (it3 != null) {
            Intrinsics.checkNotNullExpressionValue(it3, "it");
            httpsURLConnection.setUseCaches(it3.booleanValue());
        }
        Boolean it4 = this.f16220a.getInstanceFollowRedirects();
        if (it4 != null) {
            Intrinsics.checkNotNullExpressionValue(it4, "it");
            httpsURLConnection.setInstanceFollowRedirects(it4.booleanValue());
        }
        httpsURLConnection.setRequestMethod(this.f16221b.getMethod());
        SSLSocketFactory sslSocketFactory = this.f16220a.getSslSocketFactory();
        if (sslSocketFactory != null) {
            httpsURLConnection.setSSLSocketFactory(sslSocketFactory);
        }
    }

    @Override // com.yandex.metrica.network.Call
    public Response execute() {
        Map map;
        Throwable th;
        int i;
        boolean z;
        Throwable th2;
        byte[] bArr;
        byte[] bArr2;
        int i2;
        try {
            d dVar = this.f16222c;
            String url = this.f16221b.getUrl();
            dVar.getClass();
            URLConnection openConnection = new URL(url).openConnection();
            if (!(openConnection instanceof HttpsURLConnection)) {
                openConnection = null;
            }
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) openConnection;
            if (httpsURLConnection != null) {
                byte[] bArr3 = new byte[0];
                byte[] bArr4 = new byte[0];
                try {
                    a(httpsURLConnection);
                    if (Intrinsics.areEqual(this.f16221b.getMethod(), ShareTarget.METHOD_POST)) {
                        httpsURLConnection.setDoOutput(true);
                        OutputStream outputStream = httpsURLConnection.getOutputStream();
                        if (outputStream != null) {
                            outputStream.write(this.f16221b.getBody());
                            outputStream.flush();
                            CloseableKt.closeFinally(outputStream, null);
                        }
                    }
                    i = httpsURLConnection.getResponseCode();
                    try {
                        map = httpsURLConnection.getHeaderFields();
                        try {
                            e eVar = e.f16223a;
                            bArr3 = eVar.a(this.f16220a.getMaxResponseSize(), new a(httpsURLConnection));
                            byte[] a2 = eVar.a(this.f16220a.getMaxResponseSize(), new b(httpsURLConnection));
                            try {
                                httpsURLConnection.disconnect();
                            } catch (Throwable unused) {
                            }
                            th2 = null;
                            bArr = bArr3;
                            bArr2 = a2;
                            i2 = i;
                            z = true;
                        } catch (Throwable th3) {
                            th = th3;
                            try {
                                httpsURLConnection.disconnect();
                            } catch (Throwable unused2) {
                            }
                            z = false;
                            th2 = th;
                            bArr = bArr3;
                            bArr2 = bArr4;
                            i2 = i;
                            return new Response(z, i2, bArr, bArr2, map, th2);
                        }
                    } catch (Throwable th4) {
                        map = null;
                        th = th4;
                    }
                } catch (Throwable th5) {
                    map = null;
                    th = th5;
                    i = 0;
                }
                return new Response(z, i2, bArr, bArr2, map, th2);
            }
            return new Response(new IllegalArgumentException("Connection created for " + this.f16221b.getUrl() + " does not represent https connection"));
        } catch (Throwable th6) {
            return new Response(th6);
        }
    }
}
