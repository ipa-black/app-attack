package com.appodeal.ads.context;

import android.app.Activity;
import android.content.Context;
import com.appodeal.ads.modules.common.internal.context.ContextProvider;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;
/* loaded from: classes2.dex */
public final class b implements ContextProvider {

    /* renamed from: b  reason: collision with root package name */
    public static final b f6583b = new b();

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f6584a = c.a();

    @Override // com.appodeal.ads.modules.common.internal.context.ContextProvider
    public final Activity getActivity() {
        return this.f6584a.getActivity();
    }

    @Override // com.appodeal.ads.modules.common.internal.context.ContextProvider
    public final Flow<Activity> getActivityFlow() {
        return this.f6584a.f6593e;
    }

    @Override // com.appodeal.ads.modules.common.internal.context.ContextProvider
    public final Context getApplicationContext() {
        return this.f6584a.getApplicationContext();
    }

    @Override // com.appodeal.ads.modules.common.internal.context.ContextProvider
    public final Context getApplicationContextOrNull() {
        return this.f6584a.f6589a;
    }

    @Override // com.appodeal.ads.modules.common.internal.context.ContextProvider
    public final StateFlow<Activity> getTopActivityFlow() {
        return this.f6584a.f6594f;
    }
}
