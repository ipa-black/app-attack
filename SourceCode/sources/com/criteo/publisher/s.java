package com.criteo.publisher;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import com.criteo.publisher.a.a;
import com.criteo.publisher.advancednative.ImageLoader;
import com.criteo.publisher.advancednative.RendererHelper;
import com.criteo.publisher.f0.a0;
import com.criteo.publisher.f0.b0;
import com.criteo.publisher.f0.r;
import com.criteo.publisher.f0.u;
import com.criteo.publisher.logging.l;
import com.criteo.publisher.n0.b;
import com.criteo.publisher.s;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.squareup.picasso.Picasso;
import java.util.Arrays;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.jvm.functions.Function0;
/* compiled from: DependencyProvider.java */
/* loaded from: classes2.dex */
public class s {

    /* renamed from: d  reason: collision with root package name */
    protected static s f9243d;

    /* renamed from: a  reason: collision with root package name */
    private final ConcurrentMap<Class<?>, Object> f9244a = new ConcurrentHashMap();

    /* renamed from: b  reason: collision with root package name */
    private Application f9245b;

    /* renamed from: c  reason: collision with root package name */
    private String f9246c;

    /* compiled from: DependencyProvider.java */
    /* loaded from: classes2.dex */
    public interface a<T> {
        T a();
    }

    protected s() {
    }

    public static synchronized s c() {
        s sVar;
        synchronized (s.class) {
            if (f9243d == null) {
                f9243d = new s();
            }
            sVar = f9243d;
        }
        return sVar;
    }

    public void a(Application application) {
        this.f9245b = application;
        a();
    }

