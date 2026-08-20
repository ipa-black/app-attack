package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.modules.common.internal.service.ServiceInfo;
import com.unity3d.services.core.di.ServiceProvider;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class l3 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ServiceInfo f6843a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l3(ServiceInfo serviceInfo) {
        super(1);
        this.f6843a = serviceInfo;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jsonObject.hasValue("ver", this.f6843a.getBuildVersion());
        jsonObject.hasValue(ServiceProvider.NAMED_SDK, this.f6843a.getSdkVersion());
        return Unit.INSTANCE;
    }
}
