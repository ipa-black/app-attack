package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1930vf;
/* loaded from: classes5.dex */
public abstract class Se implements InterfaceC1438bf, Ie {

    /* renamed from: a  reason: collision with root package name */
    private final String f13870a;

    /* renamed from: b  reason: collision with root package name */
    private final int f13871b;

    /* renamed from: c  reason: collision with root package name */
    private final Kn<String> f13872c;

    /* renamed from: d  reason: collision with root package name */
    private final Ke f13873d;

    /* renamed from: e  reason: collision with root package name */
    private C1470cm f13874e = Ul.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Se(int i, String str, Kn<String> kn, Ke ke) {
        this.f13871b = i;
        this.f13870a = str;
        this.f13872c = kn;
        this.f13873d = ke;
    }

    public final C1930vf.a a() {
        C1930vf.a aVar = new C1930vf.a();
        aVar.f15925b = this.f13871b;
        aVar.f15924a = this.f13870a.getBytes();
        aVar.f15927d = new C1930vf.c();
        aVar.f15926c = new C1930vf.b();
        return aVar;
    }

    public Ke b() {
        return this.f13873d;
    }

    public String c() {
        return this.f13870a;
    }

    public int d() {
        return this.f13871b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean e() {
        In a2 = this.f13872c.a(this.f13870a);
        if (a2.b()) {
            return true;
        }
        if (this.f13874e.isEnabled()) {
            this.f13874e.w("Attribute " + this.f13870a + " of type " + Ze.a(this.f13871b) + " is skipped because " + a2.a());
            return false;
        }
        return false;
    }

    public void a(C1470cm c1470cm) {
        this.f13874e = c1470cm;
    }
}
