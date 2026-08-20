package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.za  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2021za {

    /* renamed from: a  reason: collision with root package name */
    private final C1877ta<Ud> f16152a;

    /* renamed from: b  reason: collision with root package name */
    private final C1877ta<C1918v3> f16153b;

    public C2021za(Context context) {
        this(context, new C1901ua());
    }

    public void a(C1790pi c1790pi) {
        this.f16152a.a(F0.g().k().a(), c1790pi.l());
        this.f16153b.a(F0.g().d().a(), c1790pi.l());
    }

    C2021za(Context context, C1901ua c1901ua) {
        this.f16152a = c1901ua.c(context, C1545fm.c());
        this.f16153b = c1901ua.b(context, C1545fm.c());
    }
}
