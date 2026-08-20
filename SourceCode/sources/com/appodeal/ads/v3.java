package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.networking.binders.b;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class v3 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ com.appodeal.ads.networking.binders.b f7864a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v3(com.appodeal.ads.networking.binders.b bVar) {
        super(1);
        this.f7864a = bVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jsonObject.hasValue("user_id", ((b.n) this.f7864a).d());
        jsonObject.hasValue("locale", ((b.n) this.f7864a).f());
        jsonObject.hasValue("consent", Boolean.valueOf(((b.n) this.f7864a).b()));
        jsonObject.hasObject("consent_report", ((b.n) this.f7864a).c());
        jsonObject.hasObject("token", ((b.n) this.f7864a).h());
        jsonObject.hasValue("user_agent", ((b.n) this.f7864a).a());
        jsonObject.hasValue("timezone", ((b.n) this.f7864a).g());
        jsonObject.hasValue("local_time", Long.valueOf(((b.n) this.f7864a).e()));
        return Unit.INSTANCE;
    }
}
