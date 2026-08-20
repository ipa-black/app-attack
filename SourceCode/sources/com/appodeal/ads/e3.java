package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.networking.binders.b;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class e3 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ com.appodeal.ads.networking.binders.b f6643a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e3(com.appodeal.ads.networking.binders.b bVar) {
        super(1);
        this.f6643a = bVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jsonObject.hasValue("session_id", Long.valueOf(((b.l) this.f6643a).e()));
        jsonObject.hasValue("session_uuid", ((b.l) this.f6643a).j());
        jsonObject.hasValue("session_uptime", Long.valueOf(((b.l) this.f6643a).h()));
        jsonObject.hasValue("session_uptime_m", Long.valueOf(((b.l) this.f6643a).i()));
        jsonObject.hasValue("session_start_ts", Long.valueOf(((b.l) this.f6643a).f()));
        jsonObject.hasValue("session_start_ts_m", Long.valueOf(((b.l) this.f6643a).g()));
        jsonObject.hasValue("app_uptime", Long.valueOf(((b.l) this.f6643a).c()));
        jsonObject.hasValue("app_uptime_m", Long.valueOf(((b.l) this.f6643a).d()));
        jsonObject.hasValue("app_session_average_length", Long.valueOf(((b.l) this.f6643a).a()));
        jsonObject.hasValue("app_session_average_length_m", Long.valueOf(((b.l) this.f6643a).b()));
        return Unit.INSTANCE;
    }
}
