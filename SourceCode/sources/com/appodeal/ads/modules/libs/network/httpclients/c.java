package com.appodeal.ads.modules.libs.network.httpclients;

import com.appodeal.ads.modules.libs.network.HttpClient;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final HttpClient.Method f7040a;

    /* renamed from: b  reason: collision with root package name */
    public final String f7041b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f7042c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, List<String>> f7043d;

    /* JADX WARN: Multi-variable type inference failed */
    public c(HttpClient.Method method, String url, byte[] bArr, Map<String, ? extends List<String>> headers) {
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(headers, "headers");
        this.f7040a = method;
        this.f7041b = url;
        this.f7042c = bArr;
        this.f7043d = headers;
    }

    public final byte[] a() {
        return this.f7042c;
    }

    public final Map<String, List<String>> b() {
        return this.f7043d;
    }

    public final HttpClient.Method c() {
        return this.f7040a;
    }

    public final String d() {
        return this.f7041b;
    }
}
