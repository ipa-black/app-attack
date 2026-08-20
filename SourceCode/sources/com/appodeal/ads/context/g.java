package com.appodeal.ads.context;

import android.app.Activity;
import android.content.Context;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class g implements ContextProvider.Synchronizer {

    /* renamed from: b  reason: collision with root package name */
    public static final g f6601b = new g();

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f6602a = c.a();

    @Override // com.appodeal.ads.modules.common.internal.context.ContextProvider.Synchronizer
    public final void setActivity(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        this.f6602a.setActivity(activity);
    }

    @Override // com.appodeal.ads.modules.common.internal.context.ContextProvider.Synchronizer
    public final void setApplicationContext(Context applicationContext) {
        Intrinsics.checkNotNullParameter(applicationContext, "applicationContext");
        this.f6602a.setApplicationContext(applicationContext);
    }

    @Override // com.appodeal.ads.modules.common.internal.context.ContextProvider.Synchronizer
    public final void setAutomaticActivityObserving(boolean z) {
        this.f6602a.setAutomaticActivityObserving(z);
    }
}
