package com.yandex.metrica.networktasks.api;

import com.google.common.net.HttpHeaders;
import com.yandex.metrica.network.Response;
import java.util.List;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes5.dex */
public class CacheControlHttpsConnectionPerformer {

    /* renamed from: a  reason: collision with root package name */
    private final a f16224a;

    /* renamed from: b  reason: collision with root package name */
    private final SSLSocketFactory f16225b;

    /* loaded from: classes5.dex */
    public interface Client {
        String getOldETag();

        void onError();

        void onNotModified();

        void onResponse(String str, byte[] bArr);
    }

    CacheControlHttpsConnectionPerformer(a aVar, SSLSocketFactory sSLSocketFactory) {
        this.f16224a = aVar;
        this.f16225b = sSLSocketFactory;
    }

    public CacheControlHttpsConnectionPerformer(SSLSocketFactory sSLSocketFactory) {
        this(new a(), sSLSocketFactory);
    }

    public void performConnection(String str, Client client) {
        Response a2;
        int code;
        try {
            a2 = this.f16224a.a(client.getOldETag(), str, this.f16225b);
            code = a2.getCode();
        } catch (Throwable unused) {
        }
        if (code == 200) {
            List list = (List) a2.getHeaders().get(HttpHeaders.ETAG);
            client.onResponse((list == null || list.size() <= 0 || (r0 = (String) list.get(0)) == null) ? "" : "", a2.getResponseData());
        } else if (code != 304) {
            client.onError();
        } else {
            client.onNotModified();
        }
    }
}
