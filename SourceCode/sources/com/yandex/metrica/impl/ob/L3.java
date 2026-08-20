package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.YandexMetrica;
import com.yandex.metrica.impl.ob.C1429b6;
import com.yandex.metrica.impl.ob.C1842s;
import com.yandex.metrica.impl.ob.D3;
import com.yandex.metrica.impl.ob.K3;
import com.yandex.metrica.impl.ob.Lg;
import java.util.ArrayList;
/* loaded from: classes5.dex */
public class L3 implements S3, P3, InterfaceC1783pb, Lg.d {

    /* renamed from: a  reason: collision with root package name */
    private final Context f13396a;

    /* renamed from: b  reason: collision with root package name */
    private final I3 f13397b;

    /* renamed from: c  reason: collision with root package name */
    private final C1457c9 f13398c;

    /* renamed from: d  reason: collision with root package name */
    private final C1507e9 f13399d;

    /* renamed from: e  reason: collision with root package name */
    private final C1407a9 f13400e;

    /* renamed from: f  reason: collision with root package name */
    private final S1 f13401f;

    /* renamed from: g  reason: collision with root package name */
    private final L7 f13402g;

    /* renamed from: h  reason: collision with root package name */
    private final L4 f13403h;
    private final I4 i;
    private final C1842s j;
    private final B3 k;
    private final C1429b6 l;
    private final Z3 m;
    private final M5 n;
    private final C1470cm o;
    private final Sl p;
    private final C1402a4 q;
    private final K3.b r;
    private final C1758ob s;
    private final C1683lb t;
    private final C1807qb u;
    private final H v;
    private final C1965x2 w;
    private final I1 x;
    private final C1431b8 y;
    private final C1579h6 z;

