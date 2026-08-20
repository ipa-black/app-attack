package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.Location;
import com.yandex.metrica.impl.ob.C1790pi;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.vc  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1927vc {
    private static volatile C1927vc n;
    public static final long o = TimeUnit.MINUTES.toMillis(1);
    private static final Object p = new Object();
    public static final /* synthetic */ int q = 0;

    /* renamed from: c  reason: collision with root package name */
    private C1709mc f15912c;

    /* renamed from: d  reason: collision with root package name */
    private C1790pi f15913d;

    /* renamed from: e  reason: collision with root package name */
    private Mc f15914e;

    /* renamed from: f  reason: collision with root package name */
    private c f15915f;

    /* renamed from: g  reason: collision with root package name */
    private Runnable f15916g;

    /* renamed from: h  reason: collision with root package name */
    private final Sb f15917h;
    private final U7 i;
    private final T7 j;
    private final Ed k;

    /* renamed from: b  reason: collision with root package name */
    private boolean f15911b = false;
    private boolean l = false;
    private final Object m = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final WeakHashMap<Object, Object> f15910a = new WeakHashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.vc$a */
    /* loaded from: classes5.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1790pi f15918a;

        a(C1790pi c1790pi) {
            this.f15918a = c1790pi;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C1927vc.this.f15914e != null) {
                C1927vc.this.f15914e.a(this.f15918a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.vc$b */
    /* loaded from: classes5.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1709mc f15920a;

        b(C1709mc c1709mc) {
            this.f15920a = c1709mc;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C1927vc.this.f15914e != null) {
                C1927vc.this.f15914e.a(this.f15920a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.vc$c */
    /* loaded from: classes5.dex */
    public static class c {
        c() {
        }
    }

    C1927vc(Context context, C1951wc c1951wc, c cVar, C1790pi c1790pi) {
        this.f15917h = new Sb(context, c1951wc.a(), c1951wc.d());
        this.i = c1951wc.c();
        this.j = c1951wc.b();
        this.k = c1951wc.e();
        this.f15915f = cVar;
        this.f15913d = c1790pi;
    }

    public void b(Object obj) {
        synchronized (this.m) {
            this.f15910a.remove(obj);
            b();
        }
    }

    public static C1927vc a(Context context) {
        if (n == null) {
            synchronized (p) {
                if (n == null) {
                    Context applicationContext = context.getApplicationContext();
                    n = new C1927vc(applicationContext, new C1951wc(applicationContext), new c(), new C1790pi.b(applicationContext).a());
                }
            }
        }
        return n;
    }

    private void b() {
        if (this.l) {
            if (!this.f15911b || this.f15910a.isEmpty()) {
                this.f15917h.f13858b.execute(new RunnableC1855sc(this));
                Runnable runnable = this.f15916g;
                if (runnable != null) {
                    this.f15917h.f13858b.remove(runnable);
                }
                this.l = false;
            }
        } else if (!this.f15911b || this.f15910a.isEmpty()) {
        } else {
            if (this.f15914e == null) {
                c cVar = this.f15915f;
                Nc nc = new Nc(this.f15917h, this.i, this.j, this.f15913d, this.f15912c);
                cVar.getClass();
                this.f15914e = new Mc(nc);
            }
            this.f15917h.f13858b.execute(new RunnableC1879tc(this));
            if (this.f15916g == null) {
                RunnableC1903uc runnableC1903uc = new RunnableC1903uc(this);
                this.f15916g = runnableC1903uc;
                this.f15917h.f13858b.executeDelayed(runnableC1903uc, o);
            }
            this.f15917h.f13858b.execute(new RunnableC1831rc(this));
            this.l = true;
        }
    }

    public void a(Object obj) {
        synchronized (this.m) {
            this.f15910a.put(obj, null);
            b();
        }
    }

    public Location a() {
        Mc mc = this.f15914e;
        if (mc == null) {
            return null;
        }
        return mc.b();
    }

    public void a(boolean z) {
        synchronized (this.m) {
            if (this.f15911b != z) {
                this.f15911b = z;
                this.k.a(z);
                this.f15917h.f13859c.a(this.k.a());
                b();
            }
        }
    }

    public void a(C1790pi c1790pi, C1709mc c1709mc) {
        synchronized (this.m) {
            this.f15913d = c1790pi;
            this.k.a(c1790pi);
            this.f15917h.f13859c.a(this.k.a());
            this.f15917h.f13858b.execute(new a(c1790pi));
            if (!A2.a(this.f15912c, c1709mc)) {
                a(c1709mc);
            }
        }
    }

    public void a(C1709mc c1709mc) {
        synchronized (this.m) {
            this.f15912c = c1709mc;
        }
        this.f15917h.f13858b.execute(new b(c1709mc));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(C1927vc c1927vc) {
        c1927vc.f15917h.f13858b.executeDelayed(c1927vc.f15916g, o);
    }
}
