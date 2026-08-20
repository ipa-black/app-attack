package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.coreutils.services.ActivationBarrier;
import com.yandex.metrica.coreutils.services.UtilityServiceLocator;
import com.yandex.metrica.impl.ob.C1415ah;
import com.yandex.metrica.impl.ob.InterfaceC1533fa;
/* renamed from: com.yandex.metrica.impl.ob.dh  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1490dh {

    /* renamed from: a  reason: collision with root package name */
    private final C1440bh f14606a;

    /* renamed from: b  reason: collision with root package name */
    private final ProtobufStateStorage<C1515eh> f14607b;

    /* renamed from: c  reason: collision with root package name */
    private final C1965x2 f14608c;

    /* renamed from: d  reason: collision with root package name */
    private final ICommonExecutor f14609d;

    /* renamed from: e  reason: collision with root package name */
    private final ActivationBarrier.IActivationBarrierCallback f14610e;

    /* renamed from: f  reason: collision with root package name */
    private final ActivationBarrier f14611f;

    /* renamed from: g  reason: collision with root package name */
    private final C1415ah f14612g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f14613h;
    private C1466ci i;
    private boolean j;
    private long k;
    private long l;
    private long m;
    private boolean n;
    private boolean o;
    private boolean p;
    private final Object q;

    /* renamed from: com.yandex.metrica.impl.ob.dh$a */
    /* loaded from: classes5.dex */
    class a implements C1415ah.a {
        a() {
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.dh$b */
    /* loaded from: classes5.dex */
    class b implements ActivationBarrier.IActivationBarrierCallback {
        b() {
        }

        @Override // com.yandex.metrica.coreutils.services.ActivationBarrier.IActivationBarrierCallback
        public void onWaitFinished() {
            C1490dh.this.p = true;
            C1490dh.this.f14606a.a(C1490dh.this.f14612g);
        }
    }

    public C1490dh(Context context, ICommonExecutor iCommonExecutor) {
        this(new C1440bh(context, null, iCommonExecutor), InterfaceC1533fa.b.a(C1515eh.class).a(context), new C1965x2(), iCommonExecutor, UtilityServiceLocator.getInstance().getActivationBarrier());
    }

    void a() {
        if (this.f14613h) {
            return;
        }
        this.f14613h = true;
        if (!this.p) {
            this.f14611f.subscribe(this.i.f14573c, this.f14609d, this.f14610e);
        } else {
            this.f14606a.a(this.f14612g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        C1515eh c1515eh = (C1515eh) this.f14607b.read();
        this.m = c1515eh.f14688c;
        this.n = c1515eh.f14689d;
        this.o = c1515eh.f14690e;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0038, code lost:
        if (r8.f14606a.b(r9) != false) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
        if (r9.f().f13889e == true) goto L6;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(com.yandex.metrica.impl.ob.C1790pi r9) {
        /*
            r8 = this;
            if (r9 != 0) goto L3
            goto L3b
        L3:
            boolean r0 = r8.j
            r1 = 1
            if (r0 != 0) goto L10
            com.yandex.metrica.impl.ob.Sh r0 = r9.f()
            boolean r0 = r0.f13889e
            if (r0 == r1) goto L3c
        L10:
            com.yandex.metrica.impl.ob.ci r0 = r8.i
            if (r0 == 0) goto L3c
            com.yandex.metrica.impl.ob.ci r2 = r9.K()
            boolean r0 = r0.equals(r2)
            if (r0 == 0) goto L3c
            long r2 = r8.k
            long r4 = r9.B()
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 != 0) goto L3c
            long r2 = r8.l
            long r4 = r9.o()
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 != 0) goto L3c
            com.yandex.metrica.impl.ob.bh r0 = r8.f14606a
            boolean r0 = r0.b(r9)
            if (r0 == 0) goto L3b
            goto L3c
        L3b:
            r1 = 0
        L3c:
            java.lang.Object r0 = r8.q
            monitor-enter(r0)
            if (r9 == 0) goto L5b
            com.yandex.metrica.impl.ob.Sh r2 = r9.f()     // Catch: java.lang.Throwable -> Lae
            boolean r2 = r2.f13889e     // Catch: java.lang.Throwable -> Lae
            r8.j = r2     // Catch: java.lang.Throwable -> Lae
            com.yandex.metrica.impl.ob.ci r2 = r9.K()     // Catch: java.lang.Throwable -> Lae
            r8.i = r2     // Catch: java.lang.Throwable -> Lae
            long r2 = r9.B()     // Catch: java.lang.Throwable -> Lae
            r8.k = r2     // Catch: java.lang.Throwable -> Lae
            long r2 = r9.o()     // Catch: java.lang.Throwable -> Lae
            r8.l = r2     // Catch: java.lang.Throwable -> Lae
        L5b:
            com.yandex.metrica.impl.ob.bh r2 = r8.f14606a     // Catch: java.lang.Throwable -> Lae
            r2.a(r9)     // Catch: java.lang.Throwable -> Lae
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lae
            if (r1 == 0) goto Lad
            java.lang.Object r9 = r8.q
            monitor-enter(r9)
            boolean r0 = r8.j     // Catch: java.lang.Throwable -> Laa
            if (r0 == 0) goto La8
            com.yandex.metrica.impl.ob.ci r0 = r8.i     // Catch: java.lang.Throwable -> Laa
            if (r0 == 0) goto La8
            boolean r1 = r8.n     // Catch: java.lang.Throwable -> Laa
            if (r1 == 0) goto L9a
            boolean r1 = r8.o     // Catch: java.lang.Throwable -> Laa
            if (r1 == 0) goto L88
            com.yandex.metrica.impl.ob.x2 r2 = r8.f14608c     // Catch: java.lang.Throwable -> Laa
            long r3 = r8.m     // Catch: java.lang.Throwable -> Laa
            long r5 = r0.f14574d     // Catch: java.lang.Throwable -> Laa
            java.lang.String r7 = "should retry sdk collecting"
            boolean r0 = r2.a(r3, r5, r7)     // Catch: java.lang.Throwable -> Laa
            if (r0 == 0) goto La8
            r8.a()     // Catch: java.lang.Throwable -> Laa
            goto La8
        L88:
            com.yandex.metrica.impl.ob.x2 r1 = r8.f14608c     // Catch: java.lang.Throwable -> Laa
            long r2 = r8.m     // Catch: java.lang.Throwable -> Laa
            long r4 = r0.f14571a     // Catch: java.lang.Throwable -> Laa
            java.lang.String r6 = "should collect sdk as usual"
            boolean r0 = r1.a(r2, r4, r6)     // Catch: java.lang.Throwable -> Laa
            if (r0 == 0) goto La8
            r8.a()     // Catch: java.lang.Throwable -> Laa
            goto La8
        L9a:
            long r1 = r8.k     // Catch: java.lang.Throwable -> Laa
            long r3 = r8.l     // Catch: java.lang.Throwable -> Laa
            long r1 = r1 - r3
            long r3 = r0.f14572b     // Catch: java.lang.Throwable -> Laa
            int r0 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r0 < 0) goto La8
            r8.a()     // Catch: java.lang.Throwable -> Laa
        La8:
            monitor-exit(r9)     // Catch: java.lang.Throwable -> Laa
            goto Lad
        Laa:
            r0 = move-exception
            monitor-exit(r9)     // Catch: java.lang.Throwable -> Laa
            throw r0
        Lad:
            return
        Lae:
            r9 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lae
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1490dh.b(com.yandex.metrica.impl.ob.pi):void");
    }

    C1490dh(C1440bh c1440bh, ProtobufStateStorage<C1515eh> protobufStateStorage, C1965x2 c1965x2, ICommonExecutor iCommonExecutor, ActivationBarrier activationBarrier) {
        this.p = false;
        this.q = new Object();
        this.f14606a = c1440bh;
        this.f14607b = protobufStateStorage;
        this.f14612g = new C1415ah(protobufStateStorage, new a());
        this.f14608c = c1965x2;
        this.f14609d = iCommonExecutor;
        this.f14610e = new b();
        this.f14611f = activationBarrier;
    }

    public void a(C1790pi c1790pi) {
        C1515eh c1515eh = (C1515eh) this.f14607b.read();
        this.m = c1515eh.f14688c;
        this.n = c1515eh.f14689d;
        this.o = c1515eh.f14690e;
        b(c1790pi);
    }
}
