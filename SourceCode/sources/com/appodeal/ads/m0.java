package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilderKt;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class m0 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ n0 f6854a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f6855b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(n0 n0Var, int i) {
        super(1);
        this.f6854a = n0Var;
        this.f6855b = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JSONObject jSONObject;
        JSONObject jSONObject2;
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jSONObject = this.f6854a.f7056b;
        Iterator<String> keys = jSONObject.keys();
        Intrinsics.checkNotNullExpressionValue(keys, "defaultWaterfall.keys()");
        while (keys.hasNext()) {
            String next = keys.next();
            if (next == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            }
            String str = next;
            jSONObject2 = this.f6854a.f7056b;
            jsonObject.hasValue(str, jSONObject2.get(str));
        }
        jsonObject.hasValue("waterfall_ad_type", Integer.valueOf(this.f6855b));
        jsonObject.hasValue("waterfall_start_time", Long.valueOf(System.currentTimeMillis()));
        jsonObject.hasArray("ad_units", JsonObjectBuilderKt.jsonArray(l0.f6832a));
        return Unit.INSTANCE;
    }
}
