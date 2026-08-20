package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilderKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class e4 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ com.appodeal.ads.networking.binders.b f6644a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e4(com.appodeal.ads.networking.binders.b bVar) {
        super(1);
        this.f6644a = bVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jsonObject.hasObject("services_data", JsonObjectBuilderKt.jsonObject(new d4(this.f6644a)));
        return Unit.INSTANCE;
    }
}
