package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1633jb;
import com.yandex.metrica.network.NetworkClient;
import com.yandex.metrica.network.Request;
import com.yandex.metrica.network.Response;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.kb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1658kb {

    /* renamed from: a  reason: collision with root package name */
    private final C1633jb f15022a;

    /* renamed from: b  reason: collision with root package name */
    private final Uh f15023b;

    public C1658kb(C1633jb c1633jb, Uh uh) {
        this.f15022a = c1633jb;
        this.f15023b = uh;
    }

    public final void a() {
        Request build = new Request.Builder(this.f15023b.c()).build();
        NetworkClient.Builder builder = new NetworkClient.Builder();
        F0 g2 = F0.g();
        Intrinsics.checkNotNullExpressionValue(g2, "GlobalServiceLocator.getInstance()");
        g2.t().getClass();
        String str = null;
        NetworkClient.Builder withSslSocketFactory = builder.withSslSocketFactory(null);
        int i = C1710md.f15151a;
        NetworkClient build2 = withSslSocketFactory.withConnectTimeout(i).withReadTimeout(i).withUseCaches(false).withInstanceFollowRedirects(true).build();
        Intrinsics.checkNotNullExpressionValue(build2, "NetworkClient.Builder()\n…rue)\n            .build()");
        Response execute = build2.newCall(build).execute();
        Intrinsics.checkNotNullExpressionValue(execute, "client.newCall(request).execute()");
        C1633jb c1633jb = this.f15022a;
        boolean z = execute.getCode() == 200;
        int length = execute.getResponseData().length;
        int code = execute.getCode();
        Throwable it = execute.getException();
        if (it != null) {
            StringBuilder append = new StringBuilder().append(it.getClass().getSimpleName()).append(" : ");
            Intrinsics.checkNotNullExpressionValue(it, "it");
            str = append.append(it.getLocalizedMessage()).toString();
        }
        c1633jb.a(new C1633jb.a(z, code, length, str));
    }
}
