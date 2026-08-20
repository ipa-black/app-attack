package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.networking.binders.b;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class g3 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ com.appodeal.ads.networking.binders.b f6685a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g3(com.appodeal.ads.networking.binders.b bVar) {
        super(1);
        this.f6685a = bVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jsonObject.hasValue(Constants.SHOW, Integer.valueOf(((b.C0134b) this.f6685a).a().g()));
        jsonObject.hasValue(Intrinsics.stringPlus(((b.C0134b) this.f6685a).a().a(), "_show"), Integer.valueOf(((b.C0134b) this.f6685a).a().f()));
        jsonObject.hasValue(Constants.CLICK, Integer.valueOf(((b.C0134b) this.f6685a).a().c()));
        jsonObject.hasValue(Intrinsics.stringPlus(((b.C0134b) this.f6685a).a().a(), "_click"), Integer.valueOf(((b.C0134b) this.f6685a).a().b()));
        jsonObject.hasValue(Constants.FINISH, Integer.valueOf(((b.C0134b) this.f6685a).a().e()));
        jsonObject.hasValue(Intrinsics.stringPlus(((b.C0134b) this.f6685a).a().a(), "_finish"), ((b.C0134b) this.f6685a).a().d());
        return Unit.INSTANCE;
    }
}
