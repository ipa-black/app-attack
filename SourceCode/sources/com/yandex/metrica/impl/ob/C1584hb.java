package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C1559gb;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
/* renamed from: com.yandex.metrica.impl.ob.hb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1584hb {

    /* renamed from: a  reason: collision with root package name */
    private final C1559gb.b f14841a = new C1559gb.b(false, 1);

    public final C1559gb a(Uh uh) {
        C1559gb.b bVar = this.f14841a;
        Random.Default r3 = Random.Default;
        F0 g2 = F0.g();
        Intrinsics.checkNotNullExpressionValue(g2, "GlobalServiceLocator.getInstance()");
        Pm q = g2.q();
        Intrinsics.checkNotNullExpressionValue(q, "GlobalServiceLocator.get…).serviceExecutorProvider");
        ICommonExecutor g3 = q.g();
        Intrinsics.checkNotNullExpressionValue(g3, "GlobalServiceLocator.get…rovider.supportIOExecutor");
        M0 a2 = C1764oh.a();
        Intrinsics.checkNotNullExpressionValue(a2, "YandexMetricaSelfReportFacade.getReporter()");
        return new C1559gb(uh, bVar, r3, g3, new C1658kb(new C1633jb(uh, a2), uh));
    }
}
