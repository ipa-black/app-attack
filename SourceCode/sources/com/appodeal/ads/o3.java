package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.unity3d.services.core.di.ServiceProvider;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class o3 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ com.appodeal.ads.networking.binders.a f7268a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o3(com.appodeal.ads.networking.binders.a aVar) {
        super(1);
        this.f7268a = aVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jsonObject.hasValue("ver", this.f7268a.b());
        jsonObject.hasValue(ServiceProvider.NAMED_SDK, this.f7268a.a());
        return Unit.INSTANCE;
    }
}
