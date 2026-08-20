package com.appodeal.consent.internal;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.google.firebase.messaging.Constants;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes2.dex */
public final class h extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ a f8129a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(a aVar) {
        super(1);
        this.f8129a = aVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jsonObject.hasValue("key", this.f8129a.b());
        jsonObject.hasValue(Constants.FirelogAnalytics.PARAM_PACKAGE_NAME, this.f8129a.m());
        return Unit.INSTANCE;
    }
}
