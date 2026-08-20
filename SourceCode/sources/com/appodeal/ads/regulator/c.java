package com.appodeal.ads.regulator;

import android.content.Context;
import com.appodeal.consent.ConsentManager;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
/* loaded from: classes2.dex */
public final class c {
    public static d a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new d(context, new com.appodeal.ads.regulator.usecases.a(ConsentManager.INSTANCE), CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()));
    }
}
