package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.l1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1673l1 extends B {
    /* JADX INFO: Access modifiers changed from: package-private */
    public C1673l1(Context context, A3 a3, com.yandex.metrica.e eVar, T1 t1) {
        this(context, a3, eVar, t1, new A0(context));
    }

    private C1673l1(Context context, A3 a3, com.yandex.metrica.e eVar, T1 t1, A0 a0) {
        this(context, t1, eVar, new Q1(a3, new CounterConfiguration(eVar), eVar.userProfileID), a0, P.g().j(), new Zg(), new Yg(null, null), new X6(), new S6(), new M6(), new K6(), new C1849s6(a0), P.g().k());
    }

    C1673l1(Context context, T1 t1, com.yandex.metrica.e eVar, Q1 q1, A0 a0, InterfaceC1445bm interfaceC1445bm, Zg zg, Yg yg, X6 x6, S6 s6, M6 m6, K6 k6, C1849s6 c1849s6, C2027zg c2027zg) {
        super(context, t1, q1, a0, interfaceC1445bm, zg.a(t1.b(), eVar.apiKey, false), yg, x6, s6, m6, k6, c1849s6);
        c2027zg.a(eVar.apiKey, new Ag(eVar, t1));
    }
}
