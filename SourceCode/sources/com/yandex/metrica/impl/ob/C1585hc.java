package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.impl.ob.C1759oc;
import com.yandex.metrica.impl.ob.H0;
import java.util.Collection;
/* renamed from: com.yandex.metrica.impl.ob.hc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1585hc {

    /* renamed from: a  reason: collision with root package name */
    private final C1610ic f14842a;

    /* renamed from: b  reason: collision with root package name */
    private final C1634jc f14843b;

    /* renamed from: c  reason: collision with root package name */
    private final SystemTimeProvider f14844c;

    /* renamed from: d  reason: collision with root package name */
    private C1709mc f14845d;

    /* renamed from: e  reason: collision with root package name */
    private final E f14846e;

    /* renamed from: f  reason: collision with root package name */
    private final H2 f14847f;

    /* renamed from: g  reason: collision with root package name */
    private final Xc f14848g;

    /* renamed from: h  reason: collision with root package name */
    private final C1938w f14849h;
    private boolean i;
    private final Runnable j;

    /* renamed from: com.yandex.metrica.impl.ob.hc$a */
    /* loaded from: classes5.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1585hc.this.b();
            C1585hc.this.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.hc$b */
    /* loaded from: classes5.dex */
    public class b implements InterfaceC1934vj {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1684lc f14851a;

        b(C1585hc c1585hc, C1684lc c1684lc) {
            this.f14851a = c1684lc;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1934vj
        public void a(Collection<C1910uj> collection) {
            this.f14851a.a(Tl.a(collection));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1585hc(com.yandex.metrica.impl.ob.C1610ic r4) {
        /*
            r3 = this;
            com.yandex.metrica.impl.ob.Xc r0 = new com.yandex.metrica.impl.ob.Xc
            com.yandex.metrica.impl.ob.Sb r1 = r4.f14914a
            android.content.Context r1 = r1.f13857a
            com.yandex.metrica.impl.ob.mc r2 = r4.f14918e
            if (r2 != 0) goto Lc
            r2 = 0
            goto Le
        Lc:
            com.yandex.metrica.impl.ob.Xb r2 = r2.m
        Le:
            r0.<init>(r1, r2)
            r3.<init>(r4, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1585hc.<init>(com.yandex.metrica.impl.ob.ic):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        C1709mc c1709mc = this.f14845d;
        if (c1709mc != null) {
            long j = c1709mc.f15150h;
            if (j > 0) {
                this.f14842a.f14914a.f13858b.executeDelayed(this.j, j);
            }
        }
    }

    public void b() {
        C1684lc c1684lc = new C1684lc();
        c1684lc.b(this.f14844c.currentTimeMillis());
        c1684lc.a(this.f14844c.elapsedRealtime());
        this.f14848g.b();
        c1684lc.b(F2.a(this.f14847f.a().a()));
        this.f14842a.f14915b.a(new b(this, c1684lc));
        c1684lc.a(this.f14846e.b());
        c1684lc.a(C1759oc.a.a(this.f14849h.c()));
        this.f14843b.a(c1684lc);
        this.f14842a.f14916c.a();
        this.f14842a.f14917d.a();
    }

    public void d() {
        a();
    }

    public void e() {
        this.f14842a.f14914a.f13858b.remove(this.j);
    }

    private void a() {
        C1709mc c1709mc = this.f14845d;
        boolean z = c1709mc != null && c1709mc.i;
        if (this.i != z) {
            this.i = z;
            if (z) {
                c();
            } else {
                this.f14842a.f14914a.f13858b.remove(this.j);
            }
        }
    }

    private C1585hc(C1610ic c1610ic, Xc xc) {
        this(c1610ic, new C1634jc(c1610ic.f14914a.f13857a), new SystemTimeProvider(), F0.g().c(), F0.g().b(), H2.a(c1610ic.f14914a.f13857a), xc, new H0.c());
    }

    C1585hc(C1610ic c1610ic, C1634jc c1634jc, SystemTimeProvider systemTimeProvider, E e2, C1938w c1938w, H2 h2, Xc xc, H0.c cVar) {
        this.j = new a();
        this.f14842a = c1610ic;
        this.f14843b = c1634jc;
        this.f14844c = systemTimeProvider;
        this.f14845d = c1610ic.f14918e;
        this.f14846e = e2;
        this.f14849h = c1938w;
        this.f14847f = h2;
        this.f14848g = xc;
        h2.a().a(cVar.a(c1610ic.f14914a.f13858b, xc, h2.a()));
    }

    public void a(C1709mc c1709mc) {
        this.f14845d = c1709mc;
        this.f14848g.a(c1709mc == null ? null : c1709mc.m);
        a();
    }
}
