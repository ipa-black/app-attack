package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.appodeal.ads.AppodealNetworks;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
/* renamed from: com.yandex.metrica.impl.ob.xb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1974xb implements Eb {

    /* renamed from: a  reason: collision with root package name */
    private final Object f16022a;

    /* renamed from: b  reason: collision with root package name */
    private C1790pi f16023b;

    /* renamed from: c  reason: collision with root package name */
    private volatile FutureTask<Void> f16024c;

    /* renamed from: d  reason: collision with root package name */
    private final g f16025d;

    /* renamed from: e  reason: collision with root package name */
    private final g f16026e;

    /* renamed from: f  reason: collision with root package name */
    private final g f16027f;

    /* renamed from: g  reason: collision with root package name */
    private final InterfaceC1926vb f16028g;

    /* renamed from: h  reason: collision with root package name */
    private final InterfaceC1926vb f16029h;
    private final InterfaceC1926vb i;
    private Context j;
    private ICommonExecutor k;
    private volatile C2022zb l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.xb$a */
    /* loaded from: classes5.dex */
    public class a implements Callable<Void> {
        a() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C1974xb c1974xb = C1974xb.this;
            C1902ub a2 = C1974xb.a(c1974xb, c1974xb.j);
            C1974xb c1974xb2 = C1974xb.this;
            C1902ub b2 = C1974xb.b(c1974xb2, c1974xb2.j);
            C1974xb c1974xb3 = C1974xb.this;
            c1974xb.l = new C2022zb(a2, b2, C1974xb.a(c1974xb3, c1974xb3.j, new Fb()));
            return null;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.xb$b */
    /* loaded from: classes5.dex */
    class b implements Callable<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f16031a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Gb f16032b;

        b(Context context, Gb gb) {
            this.f16031a = context;
            this.f16032b = gb;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            C2022zb c2022zb = C1974xb.this.l;
            C1974xb c1974xb = C1974xb.this;
            C1902ub a2 = C1974xb.a(c1974xb, C1974xb.a(c1974xb, this.f16031a), c2022zb.a());
            C1974xb c1974xb2 = C1974xb.this;
            C1902ub a3 = C1974xb.a(c1974xb2, C1974xb.b(c1974xb2, this.f16031a), c2022zb.b());
            C1974xb c1974xb3 = C1974xb.this;
            c1974xb.l = new C2022zb(a2, a3, C1974xb.a(c1974xb3, C1974xb.a(c1974xb3, this.f16031a, this.f16032b), c2022zb.c()));
            return null;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.xb$c */
    /* loaded from: classes5.dex */
    public static class c implements g {
        @Override // com.yandex.metrica.impl.ob.C1974xb.g
        public boolean a(C1790pi c1790pi) {
            return true;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.xb$d */
    /* loaded from: classes5.dex */
    public static class d implements g {
        @Override // com.yandex.metrica.impl.ob.C1974xb.g
        public boolean a(C1790pi c1790pi) {
            return c1790pi != null && (c1790pi.f().v || !c1790pi.q());
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.xb$e */
    /* loaded from: classes5.dex */
    public static class e implements g {
        @Override // com.yandex.metrica.impl.ob.C1974xb.g
        public boolean a(C1790pi c1790pi) {
            return false;
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.xb$f */
    /* loaded from: classes5.dex */
    public static class f implements g {
        @Override // com.yandex.metrica.impl.ob.C1974xb.g
        public boolean a(C1790pi c1790pi) {
            return c1790pi != null && c1790pi.f().v;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.xb$g */
    /* loaded from: classes5.dex */
    public interface g {
        boolean a(C1790pi c1790pi);
    }

    /* renamed from: com.yandex.metrica.impl.ob.xb$h */
    /* loaded from: classes5.dex */
    public static class h implements g {
        @Override // com.yandex.metrica.impl.ob.C1974xb.g
        public boolean a(C1790pi c1790pi) {
            return c1790pi != null && (c1790pi.f().n || !c1790pi.q());
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.xb$i */
    /* loaded from: classes5.dex */
    public static class i implements g {
        @Override // com.yandex.metrica.impl.ob.C1974xb.g
        public boolean a(C1790pi c1790pi) {
            return c1790pi != null && c1790pi.f().n;
        }
    }

    public C1974xb(g gVar, g gVar2, g gVar3, ICommonExecutor iCommonExecutor, String str) {
        this(gVar, gVar2, gVar3, iCommonExecutor, new C1950wb(new Kb("google")), new C1950wb(new Kb("huawei")), new C1950wb(new Kb(AppodealNetworks.YANDEX)), str);
    }

    static C1902ub a(C1974xb c1974xb, C1902ub c1902ub, C1902ub c1902ub2) {
        c1974xb.getClass();
        U0 u0 = c1902ub.f15815b;
        return u0 != U0.OK ? new C1902ub(c1902ub2.f15814a, u0, c1902ub.f15816c) : c1902ub;
    }

    public void c(Context context) {
        this.j = context.getApplicationContext();
    }

    C1974xb(g gVar, g gVar2, g gVar3, ICommonExecutor iCommonExecutor, InterfaceC1926vb interfaceC1926vb, InterfaceC1926vb interfaceC1926vb2, InterfaceC1926vb interfaceC1926vb3, String str) {
        this.f16022a = new Object();
        this.f16025d = gVar;
        this.f16026e = gVar2;
        this.f16027f = gVar3;
        this.f16028g = interfaceC1926vb;
        this.f16029h = interfaceC1926vb2;
        this.i = interfaceC1926vb3;
        this.k = iCommonExecutor;
        this.l = new C2022zb();
        String str2 = "[AdvertisingIdGetter" + str + "]";
    }

    private void c() {
        boolean z;
        if (this.j != null) {
            synchronized (this) {
                U0 u0 = this.l.a().f15815b;
                U0 u02 = U0.UNKNOWN;
                if (u0 != u02) {
                    z = this.l.b().f15815b != u02;
                }
            }
            if (z) {
                return;
            }
            a(this.j);
        }
    }

    public void b(Context context) {
        this.j = context.getApplicationContext();
        if (this.f16024c == null) {
            synchronized (this.f16022a) {
                if (this.f16024c == null) {
                    this.f16024c = new FutureTask<>(new a());
                    this.k.execute(this.f16024c);
                }
            }
        }
    }

    static C1902ub b(C1974xb c1974xb, Context context) {
        if (c1974xb.f16026e.a(c1974xb.f16023b)) {
            return c1974xb.f16029h.a(context);
        }
        C1790pi c1790pi = c1974xb.f16023b;
        if (c1790pi != null && c1790pi.q()) {
            if (!c1974xb.f16023b.f().v) {
                return new C1902ub(null, U0.FEATURE_DISABLED, "startup forbade ads identifiers collecting");
            }
            return new C1902ub(null, U0.UNKNOWN, "identifiers collecting is forbidden for unknown reason");
        }
        return new C1902ub(null, U0.NO_STARTUP, "startup has not been received yet");
    }

    @Override // com.yandex.metrica.impl.ob.Eb
    @Deprecated
    public Boolean b() {
        c();
        C1878tb c1878tb = this.l.a().f15814a;
        if (c1878tb == null) {
            return null;
        }
        return c1878tb.f15759c;
    }

    public void a(Context context, C1790pi c1790pi) {
        this.f16023b = c1790pi;
        b(context);
    }

    public void a(C1790pi c1790pi) {
        this.f16023b = c1790pi;
    }

    public C2022zb a(Context context) {
        b(context);
        try {
            this.f16024c.get();
        } catch (InterruptedException | ExecutionException unused) {
        }
        return this.l;
    }

    public C2022zb a(Context context, Gb gb) {
        FutureTask futureTask = new FutureTask(new b(context.getApplicationContext(), gb));
        this.k.execute(futureTask);
        try {
            futureTask.get();
        } catch (InterruptedException | ExecutionException unused) {
        }
        return this.l;
    }

    static C1902ub a(C1974xb c1974xb, Context context) {
        if (c1974xb.f16025d.a(c1974xb.f16023b)) {
            return c1974xb.f16028g.a(context);
        }
        C1790pi c1790pi = c1974xb.f16023b;
        if (c1790pi != null && c1790pi.q()) {
            if (!c1974xb.f16023b.f().n) {
                return new C1902ub(null, U0.FEATURE_DISABLED, "startup forbade ads identifiers collecting");
            }
            return new C1902ub(null, U0.UNKNOWN, "identifiers collecting is forbidden for unknown reason");
        }
        return new C1902ub(null, U0.NO_STARTUP, "startup has not been received yet");
    }

    static C1902ub a(C1974xb c1974xb, Context context, Gb gb) {
        if (c1974xb.f16027f.a(c1974xb.f16023b)) {
            return c1974xb.i.a(context, gb);
        }
        return new C1902ub(null, U0.UNKNOWN, "identifiers collecting is forbidden for unknown reason");
    }

    @Override // com.yandex.metrica.impl.ob.Eb
    @Deprecated
    public String a() {
        c();
        C1878tb c1878tb = this.l.a().f15814a;
        if (c1878tb == null) {
            return null;
        }
        return c1878tb.f15758b;
    }
}
