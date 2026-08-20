package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.content.Context;
import com.yandex.metrica.IReporter;
import com.yandex.metrica.impl.ob.C1795q;
/* renamed from: com.yandex.metrica.impl.ob.a0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1398a0 {

    /* renamed from: a  reason: collision with root package name */
    private Context f14375a;

    /* renamed from: b  reason: collision with root package name */
    private final C1795q.b f14376b;

    /* renamed from: c  reason: collision with root package name */
    private final C1795q f14377c;

    /* renamed from: d  reason: collision with root package name */
    private final IReporter f14378d;

    /* renamed from: com.yandex.metrica.impl.ob.a0$a */
    /* loaded from: classes5.dex */
    static final class a implements C1795q.b {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.C1795q.b
        public final void a(Activity activity, C1795q.a aVar) {
            int ordinal = aVar.ordinal();
            if (ordinal == 1) {
                C1398a0.this.f14378d.resumeSession();
            } else if (ordinal != 2) {
            } else {
                C1398a0.this.f14378d.pauseSession();
            }
        }
    }

    public C1398a0(C1795q c1795q) {
        this(c1795q, null, 2);
    }

    public C1398a0(C1795q c1795q, IReporter iReporter) {
        this.f14377c = c1795q;
        this.f14378d = iReporter;
        this.f14376b = new a();
    }

    public final synchronized void a(Context context) {
        if (this.f14375a == null) {
            Context applicationContext = context.getApplicationContext();
            this.f14377c.a(applicationContext);
            this.f14377c.a(this.f14376b, C1795q.a.RESUMED, C1795q.a.PAUSED);
            this.f14375a = applicationContext;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ C1398a0(com.yandex.metrica.impl.ob.C1795q r1, com.yandex.metrica.IReporter r2, int r3) {
        /*
            r0 = this;
            r2 = r3 & 2
            if (r2 == 0) goto Le
            com.yandex.metrica.impl.ob.M0 r2 = com.yandex.metrica.impl.ob.C1764oh.a()
            java.lang.String r3 = "YandexMetricaSelfReportFacade.getReporter()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            goto Lf
        Le:
            r2 = 0
        Lf:
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1398a0.<init>(com.yandex.metrica.impl.ob.q, com.yandex.metrica.IReporter, int):void");
    }
}
