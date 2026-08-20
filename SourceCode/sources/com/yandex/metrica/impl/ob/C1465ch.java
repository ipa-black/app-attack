package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.impl.ob.C1440bh;
import com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.ch  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1465ch implements CacheControlHttpsConnectionPerformer.Client {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ C1515eh f14568a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ C1415ah f14569b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ C1440bh f14570c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1465ch(C1440bh c1440bh, C1515eh c1515eh, C1415ah c1415ah) {
        this.f14570c = c1440bh;
        this.f14568a = c1515eh;
        this.f14569b = c1415ah;
    }

    @Override // com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client
    public String getOldETag() {
        return this.f14568a.f14687b;
    }

    @Override // com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client
    public void onError() {
        this.f14569b.a();
    }

    @Override // com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client
    public void onNotModified() {
        SystemTimeProvider systemTimeProvider;
        C1415ah c1415ah = this.f14569b;
        C1515eh c1515eh = this.f14568a;
        List<C1590hh> list = c1515eh.f14686a;
        String str = c1515eh.f14687b;
        systemTimeProvider = this.f14570c.f14477f;
        c1415ah.a(new C1515eh(list, str, systemTimeProvider.currentTimeMillis(), true, false));
    }

    @Override // com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer.Client
    public void onResponse(String str, byte[] bArr) {
        C1440bh.b bVar;
        C1924v9 c1924v9;
        SystemTimeProvider systemTimeProvider;
        bVar = this.f14570c.f14474c;
        c1924v9 = this.f14570c.f14475d;
        List<C1590hh> a2 = bVar.a(c1924v9.a(bArr, "af9202nao18gswqp"));
        C1415ah c1415ah = this.f14569b;
        systemTimeProvider = this.f14570c.f14477f;
        c1415ah.a(new C1515eh(a2, str, systemTimeProvider.currentTimeMillis(), true, false));
    }
}
