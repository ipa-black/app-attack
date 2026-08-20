package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.modules.common.internal.service.ServiceData;
import com.onesignal.outcomes.OSOutcomeConstants;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class b4 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ ServiceData f6573a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b4(ServiceData serviceData) {
        super(1);
        this.f6573a = serviceData;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jsonObject.hasValue("user_id", ((ServiceData.FacebookAnalytics) this.f6573a).getUserId());
        jsonObject.hasValue(OSOutcomeConstants.APP_ID, ((ServiceData.FacebookAnalytics) this.f6573a).getAppId());
        return Unit.INSTANCE;
    }
}
