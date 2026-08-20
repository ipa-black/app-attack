package com.appodeal.ads;

import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.appodeal.ads.networking.binders.b;
import com.onesignal.outcomes.OSOutcomeConstants;
import com.unity3d.services.core.di.ServiceProvider;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import io.bidmachine.utils.IabUtils;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class j3 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ com.appodeal.ads.networking.binders.b f6750a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j3(com.appodeal.ads.networking.binders.b bVar) {
        super(1);
        this.f6750a = bVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        jsonObject.hasValue("app_key", ((b.e) this.f6750a).c());
        jsonObject.hasValue(ServiceProvider.NAMED_SDK, ((b.e) this.f6750a).E());
        jsonObject.hasValue("os", ((b.e) this.f6750a).r());
        jsonObject.hasValue("os_version", ((b.e) this.f6750a).s());
        jsonObject.hasValue("osv", ((b.e) this.f6750a).t());
        jsonObject.hasValue("platform", ((b.e) this.f6750a).w());
        jsonObject.hasValue(MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID, ((b.e) this.f6750a).a());
        jsonObject.hasValue("android_level", Integer.valueOf(((b.e) this.f6750a).b()));
        jsonObject.hasValue("secure_android_id", ((b.e) this.f6750a).F());
        jsonObject.hasValue("package", ((b.e) this.f6750a).u());
        jsonObject.hasValue("package_version", ((b.e) this.f6750a).v());
        jsonObject.hasValue("install_time", ((b.e) this.f6750a).o());
        jsonObject.hasValue("installer", ((b.e) this.f6750a).p());
        jsonObject.hasValue("framework", ((b.e) this.f6750a).d());
        jsonObject.hasValue("framework_version", ((b.e) this.f6750a).e());
        jsonObject.hasValue("plugins_version", ((b.e) this.f6750a).f());
        jsonObject.hasValue("pxratio", Double.valueOf(((b.e) this.f6750a).C()));
        jsonObject.hasValue(OSOutcomeConstants.DEVICE_TYPE, ((b.e) this.f6750a).l());
        jsonObject.hasValue("http_allowed", Boolean.valueOf(((b.e) this.f6750a).n()));
        jsonObject.hasValue("manufacturer", ((b.e) this.f6750a).q());
        jsonObject.hasValue("model", ((b.e) this.f6750a).k());
        jsonObject.hasValue("rooted", Boolean.valueOf(((b.e) this.f6750a).A()));
        jsonObject.hasValue("webview_version", ((b.e) this.f6750a).K());
        jsonObject.hasValue(IabUtils.KEY_WIDTH, Integer.valueOf(((b.e) this.f6750a).D()));
        jsonObject.hasValue(IabUtils.KEY_HEIGHT, Integer.valueOf(((b.e) this.f6750a).B()));
        jsonObject.hasValue("crr", ((b.e) this.f6750a).j());
        jsonObject.hasValue("battery", Double.valueOf(((b.e) this.f6750a).g()));
        jsonObject.hasValue("storage_size", Long.valueOf(((b.e) this.f6750a).H()));
        jsonObject.hasValue("storage_free", Long.valueOf(((b.e) this.f6750a).G()));
        jsonObject.hasValue("storage_used", Long.valueOf(((b.e) this.f6750a).I()));
        jsonObject.hasValue("ram_size", Long.valueOf(((b.e) this.f6750a).y()));
        jsonObject.hasValue("ram_free", Long.valueOf(((b.e) this.f6750a).x()));
        jsonObject.hasValue("ram_used", Long.valueOf(((b.e) this.f6750a).z()));
        jsonObject.hasValue("cpu_usage", Double.valueOf(((b.e) this.f6750a).i()));
        jsonObject.hasValue("coppa", Boolean.valueOf(((b.e) this.f6750a).h()));
        jsonObject.hasValue("test", ((b.e) this.f6750a).J());
        jsonObject.hasObject("ext", ((b.e) this.f6750a).m());
        return Unit.INSTANCE;
    }
}
