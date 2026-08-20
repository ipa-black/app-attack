package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public final class In {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f13225a;

    /* renamed from: b  reason: collision with root package name */
    private final String f13226b;

    private In(Kn<?> kn, boolean z, String str) {
        kn.getClass();
        this.f13225a = z;
        this.f13226b = str;
    }

    public final String a() {
        return this.f13226b;
    }

    public final boolean b() {
        return this.f13225a;
    }

    public static final In a(Kn<?> kn) {
        return new In(kn, true, "");
    }

    public static final In a(Kn<?> kn, String str) {
        return new In(kn, false, str);
    }
}
