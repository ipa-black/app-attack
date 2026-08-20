package com.yandex.metrica.impl.ob;

import com.yandex.metrica.modules.api.CommonIdentifiers;
import com.yandex.metrica.modules.api.ModuleFullRemoteConfig;
import com.yandex.metrica.modules.api.RemoteConfigMetaInfo;
/* renamed from: com.yandex.metrica.impl.ob.id  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1611id {

    /* renamed from: a  reason: collision with root package name */
    private final CommonIdentifiers f14919a;

    /* renamed from: b  reason: collision with root package name */
    private final RemoteConfigMetaInfo f14920b;

    /* renamed from: c  reason: collision with root package name */
    private final C1790pi f14921c;

    public C1611id(C1790pi c1790pi) {
        this.f14921c = c1790pi;
        this.f14919a = new CommonIdentifiers(c1790pi.V(), c1790pi.i());
        this.f14920b = new RemoteConfigMetaInfo(c1790pi.o(), c1790pi.B());
    }

    public final ModuleFullRemoteConfig<Object> a(String str) {
        return new ModuleFullRemoteConfig(this.f14919a, this.f14920b, this.f14921c.A().get(str));
    }
}
