package com.yandex.metrica.impl.ob;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.zk  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2031zk {

    /* renamed from: a  reason: collision with root package name */
    private final Tk f16166a;

    /* renamed from: b  reason: collision with root package name */
    private final C1618il f16167b;

    /* renamed from: c  reason: collision with root package name */
    private final C1618il f16168c;

    /* renamed from: d  reason: collision with root package name */
    private final C1618il f16169d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2031zk(C1544fl c1544fl) {
        this(new Tk(c1544fl == null ? null : c1544fl.f14758e), new C1618il(c1544fl == null ? null : c1544fl.f14759f), new C1618il(c1544fl == null ? null : c1544fl.f14761h), new C1618il(c1544fl != null ? c1544fl.f14760g : null));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(C1544fl c1544fl) {
        this.f16166a.d(c1544fl.f14758e);
        this.f16167b.d(c1544fl.f14759f);
        this.f16168c.d(c1544fl.f14761h);
        this.f16169d.d(c1544fl.f14760g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2007yk<?> b() {
        return this.f16167b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2007yk<?> c() {
        return this.f16166a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC2007yk<?> d() {
        return this.f16168c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized AbstractC2007yk<?> a() {
        return this.f16169d;
    }

    C2031zk(Tk tk, C1618il c1618il, C1618il c1618il2, C1618il c1618il3) {
        this.f16166a = tk;
        this.f16167b = c1618il;
        this.f16168c = c1618il2;
        this.f16169d = c1618il3;
    }
}
