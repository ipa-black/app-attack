package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
class Bk {

    /* renamed from: a  reason: collision with root package name */
    private final Ak f12706a;

    /* renamed from: b  reason: collision with root package name */
    private final Ak f12707b;

    /* renamed from: c  reason: collision with root package name */
    private final Ak f12708c;

    /* renamed from: d  reason: collision with root package name */
    private final Ak f12709d;

    /* loaded from: classes5.dex */
    static class a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bk(C2031zk c2031zk, C1544fl c1544fl) {
        this(new Ak(c2031zk.c(), a(c1544fl.f14758e)), new Ak(c2031zk.b(), a(c1544fl.f14759f)), new Ak(c2031zk.d(), a(c1544fl.f14761h)), new Ak(c2031zk.a(), a(c1544fl.f14760g)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ak a() {
        return this.f12709d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ak b() {
        return this.f12707b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ak c() {
        return this.f12706a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ak d() {
        return this.f12708c;
    }

    private static int a(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    Bk(Ak ak, Ak ak2, Ak ak3, Ak ak4) {
        this.f12706a = ak;
        this.f12707b = ak2;
        this.f12708c = ak3;
        this.f12709d = ak4;
    }
}
