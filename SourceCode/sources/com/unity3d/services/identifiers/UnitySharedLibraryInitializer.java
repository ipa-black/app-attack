package com.unity3d.services.identifiers;

import android.content.Context;
import androidx.startup.Initializer;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/unity3d/services/identifiers/UnitySharedLibraryInitializer;", "Landroidx/startup/Initializer;", "", "<init>", "()V", "unity-services-identifiers_release"}, k = 1, mv = {1, 4, 3})
/* loaded from: classes3.dex */
public final class UnitySharedLibraryInitializer implements Initializer<Unit> {
    @Override // androidx.startup.Initializer
    public final Unit create(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context context2 = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(context2, "context.applicationContext");
        Intrinsics.checkNotNullParameter(context2, "context");
        a.f12277b = new a(context2);
        return Unit.INSTANCE;
    }

    @Override // androidx.startup.Initializer
    public final List<Class<? extends Initializer<?>>> dependencies() {
        return CollectionsKt.emptyList();
    }
}
