package com.appodeal.ads.segments;

import android.content.Context;
import com.appodeal.ads.segments.j;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class f implements j.b {

    /* renamed from: a  reason: collision with root package name */
    public final com.appodeal.ads.storage.a f7501a;

    /* renamed from: b  reason: collision with root package name */
    public final Lazy f7502b;

    public f(com.appodeal.ads.storage.o keyValueStorage) {
        Intrinsics.checkNotNullParameter(keyValueStorage, "keyValueStorage");
        this.f7501a = keyValueStorage;
        this.f7502b = LazyKt.lazy(new e(this));
    }

    @Override // com.appodeal.ads.segments.j.b
    public final Object a(Context context, j ruleHelper) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(ruleHelper, "ruleHelper");
        return Integer.valueOf(((Number) this.f7502b.getValue()).intValue());
    }
}
