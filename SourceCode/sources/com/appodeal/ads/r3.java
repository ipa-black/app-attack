package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilderKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class r3 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ com.appodeal.ads.networking.binders.b f7357a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r3(com.appodeal.ads.networking.binders.b bVar) {
        super(1);
        this.f7357a = bVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jsonObject.hasObject("adapters", JsonObjectBuilderKt.jsonObject(new p3(this.f7357a)));
        jsonObject.hasArray("show_array", JsonObjectBuilderKt.jsonArray(new q3(this.f7357a)));
        return Unit.INSTANCE;
    }
}
