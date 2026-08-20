package com.appodeal.ads;

import android.content.Context;
import com.appodeal.ads.modules.common.internal.service.ServicesRegistry;
import com.appodeal.ads.utils.Log;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScopeKt;
/* loaded from: classes.dex */
public final class a3 {

    /* renamed from: a  reason: collision with root package name */
    public final l1 f6429a;

    public a3(l1 getServiceOptions) {
        Intrinsics.checkNotNullParameter(getServiceOptions, "getServiceOptions");
        this.f6429a = getServiceOptions;
    }

    public static Object a(a3 a3Var, Context context, com.appodeal.ads.networking.b bVar, v4 v4Var) {
        ServicesRegistry a2 = com.appodeal.ads.services.b.a();
        boolean z = r0.f7342b || f1.l() || r0.f7344d == Log.LogLevel.verbose;
        String a3 = x2.a();
        e1 instance = e1.f6641a;
        Intrinsics.checkNotNullExpressionValue(instance, "instance");
        j0 j0Var = j0.f6745c;
        m5 instance2 = m5.f6871c;
        Intrinsics.checkNotNullExpressionValue(instance2, "instance");
        a3Var.getClass();
        return CoroutineScopeKt.coroutineScope(new z2(a3Var, context, bVar, z, a3, j0Var, instance, instance2, a2, null), v4Var);
    }
}
