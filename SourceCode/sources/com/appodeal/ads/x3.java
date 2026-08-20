package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class x3 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Map<String, Object> f7910a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x3(Map<String, ? extends Object> map) {
        super(1);
        this.f7910a = map;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        for (Map.Entry<String, Object> entry : this.f7910a.entrySet()) {
            jsonObject.hasValue(entry.getKey(), entry.getValue());
        }
        return Unit.INSTANCE;
    }
}
