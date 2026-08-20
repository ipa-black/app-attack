package com.appodeal.ads.context;

import android.app.Activity;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes2.dex */
public final class e extends Lambda implements Function1<Activity, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f6588a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(f fVar) {
        super(1);
        this.f6588a = fVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(Activity activity) {
        Activity destroyedActivity = activity;
        Intrinsics.checkNotNullParameter(destroyedActivity, "destroyedActivity");
        f.a(this.f6588a, destroyedActivity);
        return Unit.INSTANCE;
    }
}