    public void a(String str) {
        this.f9246c = str;
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        try {
            c().a();
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private void a() {
        if (this.f9245b == null) {
            throw new q("Application reference is required");
        }
    }

    private void b() {
        if (com.criteo.publisher.n0.s.a((CharSequence) this.f9246c)) {
            throw new q("Criteo Publisher Id is required");
        }
    }

    public Application h0() {
        a();
        return this.f9245b;
    }

    public Context v0() {
        return h0().getApplicationContext();
    }

    public String x0() {
        b();
        return this.f9246c;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.k0.g M() {
        return new com.criteo.publisher.k0.g(m0(), H0());
    }

    public com.criteo.publisher.k0.g S0() {
        return (com.criteo.publisher.k0.g) a(com.criteo.publisher.k0.g.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda8
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.k0.g M;
                M = s.this.M();
                return M;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.n0.b g() {
        return new com.criteo.publisher.n0.b(v0(), h1(), d1());
    }

    public com.criteo.publisher.n0.b d0() {
        return (com.criteo.publisher.n0.b) a(com.criteo.publisher.n0.b.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda5
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.n0.b g2;
                g2 = s.this.g();
                return g2;
            }
        });
    }

    public b.f d1() {
        return (b.f) a(b.f.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda4
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                return new b.f();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.n0.c h() {
        return new com.criteo.publisher.n0.c(v0(), A0());
    }

    public com.criteo.publisher.n0.c e0() {
        return (com.criteo.publisher.n0.c) a(com.criteo.publisher.n0.c.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda44
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.n0.c h2;
                h2 = s.this.h();
                return h2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.n0.k w() {
        return new com.criteo.publisher.n0.k(v0());
    }

    public com.criteo.publisher.n0.k A0() {
        return (com.criteo.publisher.n0.k) a(com.criteo.publisher.n0.k.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda12
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.n0.k w;
                w = s.this.w();
                return w;
            }
        });
    }

    public Executor h1() {
        return (Executor) a(ThreadPoolExecutor.class, new com.criteo.publisher.e0.d());
    }

    public ScheduledExecutorService e1() {
        return (ScheduledExecutorService) a(ScheduledExecutorService.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda50
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                ScheduledExecutorService newSingleThreadScheduledExecutor;
                newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
                return newSingleThreadScheduledExecutor;
            }
        });
    }

    public com.criteo.publisher.e0.c c1() {
        return (com.criteo.publisher.e0.c) a(com.criteo.publisher.e0.c.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda18
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                return new com.criteo.publisher.e0.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.model.t o() {
        return new com.criteo.publisher.model.t(g1(), H0());
    }

    public com.criteo.publisher.model.t q0() {
        return (com.criteo.publisher.model.t) a(com.criteo.publisher.model.t.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda32
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.model.t o;
                o = s.this.o();
                return o;
            }
        });
    }

    public i p0() {
        return (i) a(i.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda29
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                return new u();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.l0.c Z() {
        return new com.criteo.publisher.l0.c(v0());
    }

    public com.criteo.publisher.l0.c l1() {
        return (com.criteo.publisher.l0.c) a(com.criteo.publisher.l0.c.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda0
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.l0.c Z;
                Z = s.this.Z();
                return Z;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ e l() {
        return new e(new com.criteo.publisher.d0.a(A0()), q0(), p0(), c0(), l0(), I0(), j0(), O0(), a1(), s0());
    }

    public e k0() {
        return (e) a(e.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda3
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                e l;
                l = s.this.l();
                return l;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.model.u v() {
        return new com.criteo.publisher.model.u(v0(), c1());
    }

    public com.criteo.publisher.model.u z0() {
        return (com.criteo.publisher.model.u) a(com.criteo.publisher.model.u.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda31
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.model.u v;
                v = s.this.v();
                return v;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.model.g f() {
        return new com.criteo.publisher.model.g(A0(), F0());
    }

    public com.criteo.publisher.model.g c0() {
        return (com.criteo.publisher.model.g) a(com.criteo.publisher.model.g.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda19
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.model.g f2;
                f2 = s.this.f();
                return f2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.a.a i() {
        return new com.criteo.publisher.a.a(v0(), d0(), p0(), S0(), l1(), z0(), h1());
    }

    public com.criteo.publisher.a.a f0() {
        return (com.criteo.publisher.a.a) a(com.criteo.publisher.a.a.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda45
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                a i;
                i = s.this.i();
                return i;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.n0.e j() {
        return new com.criteo.publisher.n0.e(f0(), k0());
    }

    public com.criteo.publisher.n0.e g0() {
        return (com.criteo.publisher.n0.e) a(com.criteo.publisher.n0.e.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda11
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.n0.e j;
                j = s.this.j();
                return j;
            }
        });
    }

    public com.criteo.publisher.n0.g m0() {
        return (com.criteo.publisher.n0.g) a(com.criteo.publisher.n0.g.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda10
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                return new com.criteo.publisher.n0.g();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.model.p n() {
        return new com.criteo.publisher.model.p(v0(), x0(), z0(), d0(), l1(), j1(), m0(), F0(), w0(), k1());
    }

    public com.criteo.publisher.model.p n0() {
        return (com.criteo.publisher.model.p) a(com.criteo.publisher.model.p.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda35
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.model.p n;
                n = s.this.n();
                return n;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.c0.d Y() {
        return new com.criteo.publisher.c0.d(p0());
    }

    public com.criteo.publisher.c0.d j1() {
        return (com.criteo.publisher.c0.d) a(com.criteo.publisher.c0.d.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda53
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.c0.d Y;
                Y = s.this.Y();
                return Y;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.model.x O() {
        return new com.criteo.publisher.model.x(v0(), x0(), m0(), F0(), d0());
    }

    public com.criteo.publisher.model.x V0() {
        return (com.criteo.publisher.model.x) a(com.criteo.publisher.model.x.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda48
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.model.x O;
                O = s.this.O();
                return O;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.k0.b m() {
        return new com.criteo.publisher.k0.b(n0(), V0(), p0(), S0(), h1());
    }

    public com.criteo.publisher.k0.b l0() {
        return (com.criteo.publisher.k0.b) a(com.criteo.publisher.k0.b.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda13
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.k0.b m;
                m = s.this.m();
                return m;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.k0.e D() {
        return new com.criteo.publisher.k0.e(S0(), n0(), p0(), h1(), e1(), q0());
    }

    public com.criteo.publisher.k0.e I0() {
        return (com.criteo.publisher.k0.e) a(com.criteo.publisher.k0.e.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda55
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.k0.e D;
                D = s.this.D();
                return D;
            }
        });
    }

    public com.criteo.publisher.c0.a j0() {
        return (com.criteo.publisher.c0.a) a(com.criteo.publisher.c0.a.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda37
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.c0.a k;
                k = s.this.k();
                return k;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.c0.a k() {
        com.criteo.publisher.c0.b bVar = new com.criteo.publisher.c0.b();
        bVar.a(new com.criteo.publisher.c0.c(a1()));
        bVar.a(new com.criteo.publisher.f0.l(L0(), P0(), p0(), q0(), s0(), h1()));
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.advancednative.l K() {
        return new com.criteo.publisher.advancednative.l(m1(), new com.criteo.publisher.advancednative.i(S0(), h1(), c1()), o0(), new com.criteo.publisher.advancednative.f(U0(), i1(), c1()), b0(), b1());
    }

    public com.criteo.publisher.advancednative.l Q0() {
        return (com.criteo.publisher.advancednative.l) a(com.criteo.publisher.advancednative.l.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda14
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.advancednative.l K;
                K = s.this.K();
                return K;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.criteo.publisher.advancednative.q a0() {
        return new com.criteo.publisher.advancednative.q(new com.criteo.publisher.advancednative.o());
    }

    public com.criteo.publisher.advancednative.q m1() {
        return (com.criteo.publisher.advancednative.q) a(com.criteo.publisher.advancednative.q.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda60
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.advancednative.q a0;
                a0 = s.a0();
                return a0;
            }
        });
    }

    public com.criteo.publisher.advancednative.e o0() {
        return (com.criteo.publisher.advancednative.e) a(com.criteo.publisher.advancednative.e.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda6
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                return new com.criteo.publisher.advancednative.e();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.b0.b N() {
        return new com.criteo.publisher.b0.b(v0());
    }

    public com.criteo.publisher.b0.b U0() {
        return (com.criteo.publisher.b0.b) a(com.criteo.publisher.b0.b.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda59
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.b0.b N;
                N = s.this.N();
                return N;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.advancednative.b e() {
        return new com.criteo.publisher.advancednative.b(m0(), e0());
    }

    public com.criteo.publisher.advancednative.b b0() {
        return (com.criteo.publisher.advancednative.b) a(com.criteo.publisher.advancednative.b.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda52
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.advancednative.b e2;
                e2 = s.this.e();
                return e2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Picasso L() {
        return new Picasso.Builder(v0()).build();
    }

    public Picasso R0() {
        return (Picasso) a(Picasso.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda43
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                Picasso L;
                L = s.this.L();
                return L;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ImageLoader u() {
        return new com.criteo.publisher.advancednative.g(R0(), i0());
    }

    public ImageLoader y0() {
        return (ImageLoader) a(ImageLoader.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda22
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                ImageLoader u;
                u = s.this.u();
                return u;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.advancednative.h z() {
        return new com.criteo.publisher.advancednative.h(y0());
    }

    public com.criteo.publisher.advancednative.h D0() {
        return (com.criteo.publisher.advancednative.h) a(com.criteo.publisher.advancednative.h.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda47
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.advancednative.h z;
                z = s.this.z();
                return z;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ RendererHelper U() {
        return new RendererHelper(D0(), c1());
    }

    public RendererHelper b1() {
        return (RendererHelper) a(RendererHelper.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda23
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                RendererHelper U;
                U = s.this.U();
                return U;
            }
        });
    }

    public com.criteo.publisher.e0.a i0() {
        return (com.criteo.publisher.e0.a) a(com.criteo.publisher.e0.a.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda46
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                return new com.criteo.publisher.e0.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ SharedPreferences W() {
        return v0().getSharedPreferences("com.criteo.publisher.sdkSharedPreferences", 0);
    }

    public SharedPreferences g1() {
        return (SharedPreferences) a(SharedPreferences.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda61
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                SharedPreferences W;
                W = s.this.W();
                return W;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.i0.c A() {
        return new com.criteo.publisher.i0.c(g1(), E0());
    }

    public com.criteo.publisher.i0.c F0() {
        return (com.criteo.publisher.i0.c) a(com.criteo.publisher.i0.c.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda34
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.i0.c A;
                A = s.this.A();
                return A;
            }
        });
    }

    public com.criteo.publisher.i0.b E0() {
        return (com.criteo.publisher.i0.b) a(com.criteo.publisher.i0.b.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda27
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                return new com.criteo.publisher.i0.b();
            }
        });
    }

    protected <T> T a(Class<T> cls, final a<T> aVar) {
        ConcurrentMap<Class<?>, Object> concurrentMap = this.f9244a;
        Objects.requireNonNull(aVar);
        return (T) com.criteo.publisher.n0.m.a(concurrentMap, cls, new Function0() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda42
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return s.a.this.a();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j s() {
        return new j(k0(), p0(), c1());
    }

    public j u0() {
        return (j) a(j.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda30
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                j s;
                s = s.this.s();
                return s;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.h0.c y() {
        return new com.criteo.publisher.h0.c(Arrays.asList(new com.criteo.publisher.h0.e(), new com.criteo.publisher.h0.b(e0(), A0()), new com.criteo.publisher.h0.f()), F0());
    }

    public com.criteo.publisher.h0.c C0() {
        return (com.criteo.publisher.h0.c) a(com.criteo.publisher.h0.c.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda1
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.h0.c y;
                y = s.this.y();
                return y;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.j0.a B() {
        return new com.criteo.publisher.j0.a(v0(), i1());
    }

    public com.criteo.publisher.j0.a G0() {
        return (com.criteo.publisher.j0.a) a(com.criteo.publisher.j0.a.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda41
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.j0.a B;
                B = s.this.B();
                return B;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.a0.b X() {
        return new com.criteo.publisher.a0.b(v0());
    }

    public com.criteo.publisher.a0.b i1() {
        return (com.criteo.publisher.a0.b) a(com.criteo.publisher.a0.b.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda36
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.a0.b X;
                X = s.this.X();
                return X;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.f0.w I() {
        return new com.criteo.publisher.f0.w(M0(), S0(), m0(), q0(), h1());
    }

    public com.criteo.publisher.f0.w O0() {
        return (com.criteo.publisher.f0.w) a(com.criteo.publisher.f0.w.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda2
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.f0.w I;
                I = s.this.I();
                return I;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.f0.x J() {
        return new com.criteo.publisher.f0.x(M0());
    }

    public com.criteo.publisher.f0.x P0() {
        return (com.criteo.publisher.f0.x) a(com.criteo.publisher.f0.x.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda9
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.f0.x J;
                J = s.this.J();
                return J;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.f0.u G() {
        return new u.a(a(N0()));
    }

    public com.criteo.publisher.f0.u M0() {
        return (com.criteo.publisher.f0.u) a(com.criteo.publisher.f0.u.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda51
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.f0.u G;
                G = s.this.G();
                return G;
            }
        });
    }

    private <T> com.criteo.publisher.f0.k<T> a(a0<T> a0Var) {
        return new b0(new com.criteo.publisher.f0.z(v0(), H0(), a0Var), a0Var).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.f0.v H() {
        return new com.criteo.publisher.f0.v(m0());
    }

    public com.criteo.publisher.f0.v N0() {
        return (com.criteo.publisher.f0.v) a(com.criteo.publisher.f0.v.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda21
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.f0.v H;
                H = s.this.H();
                return H;
            }
        });
    }

    public r L0() {
        return (r) a(r.class, new com.criteo.publisher.f0.s(v0(), K0(), m0()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.f0.q F() {
        return new com.criteo.publisher.f0.q(H0());
    }

    public com.criteo.publisher.f0.q K0() {
        return (com.criteo.publisher.f0.q) a(com.criteo.publisher.f0.q.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda54
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.f0.q F;
                F = s.this.F();
                return F;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.n0.l C() {
        return new com.criteo.publisher.n0.l(B0());
    }

    public com.criteo.publisher.n0.l H0() {
        return (com.criteo.publisher.n0.l) a(com.criteo.publisher.n0.l.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda49
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.n0.l C;
                C = s.this.C();
                return C;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Gson x() {
        return new GsonBuilder().registerTypeAdapterFactory(com.criteo.publisher.n0.j.a()).create();
    }

    public Gson B0() {
        return (Gson) a(Gson.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda24
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                Gson x;
                x = s.x();
                return x;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.logging.h E() {
        return new com.criteo.publisher.logging.h(Arrays.asList(new com.criteo.publisher.g0.a("ConsoleHandler", new Function0() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda56
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return s.this.t0();
            }
        }), new com.criteo.publisher.g0.a("RemoteHandler", new Function0() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda57
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return s.this.W0();
            }
        })));
    }

    public com.criteo.publisher.logging.h J0() {
        return (com.criteo.publisher.logging.h) a(com.criteo.publisher.logging.h.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda40
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.logging.h E;
                E = s.this.E();
                return E;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.logging.c r() {
        return new com.criteo.publisher.logging.c(m0());
    }

    public com.criteo.publisher.logging.c t0() {
        return (com.criteo.publisher.logging.c) a(com.criteo.publisher.logging.c.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda38
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.logging.c r;
                r = s.this.r();
                return r;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.context.b t() {
        return new com.criteo.publisher.context.b(v0(), r0(), e0(), f1());
    }

    public com.criteo.publisher.context.b w0() {
        return (com.criteo.publisher.context.b) a(com.criteo.publisher.context.b.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda7
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.context.b t;
                t = s.this.t();
                return t;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.context.a p() {
        return new com.criteo.publisher.context.a(v0());
    }

    public com.criteo.publisher.context.a r0() {
        return (com.criteo.publisher.context.a) a(com.criteo.publisher.context.a.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda17
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.context.a p;
                p = s.this.p();
                return p;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ z V() {
        return new z(p0(), j1());
    }

    public z f1() {
        return (z) a(z.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda20
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                z V;
                V = s.this.V();
                return V;
            }
        });
    }

    public com.criteo.publisher.context.d k1() {
        return (com.criteo.publisher.context.d) a(com.criteo.publisher.context.d.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda15
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                return new com.criteo.publisher.context.d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.logging.l R() {
        return new l.a(a(Z0()));
    }

    public com.criteo.publisher.logging.l Y0() {
        return (com.criteo.publisher.logging.l) a(com.criteo.publisher.logging.l.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda39
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.logging.l R;
                R = s.this.R();
                return R;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.logging.m S() {
        return new com.criteo.publisher.logging.m(m0());
    }

    public com.criteo.publisher.logging.m Z0() {
        return (com.criteo.publisher.logging.m) a(com.criteo.publisher.logging.m.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda25
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.logging.m S;
                S = s.this.S();
                return S;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.logging.k Q() {
        return new com.criteo.publisher.logging.k(m0(), v0(), d0(), f1(), F0(), p0(), T0());
    }

    public com.criteo.publisher.logging.k X0() {
        return (com.criteo.publisher.logging.k) a(com.criteo.publisher.logging.k.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda33
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.logging.k Q;
                Q = s.this.Q();
                return Q;
            }
        });
    }

    public com.criteo.publisher.logging.i T0() {
        return (com.criteo.publisher.logging.i) a(com.criteo.publisher.logging.i.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda26
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                return new com.criteo.publisher.logging.i();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.logging.j P() {
        return new com.criteo.publisher.logging.j(X0(), Y0(), q0(), h1(), s0());
    }

    public com.criteo.publisher.logging.j W0() {
        return (com.criteo.publisher.logging.j) a(com.criteo.publisher.logging.j.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda58
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.logging.j P;
                P = s.this.P();
                return P;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.logging.n T() {
        return new com.criteo.publisher.logging.n(Y0(), S0(), m0(), d0(), h1());
    }

    public com.criteo.publisher.logging.n a1() {
        return (com.criteo.publisher.logging.n) a(com.criteo.publisher.logging.n.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda28
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.logging.n T;
                T = s.this.T();
                return T;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.l0.a q() {
        return new com.criteo.publisher.l0.a(g1());
    }

    public com.criteo.publisher.l0.a s0() {
        return (com.criteo.publisher.l0.a) a(com.criteo.publisher.l0.a.class, new a() { // from class: com.criteo.publisher.s$$ExternalSyntheticLambda16
            @Override // com.criteo.publisher.s.a
            public final Object a() {
                com.criteo.publisher.l0.a q;
                q = s.this.q();
                return q;
            }
        });
    }
}
