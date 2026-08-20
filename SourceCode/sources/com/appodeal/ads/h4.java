package com.appodeal.ads;

import com.appodeal.ads.UserSettings;
import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import java.util.HashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class h4 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Map<String, Object> f6712a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ UserData f6713b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h4(HashMap hashMap, l5 l5Var) {
        super(1);
        this.f6712a = hashMap;
        this.f6713b = l5Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        for (Map.Entry<String, Object> entry : this.f6712a.entrySet()) {
            jsonObject.hasValue(entry.getKey(), entry.getValue());
        }
        UserSettings.Gender gender = this.f6713b.getGender();
        jsonObject.hasValue("appodeal_gender", gender == null ? null : Integer.valueOf(gender.getIntValue()));
        jsonObject.hasValue("appodeal_age", this.f6713b.getAge());
        return Unit.INSTANCE;
    }
}
