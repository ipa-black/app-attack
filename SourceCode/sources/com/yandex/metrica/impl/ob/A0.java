package com.yandex.metrica.impl.ob;

import android.content.Context;
/* loaded from: classes5.dex */
public class A0 {

    /* renamed from: a  reason: collision with root package name */
    private final C1893u2 f12608a;

    /* renamed from: b  reason: collision with root package name */
    private final F f12609b;

    public A0(Context context) {
        this(new C1893u2(context, "com.yandex.android.appmetrica.build_id"), new F(context, "com.yandex.android.appmetrica.is_offline"));
    }

    public String a() {
        return this.f12608a.a();
    }

    public Boolean b() {
        return this.f12609b.a();
    }

    A0(C1893u2 c1893u2, F f2) {
        this.f12608a = c1893u2;
        this.f12609b = f2;
    }
}
