package com.appodeal.consent.internal;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.advertising.AdvertisingInfo;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import io.bidmachine.utils.IabUtils;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes2.dex */
public final class i extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AdvertisingInfo.AdvertisingProfile f8130a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ a f8131b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Pair<Integer, Integer> f8132c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(AdvertisingInfo.AdvertisingProfile advertisingProfile, a aVar, Pair<Integer, Integer> pair) {
        super(1);
        this.f8130a = advertisingProfile;
        this.f8131b = aVar;
        this.f8132c = pair;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jsonObject.hasValue("id", this.f8130a.getId());
        jsonObject.hasValue("advertisingTracking", Boolean.valueOf(this.f8130a.isLimitAdTrackingEnabled()));
        jsonObject.hasValue(SessionDescription.ATTR_TYPE, this.f8131b.h());
        jsonObject.hasValue("locale", this.f8131b.j());
        jsonObject.hasValue(IabUtils.KEY_WIDTH, this.f8132c.getFirst());
        jsonObject.hasValue(IabUtils.KEY_HEIGHT, this.f8132c.getSecond());
        jsonObject.hasValue("hwv", this.f8131b.g());
        jsonObject.hasValue("make", this.f8131b.f());
        jsonObject.hasValue("os", this.f8131b.k());
        jsonObject.hasValue("osv", this.f8131b.l());
        return Unit.INSTANCE;
    }
}
