package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
/* renamed from: com.yandex.metrica.impl.ob.d0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1473d0 extends B {
    private final C1728n6 p;
    private final C1921v6 q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1473d0(Context context, A3 a3, com.yandex.metrica.i iVar, T1 t1) {
        this(context, a3, iVar, t1, new A0(context));
    }

    @Override // com.yandex.metrica.impl.ob.B, com.yandex.metrica.impl.ob.R0
    public void a(H6 h6) {
        this.p.a(this.q.a(h6, this.f12654b));
        b(h6);
    }

    private C1473d0(Context context, A3 a3, com.yandex.metrica.i iVar, T1 t1, A0 a0) {
        this(context, t1, new Q1(a3, new CounterConfiguration(iVar, CounterConfiguration.b.CRASH), iVar.userProfileID), a0, new C1728n6(context), new C1921v6(), P.g().j(), new Ug(), new Yg(null, null), new X6(), new S6(), new M6(), new K6(), new C1849s6(a0));
    }

    C1473d0(Context context, T1 t1, Q1 q1, A0 a0, C1728n6 c1728n6, C1921v6 c1921v6, InterfaceC1445bm interfaceC1445bm, com.yandex.metrica.rtm.wrapper.d dVar, Yg yg, X6 x6, S6 s6, M6 m6, K6 k6, C1849s6 c1849s6) {
        super(context, t1, q1, a0, interfaceC1445bm, dVar, yg, x6, s6, m6, k6, c1849s6);
        this.p = c1728n6;
        this.q = c1921v6;
    }
}
