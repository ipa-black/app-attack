package com.appodeal.ads.context;

import android.app.Activity;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes2.dex */
public final class d extends Lambda implements Function1<Activity, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ f f6587a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(f fVar) {
        super(1);
        this.f6587a = fVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(Activity activity) {
        f.b(this.f6587a, activity);
        return Unit.INSTANCE;
    }
}
