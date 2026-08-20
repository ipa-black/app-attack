package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilderKt;
import com.appodeal.ads.modules.common.internal.service.ServiceData;
import com.appodeal.ads.networking.binders.b;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class d4 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ com.appodeal.ads.networking.binders.b f6628a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d4(com.appodeal.ads.networking.binders.b bVar) {
        super(1);
        this.f6628a = bVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JSONObject jsonObject;
        String str;
        JsonObjectBuilder jsonObject2 = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject2, "$this$jsonObject");
        for (ServiceData serviceData : ((b.k) this.f6628a).a()) {
            if (serviceData instanceof ServiceData.AppsFlyer) {
                jsonObject = JsonObjectBuilderKt.jsonObject(new y3(serviceData));
                str = "appsflyer";
            } else if (serviceData instanceof ServiceData.Adjust) {
                jsonObject = JsonObjectBuilderKt.jsonObject(new a4(serviceData));
                str = "adjust";
            } else if (serviceData instanceof ServiceData.FacebookAnalytics) {
                jsonObject = JsonObjectBuilderKt.jsonObject(new b4(serviceData));
                str = "facebook_analytics";
            } else if (serviceData instanceof ServiceData.Firebase) {
                jsonObject = JsonObjectBuilderKt.jsonObject(new c4(serviceData));
                str = "firebase";
            }
            jsonObject2.hasObject(str, jsonObject);
        }
        return Unit.INSTANCE;
    }
}
