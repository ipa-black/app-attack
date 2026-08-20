package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilderKt;
import com.appodeal.ads.networking.binders.b;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class p3 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ com.appodeal.ads.networking.binders.b f7285a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p3(com.appodeal.ads.networking.binders.b bVar) {
        super(1);
        this.f7285a = bVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        for (Map.Entry<String, com.appodeal.ads.networking.binders.a> entry : ((b.c) this.f7285a).a().entrySet()) {
            jsonObject.hasObject(entry.getKey(), JsonObjectBuilderKt.jsonObject(new o3(entry.getValue())));
        }
        return Unit.INSTANCE;
    }
}
