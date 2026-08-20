package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.networking.binders.b;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class s3 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ com.appodeal.ads.networking.binders.b f7489a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s3(com.appodeal.ads.networking.binders.b bVar) {
        super(1);
        this.f7489a = bVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jsonObject.hasValue("ifa", ((b.d) this.f7489a).c());
        jsonObject.hasValue("advertising_tracking", ((b.d) this.f7489a).b());
        jsonObject.hasValue("adidg", Boolean.valueOf(((b.d) this.f7489a).a()));
        return Unit.INSTANCE;
    }
}
