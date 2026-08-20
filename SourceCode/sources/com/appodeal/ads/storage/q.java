package com.appodeal.ads.storage;

import android.content.SharedPreferences;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    public final Lazy f7667a;

    public q(com.appodeal.ads.context.b contextProvider, String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(contextProvider, "contextProvider");
        this.f7667a = LazyKt.lazy(new p(contextProvider, name));
    }

    public final SharedPreferences a() {
        Object value = this.f7667a.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-prefs>(...)");
        return (SharedPreferences) value;
    }
}
