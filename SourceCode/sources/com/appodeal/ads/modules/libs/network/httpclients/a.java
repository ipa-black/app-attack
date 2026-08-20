package com.appodeal.ads.modules.libs.network.httpclients;

import com.appodeal.ads.modules.common.internal.log.InternalLogKt;
import com.appodeal.ads.modules.libs.network.HttpClient;
import com.appodeal.ads.modules.libs.network.HttpError;
import com.appodeal.ads.modules.libs.network.Networking;
import com.appodeal.ads.modules.libs.network.httpclients.e;
import com.google.common.net.HttpHeaders;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
/* loaded from: classes2.dex */
public final class a implements Networking {

    /* renamed from: a  reason: collision with root package name */
    public final Map<String, List<String>> f7028a;

    /* renamed from: b  reason: collision with root package name */
    public final List<com.appodeal.ads.modules.libs.network.encoders.d> f7029b;

    /* renamed from: c  reason: collision with root package name */
    public final List<com.appodeal.ads.modules.libs.network.encoders.c> f7030c;

    /* renamed from: d  reason: collision with root package name */
    public final d f7031d;

    /* JADX WARN: Multi-variable type inference failed */
    public a(Map<String, ? extends List<String>> headers, List<? extends com.appodeal.ads.modules.libs.network.encoders.d> encoders, List<? extends com.appodeal.ads.modules.libs.network.encoders.c> decoders) {
        Intrinsics.checkNotNullParameter(headers, "headers");
        Intrinsics.checkNotNullParameter(encoders, "encoders");
        Intrinsics.checkNotNullParameter(decoders, "decoders");
        this.f7028a = headers;
        this.f7029b = encoders;
        this.f7030c = decoders;
        this.f7031d = new d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.appodeal.ads.modules.libs.network.Networking
    /* renamed from: enqueue-yxL6bBk */
    public final <Response> Object mo148enqueueyxL6bBk(HttpClient.Method method, String url, byte[] bArr, Function1<? super byte[], ? extends Response> parser, boolean z) {
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(parser, "parser");
        Response response = null;
        InternalLogKt.logInternal$default("HttpClientImpl", "--> " + method + ' ' + url + ", request body: " + new String(bArr == null ? new byte[0] : bArr, Charsets.UTF_8), null, 4, null);
        List<com.appodeal.ads.modules.libs.network.encoders.d> list = this.f7029b;
        Map emptyMap = MapsKt.emptyMap();
        for (com.appodeal.ads.modules.libs.network.encoders.d dVar : list) {
            emptyMap = MapsKt.plus(emptyMap, dVar.a());
        }
        Map<String, List<String>> map = this.f7028a;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.putAll(emptyMap);
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            if (linkedHashMap.containsKey(key)) {
                List list2 = (List) linkedHashMap.get(key);
                if (list2 == null) {
                    list2 = CollectionsKt.emptyList();
                }
                value = CollectionsKt.distinct(CollectionsKt.plus((Collection) list2, (Iterable) value));
            }
            linkedHashMap.put(key, value);
        }
        Map mutableMap = MapsKt.toMutableMap(linkedHashMap);
        com.appodeal.ads.modules.libs.network.httpclients.verification.b a2 = com.appodeal.ads.modules.libs.network.httpclients.verification.a.a();
        if (z && !StringsKt.startsWith$default(url, "https://a.appbaqend.com", false, 2, (Object) null)) {
            mutableMap.put(HttpHeaders.X_REQUEST_ID, CollectionsKt.listOf(a2.a()));
        }
        byte[] a3 = bArr == null ? null : com.appodeal.ads.modules.libs.network.encoders.ext.a.a(bArr, this.f7029b);
        if (a3 == null) {
            a3 = new byte[0];
        }
        c cVar = new c(method, url, a3, mutableMap);
        this.f7031d.getClass();
        Object a4 = d.a(cVar);
        if (Result.m508isSuccessimpl(a4)) {
            try {
                Result.Companion companion = Result.Companion;
                e eVar = (e) a4;
                if (eVar instanceof e.a) {
                    throw ((e.a) eVar).a();
                }
                if (eVar instanceof e.b) {
                    if (z && !StringsKt.startsWith$default(url, "https://a.appbaqend.com", false, 2, (Object) null)) {
                        List<String> list3 = ((e.b) eVar).c().get("X-Signature");
                        if (!a2.a(list3 == null ? null : (String) CollectionsKt.firstOrNull((List<? extends Object>) list3))) {
                            throw new HttpError.RequestVerificationFailed(((e.b) eVar).b());
                        }
                    }
                    byte[] b2 = ((e.b) eVar).b();
                    try {
                        Response invoke = parser.invoke(b2 == null ? null : com.appodeal.ads.modules.libs.network.encoders.ext.a.a(b2, ((e.b) eVar).a(), this.f7030c));
                        if (invoke != null) {
                            InternalLogKt.logInternal$default("HttpClientImpl", "<-- " + cVar.c() + "     " + cVar.d() + ", parsed model: " + invoke, null, 4, null);
                            response = invoke;
                        }
                    } catch (Exception unused) {
                    }
                    return Result.m501constructorimpl(response);
                }
                throw new NoWhenBranchMatchedException();
            } catch (Throwable th) {
                Result.Companion companion2 = Result.Companion;
                a4 = ResultKt.createFailure(th);
            }
        }
        return Result.m501constructorimpl(a4);
    }
}
