package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
class Dk implements Yk {

    /* renamed from: a  reason: collision with root package name */
    private final C1742nk f12822a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Dk() {
        this(new C1742nk());
    }

    @Override // com.yandex.metrica.impl.ob.Yk
    public boolean a(String str, C1960wl c1960wl) {
        if (!c1960wl.f16004g) {
            return !A2.a("allow-parsing", str);
        }
        this.f12822a.getClass();
        return A2.a("do-not-parse", str);
    }

    Dk(C1742nk c1742nk) {
        this.f12822a = c1742nk;
    }
}
