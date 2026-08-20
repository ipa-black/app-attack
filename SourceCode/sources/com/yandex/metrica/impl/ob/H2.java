package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiManager;
import java.util.List;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes5.dex */
public class H2 {
    private static volatile H2 l;
    private static final Object m = new Object();

    /* renamed from: a  reason: collision with root package name */
    private final Context f13017a;

    /* renamed from: b  reason: collision with root package name */
    private final WifiManager f13018b;

    /* renamed from: c  reason: collision with root package name */
    private C2000yd f13019c;

    /* renamed from: d  reason: collision with root package name */
    private Ed f13020d;

    /* renamed from: e  reason: collision with root package name */
    private C1570gm f13021e;

    /* renamed from: f  reason: collision with root package name */
    private InterfaceC1694lm<Context, Intent, Void> f13022f;

    /* renamed from: g  reason: collision with root package name */
    private C1790pi f13023g;

    /* renamed from: h  reason: collision with root package name */
    private final InterfaceC2024zd f13024h;
    private final InterfaceC2024zd i;
    private final I2 j;
    private final J2 k;

    private H2(Context context, WifiManager wifiManager, Ed ed) {
        this(context, wifiManager, ed, new C2000yd(ed.a()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x007b, code lost:
        if (r4.getIpAddress() == 0) goto L100;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0032 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x005f A[Catch: all -> 0x007d, TryCatch #7 {all -> 0x007d, blocks: (B:43:0x0059, B:45:0x005f, B:47:0x006b, B:49:0x0077), top: B:116:0x0059 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00f3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.yandex.metrica.impl.ob.F2> c() {
        /*
            Method dump skipped, instructions count: 317
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.H2.c():java.util.List");
    }

    public static H2 a(Context context) {
        if (l == null) {
            synchronized (m) {
                if (l == null) {
                    Context applicationContext = context.getApplicationContext();
                    l = new H2(applicationContext, (WifiManager) applicationContext.getApplicationContext().getSystemService("wifi"), new Ed());
                }
            }
        }
        return l;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.util.List<com.yandex.metrica.impl.ob.F2> b() {
        /*
            r2 = this;
            monitor-enter(r2)
            com.yandex.metrica.impl.ob.yd r0 = r2.f13019c     // Catch: java.lang.Throwable -> L33
            android.content.Context r1 = r2.f13017a     // Catch: java.lang.Throwable -> L33
            boolean r0 = r0.c(r1)     // Catch: java.lang.Throwable -> L33
            if (r0 != 0) goto Ld
            r0 = 0
            goto L25
        Ld:
            android.net.wifi.WifiManager r0 = r2.f13018b     // Catch: java.lang.Throwable -> L33
            java.lang.Boolean r1 = java.lang.Boolean.FALSE     // Catch: java.lang.Throwable -> L33
            if (r0 == 0) goto L1c
            boolean r0 = r0.isWifiEnabled()     // Catch: java.lang.Throwable -> L1c
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch: java.lang.Throwable -> L1c
            goto L1d
        L1c:
            r0 = 0
        L1d:
            if (r0 != 0) goto L20
            goto L21
        L20:
            r1 = r0
        L21:
            boolean r0 = r1.booleanValue()     // Catch: java.lang.Throwable -> L33
        L25:
            if (r0 != 0) goto L2d
            java.util.List r0 = java.util.Collections.emptyList()     // Catch: java.lang.Throwable -> L33
            monitor-exit(r2)
            return r0
        L2d:
            java.util.List r0 = r2.c()     // Catch: java.lang.Throwable -> L33
            monitor-exit(r2)
            return r0
        L33:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.H2.b():java.util.List");
    }

    private H2(Context context, WifiManager wifiManager, Ed ed, C2000yd c2000yd) {
        this(context, wifiManager, ed, new C1570gm(), c2000yd, new G1(), new I2(), F0.g().h().d());
    }

    public void a(C1790pi c1790pi) {
        this.f13023g = c1790pi;
        this.f13020d.a(c1790pi);
        this.f13019c.a(this.f13020d.a());
        if (c1790pi.d() != null) {
            I2 i2 = this.j;
            Ph d2 = c1790pi.d();
            i2.f12956a.a(d2.f13717b, i2.a(d2));
        }
    }

    H2(Context context, WifiManager wifiManager, Ed ed, C1570gm c1570gm, C2000yd c2000yd, G1 g1, I2 i2, J2 j2) {
        this.f13017a = context;
        this.f13018b = wifiManager;
        this.f13020d = ed;
        this.f13019c = c2000yd;
        this.f13024h = g1.d(c2000yd);
        this.i = g1.e(c2000yd);
        this.f13021e = c1570gm;
        this.j = i2;
        this.k = j2;
    }

    public void a(boolean z) {
        this.f13020d.a(z);
        this.f13019c.a(this.f13020d.a());
    }

    public synchronized boolean a(CountDownLatch countDownLatch, V<List<F2>> v) {
        Boolean valueOf;
        if (this.i.a(this.f13017a)) {
            if (this.f13022f == null) {
                this.f13022f = new G2(this, v, countDownLatch);
            }
            this.k.a(this.f13022f);
            WifiManager wifiManager = this.f13018b;
            if (wifiManager != null) {
                try {
                    valueOf = Boolean.valueOf(wifiManager.startScan());
                } catch (Throwable unused) {
                }
                return Boolean.TRUE.equals(valueOf);
            }
            valueOf = null;
            return Boolean.TRUE.equals(valueOf);
        }
        return false;
    }

    public I2 a() {
        return this.j;
    }
}
