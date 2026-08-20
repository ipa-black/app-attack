package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonArrayBuilder;
import com.appodeal.ads.networking.binders.b;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class q3 extends Lambda implements Function1<JsonArrayBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ com.appodeal.ads.networking.binders.b f7302a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q3(com.appodeal.ads.networking.binders.b bVar) {
        super(1);
        this.f7302a = bVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonArrayBuilder jsonArrayBuilder) {
        JsonArrayBuilder jsonArray = jsonArrayBuilder;
        Intrinsics.checkNotNullParameter(jsonArray, "$this$jsonArray");
        jsonArray.putValues(((b.c) this.f7302a).b());
        return Unit.INSTANCE;
    }
}
