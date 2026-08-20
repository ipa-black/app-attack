package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.coreutils.services.ActivationBarrier;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.coreutils.services.TimeProvider;
import com.yandex.metrica.coreutils.services.UtilityServiceLocator;
import com.yandex.metrica.networktasks.api.NetworkServiceLocator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class Sc implements Fc {

    /* renamed from: a  reason: collision with root package name */
    private final Context f13860a;

    /* renamed from: b  reason: collision with root package name */
    private C1790pi f13861b;

    /* renamed from: c  reason: collision with root package name */
    private volatile C1709mc f13862c;

    /* renamed from: d  reason: collision with root package name */
    private final U7 f13863d;

    /* renamed from: e  reason: collision with root package name */
    private final T7 f13864e;

    /* renamed from: f  reason: collision with root package name */
    private final TimeProvider f13865f;

    /* renamed from: g  reason: collision with root package name */
    private final C1536fd f13866g;

    /* renamed from: h  reason: collision with root package name */
    private final ActivationBarrier f13867h;
    private final ActivationBarrier.IActivationBarrierCallback i;
    private final ICommonExecutor j;
    private boolean k;

    /* loaded from: classes5.dex */
    class a implements ActivationBarrier.IActivationBarrierCallback {
        a() {
        }

        @Override // com.yandex.metrica.coreutils.services.ActivationBarrier.IActivationBarrierCallback
        public void onWaitFinished() {
            Sc.this.k = true;
            Sc.a(Sc.this);
        }
    }

    public Sc(Context context, C1790pi c1790pi, C1709mc c1709mc, U7 u7, T7 t7, ICommonExecutor iCommonExecutor) {
        this(context, c1790pi, c1709mc, u7, t7, iCommonExecutor, new SystemTimeProvider(), new C1536fd(), UtilityServiceLocator.getInstance().getActivationBarrier());
    }

    static void a(Sc sc) {
        C1709mc c1709mc = sc.f13862c;
        if (c1709mc != null) {
            NetworkServiceLocator.getInstance().getNetworkCore().startTask(sc.f13866g.a(sc.f13860a, sc.f13861b, c1709mc, sc));
        }
    }

    Sc(Context context, C1790pi c1790pi, C1709mc c1709mc, U7 u7, T7 t7, ICommonExecutor iCommonExecutor, TimeProvider timeProvider, C1536fd c1536fd, ActivationBarrier activationBarrier) {
        this.k = false;
        this.f13860a = context;
        this.f13862c = c1709mc;
        this.f13861b = c1790pi;
        this.f13863d = u7;
        this.f13864e = t7;
        this.j = iCommonExecutor;
        this.f13865f = timeProvider;
        this.f13866g = c1536fd;
        this.f13867h = activationBarrier;
        this.i = new a();
    }

    @Override // com.yandex.metrica.impl.ob.Fc
    public void a() {
        boolean a2 = a(this.f13863d);
        boolean a3 = a(this.f13864e);
        if (a2 || a3) {
            if (!this.k) {
                this.f13867h.subscribe(ActivationBarrier.ACTIVATION_DELAY, this.j, this.i);
                return;
            }
            C1709mc c1709mc = this.f13862c;
            if (c1709mc != null) {
                NetworkServiceLocator.getInstance().getNetworkCore().startTask(this.f13866g.a(this.f13860a, this.f13861b, c1709mc, this));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
        if (r7.c() >= r0.f15145c) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean a(com.yandex.metrica.impl.ob.J7 r7) {
        /*
            r6 = this;
            com.yandex.metrica.impl.ob.mc r0 = r6.f13862c
            if (r0 == 0) goto L2b
            com.yandex.metrica.impl.ob.mc r0 = r6.f13862c
            if (r0 == 0) goto L14
            int r0 = r0.f15145c
            long r0 = (long) r0
            long r2 = r7.c()
            int r0 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r0 < 0) goto L14
            goto L29
        L14:
            com.yandex.metrica.impl.ob.mc r0 = r6.f13862c
            if (r0 == 0) goto L2b
            long r0 = r0.f15147e
            com.yandex.metrica.coreutils.services.TimeProvider r2 = r6.f13865f
            long r2 = r2.currentTimeMillis()
            long r4 = r7.b()
            long r2 = r2 - r4
            int r7 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r7 <= 0) goto L2b
        L29:
            r7 = 1
            goto L2c
        L2b:
            r7 = 0
        L2c:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Sc.a(com.yandex.metrica.impl.ob.J7):boolean");
    }

    public void a(C1790pi c1790pi) {
        this.f13861b = c1790pi;
    }

    public void a(C1709mc c1709mc) {
        this.f13862c = c1709mc;
    }
}