    /* loaded from: classes5.dex */
    class a implements C1429b6.a {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.C1429b6.a
        public void a(C1448c0 c1448c0, C1454c6 c1454c6) {
            L3.this.q.a(c1448c0, c1454c6);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public L3(Context context, I3 i3, B3 b3, C1965x2 c1965x2, M3 m3) {
        this.f13396a = context.getApplicationContext();
        this.f13397b = i3;
        this.k = b3;
        this.w = c1965x2;
        C1431b8 e2 = m3.e();
        this.y = e2;
        this.x = F0.g().k();
        Z3 a2 = m3.a(this);
        this.m = a2;
        C1470cm b2 = m3.c().b();
        this.o = b2;
        Sl a3 = m3.c().a();
        this.p = a3;
        C1457c9 a4 = m3.d().a();
        this.f13398c = a4;
        this.f13400e = m3.d().b();
        this.f13399d = F0.g().s();
        C1842s a5 = b3.a(i3, b2, a4);
        this.j = a5;
        this.n = m3.a();
        L7 b4 = m3.b(this);
        this.f13402g = b4;
        S1<L3> e3 = m3.e(this);
        this.f13401f = e3;
        this.r = m3.d(this);
        C1807qb a6 = m3.a(b4, a2);
        this.u = a6;
        C1683lb a7 = m3.a(b4);
        this.t = a7;
        ArrayList arrayList = new ArrayList();
        arrayList.add(a6);
        arrayList.add(a7);
        this.s = m3.a(arrayList, this);
        z();
        C1429b6 a8 = m3.a(this, e2, new a());
        this.l = a8;
        if (a3.isEnabled()) {
            a3.fi("Read app environment for component %s. Value: %s", i3.toString(), a5.a().f15699a);
        }
        C1579h6 b5 = m3.b();
        this.z = b5;
        this.q = m3.a(a4, e2, a8, b4, a5, b5, e3);
        I4 c2 = m3.c(this);
        this.i = c2;
        this.f13403h = m3.a(this, c2);
        this.v = m3.a(a4);
        b4.e();
    }

    private void z() {
        int libraryApiLevel = YandexMetrica.getLibraryApiLevel();
        Integer j = this.f13398c.j();
        if (j == null) {
            j = Integer.valueOf(this.y.c());
        }
        if (j.intValue() < libraryApiLevel) {
            this.r.a(new Id(new Jd(this.f13396a, this.f13397b.a()))).a();
            this.y.b(libraryApiLevel);
        }
    }

    public boolean A() {
        Lg m = m();
        return m.R() && m.x() && this.w.b(this.q.a(), m.K(), "need to check permissions");
    }

    public boolean B() {
        return this.q.d() && m().x();
    }

    public boolean C() {
        return this.q.c() && m().O() && m().x();
    }

    public void D() {
        this.m.e();
    }

    public boolean E() {
        Lg m = m();
        return m.R() && this.w.b(this.q.a(), m.L(), "should force send permissions");
    }

    public boolean F() {
        return !(this.x.b().f14679d && this.m.d().N());
    }

    public void G() {
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1665ki
    public synchronized void a(EnumC1566gi enumC1566gi, C1790pi c1790pi) {
    }

    public void b(C1448c0 c1448c0) {
        this.j.a(c1448c0.b());
        C1842s.a a2 = this.j.a();
        B3 b3 = this.k;
        C1457c9 c1457c9 = this.f13398c;
        synchronized (b3) {
            if (a2.f15700b > c1457c9.f().f15700b) {
                c1457c9.a(a2).d();
                if (this.o.isEnabled()) {
                    this.o.fi("Save new app environment for %s. Value: %s", this.f13397b, a2.f15699a);
                }
            }
        }
    }

    public synchronized void c() {
        this.f13401f.d();
    }

    public H d() {
        return this.v;
    }

    public I3 e() {
        return this.f13397b;
    }

    public C1457c9 f() {
        return this.f13398c;
    }

    public Context g() {
        return this.f13396a;
    }

    public String h() {
        return this.f13398c.n();
    }

    public L7 i() {
        return this.f13402g;
    }

    public M5 j() {
        return this.n;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public I4 k() {
        return this.i;
    }

    public C1758ob l() {
        return this.s;
    }

    public Lg m() {
        return (Lg) this.m.b();
    }

    @Deprecated
    public final Jd n() {
        return new Jd(this.f13396a, this.f13397b.a());
    }

    public C1407a9 o() {
        return this.f13400e;
    }

    public String p() {
        return this.f13398c.m();
    }

    public C1470cm q() {
        return this.o;
    }

    public C1402a4 r() {
        return this.q;
    }

    public CounterConfiguration.b s() {
        return CounterConfiguration.b.MANUAL;
    }

    public C1507e9 t() {
        return this.f13399d;
    }

    public C1579h6 u() {
        return this.z;
    }

    public C1429b6 v() {
        return this.l;
    }

    public C1790pi w() {
        return this.m.d();
    }

    public C1431b8 x() {
        return this.y;
    }

    public void y() {
        this.q.b();
    }

    @Override // com.yandex.metrica.impl.ob.S3
    public void a(C1448c0 c1448c0) {
        if (this.o.isEnabled()) {
            C1470cm c1470cm = this.o;
            c1470cm.getClass();
            if (C2011z0.c(c1448c0.o())) {
                StringBuilder sb = new StringBuilder("Event received on service: ");
                sb.append(c1448c0.g());
                if (C2011z0.e(c1448c0.o()) && !TextUtils.isEmpty(c1448c0.q())) {
                    sb.append(" with value ");
                    sb.append(c1448c0.q());
                }
                c1470cm.i(sb.toString());
            }
        }
        String a2 = this.f13397b.a();
        if (TextUtils.isEmpty(a2) || "-1".equals(a2)) {
            return;
        }
        this.f13403h.a(c1448c0);
    }

    public void b() {
        this.j.b();
        B3 b3 = this.k;
        C1842s.a a2 = this.j.a();
        C1457c9 c1457c9 = this.f13398c;
        synchronized (b3) {
            c1457c9.a(a2).d();
        }
    }

    public void b(String str) {
        this.f13398c.i(str).d();
    }

    @Override // com.yandex.metrica.impl.ob.S3
    public synchronized void a(D3.a aVar) {
        Z3 z3 = this.m;
        synchronized (z3) {
            z3.a((Z3) aVar);
        }
        if (Boolean.TRUE.equals(aVar.k)) {
            this.o.setEnabled();
        } else {
            if (Boolean.FALSE.equals(aVar.k)) {
                this.o.setDisabled();
            }
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1665ki
    public synchronized void a(C1790pi c1790pi) {
        this.m.a(c1790pi);
        this.f13402g.b(c1790pi);
        this.s.c();
    }

    public void a(String str) {
        this.f13398c.j(str).d();
    }
}
