package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C1795q;
import com.yandex.metrica.impl.ob.r;
/* renamed from: com.yandex.metrica.impl.ob.o2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1749o2 {

    /* renamed from: a  reason: collision with root package name */
    private final C1795q f15311a;

    /* renamed from: b  reason: collision with root package name */
    private final Ll<C1623j1> f15312b;

    /* renamed from: c  reason: collision with root package name */
    private final C1795q.b f15313c;

    /* renamed from: d  reason: collision with root package name */
    private final C1795q.b f15314d;

    /* renamed from: e  reason: collision with root package name */
    private final r f15315e;

    /* renamed from: f  reason: collision with root package name */
    private final C1771p f15316f;

    /* renamed from: com.yandex.metrica.impl.ob.o2$a */
    /* loaded from: classes5.dex */
    class a implements C1795q.b {

        /* renamed from: com.yandex.metrica.impl.ob.o2$a$a  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class C0356a implements E1<C1623j1> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Activity f15318a;

            C0356a(Activity activity) {
                this.f15318a = activity;
            }

            @Override // com.yandex.metrica.impl.ob.E1
            public void b(C1623j1 c1623j1) {
                C1749o2.a(C1749o2.this, this.f15318a, c1623j1);
            }
        }

        a() {
        }

        @Override // com.yandex.metrica.impl.ob.C1795q.b
        public void a(Activity activity, C1795q.a aVar) {
            C1749o2.this.f15312b.a((E1) new C0356a(activity));
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.o2$b */
    /* loaded from: classes5.dex */
    class b implements C1795q.b {

        /* renamed from: com.yandex.metrica.impl.ob.o2$b$a */
        /* loaded from: classes5.dex */
        class a implements E1<C1623j1> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ Activity f15321a;

            a(Activity activity) {
                this.f15321a = activity;
            }

            @Override // com.yandex.metrica.impl.ob.E1
            public void b(C1623j1 c1623j1) {
                C1749o2.b(C1749o2.this, this.f15321a, c1623j1);
            }
        }

        b() {
        }

        @Override // com.yandex.metrica.impl.ob.C1795q.b
        public void a(Activity activity, C1795q.a aVar) {
            C1749o2.this.f15312b.a((E1) new a(activity));
        }
    }

    public C1749o2(C1795q c1795q, ICommonExecutor iCommonExecutor, C1771p c1771p) {
        this(c1795q, c1771p, new Ll(iCommonExecutor), new r());
    }

    public void b(Activity activity, K0 k0) {
        if (activity != null) {
            this.f15316f.a(activity);
        }
        if (this.f15315e.a(activity, r.a.RESUMED)) {
            k0.a(activity);
        }
    }

    C1749o2(C1795q c1795q, C1771p c1771p, Ll<C1623j1> ll, r rVar) {
        this.f15311a = c1795q;
        this.f15316f = c1771p;
        this.f15312b = ll;
        this.f15315e = rVar;
        this.f15313c = new a();
        this.f15314d = new b();
    }

    public C1795q.c a() {
        this.f15311a.a(this.f15313c, C1795q.a.RESUMED);
        this.f15311a.a(this.f15314d, C1795q.a.PAUSED);
        return this.f15311a.a();
    }

    static void b(C1749o2 c1749o2, Activity activity, K0 k0) {
        if (c1749o2.f15315e.a(activity, r.a.PAUSED)) {
            ((C1623j1) k0).b(activity);
        }
    }

    public void a(Activity activity, K0 k0) {
        if (activity != null) {
            this.f15316f.a(activity);
        }
        if (this.f15315e.a(activity, r.a.PAUSED)) {
            k0.b(activity);
        }
    }

    public void a(C1623j1 c1623j1) {
        this.f15312b.a((Ll<C1623j1>) c1623j1);
    }

    static void a(C1749o2 c1749o2, Activity activity, K0 k0) {
        if (c1749o2.f15315e.a(activity, r.a.RESUMED)) {
            ((C1623j1) k0).a(activity);
        }
    }
}
