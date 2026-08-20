package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.yl  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2008yl {

    /* renamed from: a  reason: collision with root package name */
    private final M0 f16113a;

    /* renamed from: b  reason: collision with root package name */
    private final C1960wl f16114b;

    /* renamed from: com.yandex.metrica.impl.ob.yl$a */
    /* loaded from: classes5.dex */
    static class a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2008yl(C1960wl c1960wl, M0 m0) {
        this.f16114b = c1960wl;
        this.f16113a = m0;
    }

    public void a(String str, Throwable th) {
        if (this.f16114b.f16003f) {
            this.f16113a.reportError(str, th);
        }
    }
}
