package com.appodeal.ads;

import android.content.Context;
import android.os.Build;
import com.amazon.aps.shared.APSAnalytics;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.ext.JsonObjectBuilder;
import com.onesignal.outcomes.OSOutcomeConstants;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.StringCompanionObject;
/* loaded from: classes.dex */
public final class p0 extends Lambda implements Function1<JsonObjectBuilder, Unit> {

    /* renamed from: a  reason: collision with root package name */
    public static final p0 f7281a = new p0();

    public p0() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Unit invoke(JsonObjectBuilder jsonObjectBuilder) {
        JsonObjectBuilder jsonObject = jsonObjectBuilder;
        Intrinsics.checkNotNullParameter(jsonObject, "$this$jsonObject");
        j4 j4Var = j4.f6751a;
        jsonObject.hasValue("device_id", j4Var.getIfa());
        jsonObject.hasValue("os", APSAnalytics.OS_NAME);
        jsonObject.hasValue("sdk_version", Constants.SDK_VERSION);
        String str = Build.VERSION.RELEASE;
        jsonObject.hasValue("os_version", str);
        jsonObject.hasValue("osv", str);
        Context applicationContext = com.appodeal.ads.context.b.f6583b.getApplicationContext();
        jsonObject.hasValue("package_name", applicationContext.getPackageName());
        jsonObject.hasValue(OSOutcomeConstants.DEVICE_TYPE, f1.r(applicationContext) ? "tablet" : "phone");
        jsonObject.hasValue("connection_type", j4Var.getConnectionData(applicationContext).getType());
        jsonObject.hasValue("user_agent", j4Var.getHttpAgent(applicationContext));
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format("%s %s", Arrays.copyOf(new Object[]{Build.MANUFACTURER, Build.MODEL}, 2));
        Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
        jsonObject.hasValue("model", format);
        return Unit.INSTANCE;
    }
}
