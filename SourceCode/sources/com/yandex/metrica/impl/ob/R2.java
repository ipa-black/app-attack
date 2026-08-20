package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.location.Location;
import com.yandex.metrica.AppMetricaDeviceIDListener;
import com.yandex.metrica.DeferredDeeplinkListener;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
import com.yandex.metrica.IIdentifierCallback;
import com.yandex.metrica.YandexMetricaConfig;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* loaded from: classes5.dex */
public class R2 implements O0 {

    /* renamed from: f  reason: collision with root package name */
    private static volatile R2 f13774f = null;

    /* renamed from: g  reason: collision with root package name */
    private static volatile boolean f13775g = false;

    /* renamed from: a  reason: collision with root package name */
    private final Context f13776a;

    /* renamed from: b  reason: collision with root package name */
    private final Q2 f13777b;

    /* renamed from: c  reason: collision with root package name */
    private final FutureTask<T0> f13778c;

    /* renamed from: d  reason: collision with root package name */
    private final S0 f13779d;

    /* renamed from: e  reason: collision with root package name */
    private final Im f13780e;

    /* loaded from: classes5.dex */
    class a implements Callable<T0> {
        a() {
        }

        @Override // java.util.concurrent.Callable
        public T0 call() throws Exception {
            return R2.a(R2.this);
        }
    }

    private R2(Context context, Q2 q2, Im im) {
        this(context, q2, q2.a(context, im), im);
    }

    public static R2 a(Context context) {
        if (f13774f == null) {
            synchronized (R2.class) {
                if (f13774f == null) {
                    f13774f = new R2(context.getApplicationContext(), new Q2(), P.g().d());
                    R2 r2 = f13774f;
                    r2.f13780e.b().execute(new S2(r2));
                }
            }
        }
        return f13774f;
    }

    private static InterfaceC1723n1 f() {
        if (i()) {
            return f13774f.g();
        }
        return P.g().f();
    }

    private T0 g() {
        try {
            return this.f13778c.get();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    public static synchronized boolean h() {
        boolean z;
        synchronized (R2.class) {
            z = f13775g;
        }
        return z;
    }

    public static synchronized boolean i() {
        boolean z;
        synchronized (R2.class) {
            if (f13774f != null && f13774f.f13778c.isDone()) {
                z = f13774f.g().d() != null;
            }
        }
        return z;
    }

    public static synchronized void j() {
        synchronized (R2.class) {
            f13775g = true;
        }
    }

    public static R2 k() {
        return f13774f;
    }

    public C1648k1 d() {
        return g().d();
    }

    public Eb e() {
        return this.f13779d.d();
    }

    public static void b(boolean z) {
        f().a(z);
    }

    public static void c(boolean z) {
        f().setStatisticsSending(z);
    }

    R2(Context context, Q2 q2, S0 s0, Im im) {
        this.f13776a = context;
        this.f13777b = q2;
        this.f13779d = s0;
        this.f13780e = im;
        FutureTask<T0> futureTask = new FutureTask<>(new a());
        this.f13778c = futureTask;
        im.b().execute(futureTask);
    }

    public void b(com.yandex.metrica.i iVar) {
        this.f13779d.a(iVar, this);
    }

    public void c(com.yandex.metrica.e eVar) {
        g().c(eVar);
    }

    public void b(YandexMetricaConfig yandexMetricaConfig, com.yandex.metrica.i iVar) {
        g().a(yandexMetricaConfig, iVar);
    }

    public String c() {
        return g().c();
    }

    public void b(AppMetricaDeviceIDListener appMetricaDeviceIDListener) {
        g().a(appMetricaDeviceIDListener);
    }

    @Override // com.yandex.metrica.impl.ob.O0
    public N0 b() {
        return g().b();
    }

    public static void a(Location location) {
        f().a(location);
    }

    public static void a(boolean z) {
        f().b(z);
    }

    public static void a(String str, String str2) {
        f().c(str, str2);
    }

    public static void a(String str) {
        f().setUserProfileID(str);
    }

    public void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        g().a(deferredDeeplinkParametersListener);
    }

    public void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        g().a(deferredDeeplinkListener);
    }

    public M0 a(com.yandex.metrica.e eVar) {
        return g().a(eVar);
    }

    public String a() {
        return g().a();
    }

    public void a(IIdentifierCallback iIdentifierCallback, List<String> list) {
        g().a(iIdentifierCallback, list);
    }

    public void a(Map<String, Object> map) {
        this.f13779d.a(map);
    }

    static T0 a(R2 r2) {
        return r2.f13777b.a(r2.f13776a, r2.f13779d);
    }
}
