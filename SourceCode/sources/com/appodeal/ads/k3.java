package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilderKt;
import com.appodeal.ads.networking.binders.b;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class k3 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ com.appodeal.ads.networking.binders.b f6820a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k3(com.appodeal.ads.networking.binders.b bVar) {
        super(1);
        this.f6820a = bVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jsonObject.hasValue(SessionDescription.ATTR_TYPE, ((b.a) this.f6820a).b());
        jsonObject.hasValue("main_id", ((b.a) this.f6820a).g());
        jsonObject.hasValue("segment_id", Long.valueOf(((b.a) this.f6820a).i()));
        jsonObject.hasValue("rewarded_video", ((b.a) this.f6820a).h());
        jsonObject.hasValue("large_banners", ((b.a) this.f6820a).f());
        jsonObject.hasValue("show_timestamp", ((b.a) this.f6820a).j());
        jsonObject.hasValue("click_timestamp", ((b.a) this.f6820a).c());
        jsonObject.hasValue("finish_timestamp", ((b.a) this.f6820a).d());
        jsonObject.hasValue("impid", ((b.a) this.f6820a).e());
        b.a.InterfaceC0131a a2 = ((b.a) this.f6820a).a();
        jsonObject.hasObject("ad_properties", a2 == null ? null : JsonObjectBuilderKt.jsonObject(new d3(a2)));
        return Unit.INSTANCE;
    }
}
