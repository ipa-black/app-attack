package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.networking.binders.b;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class i3 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ com.appodeal.ads.networking.binders.b f6739a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i3(com.appodeal.ads.networking.binders.b bVar) {
        super(1);
        this.f6739a = bVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jsonObject.hasValue(Constants.DEBUG_INTERSTITIAL, ((b.g) this.f6739a).a());
        jsonObject.hasArray("sa", ((b.g) this.f6739a).c());
        jsonObject.hasValue("check_sdk_version", ((b.g) this.f6739a).b());
        return Unit.INSTANCE;
    }
}
