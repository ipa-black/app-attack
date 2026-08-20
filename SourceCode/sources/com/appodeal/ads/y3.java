package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilderKt;
import com.appodeal.ads.modules.common.internal.service.ServiceData;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class y3 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ServiceData f7985a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y3(ServiceData serviceData) {
        super(1);
        this.f7985a = serviceData;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jsonObject.hasValue("attribution_id", ((ServiceData.AppsFlyer) this.f7985a).getAttributionId());
        Map<String, Object> conversionData = ((ServiceData.AppsFlyer) this.f7985a).getConversionData();
        jsonObject.hasObject("conversion_data", (conversionData.isEmpty() ^ true ? conversionData : null) != null ? JsonObjectBuilderKt.jsonObject(new x3(conversionData)) : null);
        return Unit.INSTANCE;
    }
}
