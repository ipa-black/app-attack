package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Handler;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.core.api.executors.IHandlerExecutor;
import com.yandex.metrica.impl.ob.C1974xb;
import com.yandex.metrica.impl.ob.Z0;
import java.util.Arrays;
import java.util.Map;
/* loaded from: classes5.dex */
public class P2 implements S0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f13675a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f13676b;

    /* renamed from: c  reason: collision with root package name */
    private final Q f13677c;

    /* renamed from: d  reason: collision with root package name */
    private final C1974xb f13678d;

    /* renamed from: e  reason: collision with root package name */
    private final ICommonExecutor f13679e;

    /* renamed from: f  reason: collision with root package name */
    private final C1890u f13680f;

    /* renamed from: g  reason: collision with root package name */
    private volatile C1 f13681g;

    /* renamed from: h  reason: collision with root package name */
    private AbstractC1993y6 f13682h;
    private final com.yandex.metrica.rtm.wrapper.e i;
    private final C1574h1 j;
    private boolean k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public P2(Context context, Im im) {
        this(context.getApplicationContext(), im.b(), im.a());
    }

    private void e() {
        if (Z0.a("com.yandex.metrica.CounterConfiguration")) {
            this.f13679e.execute(new Yl(this.f13675a));
            return;
        }
        throw new Z0.a("\nClass com.yandex.metrica.CounterConfiguration isn't found.\nPerhaps this is due to obfuscation.\nIf you build your application with ProGuard,\nyou need to keep the Metrica for Apps.\nPlease try to use the following lines of code:\n##########################################\n-keep class com.yandex.metrica.** { *; }\n-dontwarn com.yandex.metrica.**\n##########################################");
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public synchronized void a(com.yandex.metrica.i iVar, O0 o0) {
        if (!this.k) {
            Boolean bool = iVar.crashReporting;
            Boolean bool2 = Boolean.TRUE;
            if (bool == null) {
                bool = bool2;
            }
            if (bool.booleanValue() && this.f13681g == null) {
                Xg xg = new Xg(this.i);
                C6 c6 = new C6(this.f13675a, new C1989y2(o0, "20799a27-fa80-4b36-b2db-0f8141f24180"), new M2(this), (com.yandex.metrica.c) null);
                C6 c62 = new C6(this.f13675a, new C1989y2(o0, "0e5e9c33-f8c3-4568-86c5-2e4f57523f72"), new N2(this), (com.yandex.metrica.c) null);
                if (this.f13682h == null) {
                    this.f13682h = new C6(this.f13675a, new C1599i1(o0, iVar), new O2(this), iVar.l);
                }
                this.f13681g = new C1(Thread.getDefaultUncaughtExceptionHandler(), Arrays.asList(xg, c6, c62, this.f13682h), P.g().j(), new C1601i3(), new C1650k3());
                Thread.setDefaultUncaughtExceptionHandler(this.f13681g);
            }
            Boolean bool3 = iVar.appOpenTrackingEnabled;
            if (bool3 != null) {
                bool2 = bool3;
            }
            if (bool2.booleanValue()) {
                this.f13680f.a();
            }
            this.k = true;
        }
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public ICommonExecutor b() {
        return this.f13679e;
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public Handler c() {
        return this.f13676b;
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public Eb d() {
        return this.f13678d;
    }

    private P2(Context context, IHandlerExecutor iHandlerExecutor, ICommonExecutor iCommonExecutor) {
        this(context, new C1974xb(new C1974xb.c(), new C1974xb.e(), new C1974xb.e(), iHandlerExecutor, "Client"), iHandlerExecutor, new Q(), new C1890u(iCommonExecutor), new Zg(), new C1574h1());
    }

    P2(Context context, C1974xb c1974xb, IHandlerExecutor iHandlerExecutor, Q q, C1890u c1890u, Zg zg, C1574h1 c1574h1) {
        this.k = false;
        this.f13675a = context;
        this.f13679e = iHandlerExecutor;
        this.f13680f = c1890u;
        this.j = c1574h1;
        Vl.a(context);
        C1575h2.b();
        this.f13678d = c1974xb;
        c1974xb.c(context);
        this.f13676b = iHandlerExecutor.getHandler();
        this.f13677c = q;
        q.a();
        this.i = zg.a(context);
        e();
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public void a(Map<String, Object> map) {
        this.j.a(map);
    }

    @Override // com.yandex.metrica.impl.ob.S0
    public C1890u a() {
        return this.f13680f;
    }
}
