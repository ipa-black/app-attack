package com.appodeal.consent.internal;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilderKt;
import com.appodeal.advertising.AdvertisingInfo;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class j {

    /* loaded from: classes2.dex */
    public static final class a extends Lambda implements Function1<JsonObjectBuilder, Unit> {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ com.appodeal.consent.internal.a f8133a;

        /* renamed from: b  reason: collision with root package name */
        public final /* synthetic */ AdvertisingInfo.AdvertisingProfile f8134b;

        /* renamed from: c  reason: collision with root package name */
        public final /* synthetic */ Pair<Integer, Integer> f8135c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AdvertisingInfo.AdvertisingProfile advertisingProfile, com.appodeal.consent.internal.a aVar, Pair pair) {
            super(1);
            this.f8133a = aVar;
            this.f8134b = advertisingProfile;
            this.f8135c = pair;
        }

        @Override // kotlin.jvm.functions.Function1
        public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
            JsonObjectBuilder jsonObject = jsonObjectBuilder;
            Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
            jsonObject.hasObject("app", JsonObjectBuilderKt.jsonObject(new h(this.f8133a)));
            jsonObject.hasObject("device", JsonObjectBuilderKt.jsonObject(new i(this.f8134b, this.f8133a, this.f8135c)));
            jsonObject.hasObject("consent", this.f8133a.d().toJson());
            jsonObject.hasValue("sdk_ver", this.f8133a.c());
            jsonObject.hasValue("ver", this.f8133a.e());
            return Unit.INSTANCE;
        }
    }

    public static JSONObject a(com.appodeal.consent.internal.a data) {
        Intrinsics.checkNotNullParameter(data, "data");
        AdvertisingInfo.AdvertisingProfile a2 = data.a();
        Pair<Integer, Integer> n = data.n();
        JSONObject jSONObject = new JSONObject(data.i());
        JsonObjectBuilderKt.jsonObject(jSONObject, new a(a2, data, n));
        return jSONObject;
    }
}
