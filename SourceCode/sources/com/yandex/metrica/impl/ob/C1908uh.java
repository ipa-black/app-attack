package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.coreutils.services.ActivationBarrier;
import com.yandex.metrica.coreutils.services.TimeProvider;
import com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer;
import com.yandex.metrica.networktasks.api.IExecutionPolicy;
import java.io.File;
/* renamed from: com.yandex.metrica.impl.ob.uh  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1908uh {

    /* renamed from: a  reason: collision with root package name */
    private final Context f15849a;

    /* renamed from: b  reason: collision with root package name */
    private final B0 f15850b;

    /* renamed from: c  reason: collision with root package name */
    private final ICommonExecutor f15851c;

    /* renamed from: d  reason: collision with root package name */
    private final CacheControlHttpsConnectionPerformer f15852d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC1789ph f15853e;

    /* renamed from: f  reason: collision with root package name */
    private final TimeProvider f15854f;

    /* renamed from: g  reason: collision with root package name */
    private final IExecutionPolicy f15855g;

    /* renamed from: h  reason: collision with root package name */
    private final ActivationBarrier f15856h;
    private boolean i;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1908uh(android.content.Context r10) {
        /*
            r9 = this;
            com.yandex.metrica.impl.ob.B0 r2 = new com.yandex.metrica.impl.ob.B0
            r2.<init>()
            com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer r3 = new com.yandex.metrica.networktasks.api.CacheControlHttpsConnectionPerformer
            com.yandex.metrica.impl.ob.F0 r0 = com.yandex.metrica.impl.ob.F0.g()
            com.yandex.metrica.impl.ob.sd r0 = r0.t()
            r0.getClass()
            r0 = 0
            r3.<init>(r0)
            com.yandex.metrica.coreutils.services.SystemTimeProvider r4 = new com.yandex.metrica.coreutils.services.SystemTimeProvider
            r4.<init>()
            com.yandex.metrica.impl.ob.od r5 = new com.yandex.metrica.impl.ob.od
            r5.<init>(r10)
            com.yandex.metrica.impl.ob.F0 r0 = com.yandex.metrica.impl.ob.F0.g()
            com.yandex.metrica.impl.ob.Pm r0 = r0.q()
            com.yandex.metrica.core.api.executors.ICommonExecutor r6 = r0.g()
            com.yandex.metrica.impl.ob.F0 r0 = com.yandex.metrica.impl.ob.F0.g()
            com.yandex.metrica.impl.ob.e9 r7 = r0.s()
            com.yandex.metrica.coreutils.services.UtilityServiceLocator r0 = com.yandex.metrica.coreutils.services.UtilityServiceLocator.getInstance()
            com.yandex.metrica.coreutils.services.ActivationBarrier r8 = r0.getActivationBarrier()
            r0 = r9
            r1 = r10
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1908uh.<init>(android.content.Context):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(C1908uh c1908uh) {
        synchronized (c1908uh) {
            c1908uh.i = false;
        }
    }

    public synchronized void a(C1790pi c1790pi, Eh eh) {
        C1491di M = c1790pi.M();
        if (M == null) {
            return;
        }
        File a2 = this.f15850b.a(this.f15849a, "certificate.p12");
        boolean z = a2 != null && a2.exists();
        if (z) {
            eh.a(a2);
        }
        long currentTimeSeconds = this.f15854f.currentTimeSeconds();
        long a3 = this.f15853e.a();
        if ((!z || currentTimeSeconds >= a3) && !this.i) {
            String e2 = c1790pi.e();
            if (!TextUtils.isEmpty(e2) && this.f15855g.canBeExecuted()) {
                this.i = true;
                this.f15856h.subscribe(ActivationBarrier.ACTIVATION_DELAY, this.f15851c, new C1860sh(this, e2, a2, eh, M));
            }
        }
    }

    C1908uh(Context context, B0 b0, CacheControlHttpsConnectionPerformer cacheControlHttpsConnectionPerformer, TimeProvider timeProvider, IExecutionPolicy iExecutionPolicy, ICommonExecutor iCommonExecutor, InterfaceC1789ph interfaceC1789ph, ActivationBarrier activationBarrier) {
        this.i = false;
        this.f15849a = context;
        this.f15850b = b0;
        this.f15852d = cacheControlHttpsConnectionPerformer;
        this.f15854f = timeProvider;
        this.f15855g = iExecutionPolicy;
        this.f15851c = iCommonExecutor;
        this.f15853e = interfaceC1789ph;
        this.f15856h = activationBarrier;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(C1908uh c1908uh, long j) {
        c1908uh.f15853e.a(c1908uh.f15854f.currentTimeSeconds() + j);
    }
}
