package com.appodeal.ads;

import android.content.Context;
import com.appodeal.ads.modules.common.internal.data.ApplicationData;
import com.appodeal.ads.modules.common.internal.data.DeviceData;
import com.appodeal.ads.modules.common.internal.data.UserPersonalData;
import com.appodeal.ads.modules.common.internal.service.InitializationMode;
import com.appodeal.ads.modules.common.internal.service.ServiceOptions;
import com.appodeal.ads.modules.common.internal.service.ServiceVariant;
import com.appodeal.ads.networking.b;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes.dex */
public final class l1 {

    /* loaded from: classes.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ServiceVariant.values().length];
            iArr[ServiceVariant.Appsflyer.ordinal()] = 1;
            iArr[ServiceVariant.Adjust.ordinal()] = 2;
            iArr[ServiceVariant.FacebookAnalytics.ordinal()] = 3;
            iArr[ServiceVariant.Firebase.ordinal()] = 4;
            iArr[ServiceVariant.StackAnalytics.ordinal()] = 5;
            iArr[ServiceVariant.SentryAnalytics.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static ServiceOptions a(Context context, ServiceVariant variant, com.appodeal.ads.networking.b loadedConfig, boolean z, b5 serviceConnector, String deviceAdvertisingId, ApplicationData applicationData, DeviceData deviceData, UserPersonalData userPersonalData) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(variant, "variant");
        Intrinsics.checkNotNullParameter(loadedConfig, "loadedConfig");
        Intrinsics.checkNotNullParameter(serviceConnector, "serviceConnector");
        Intrinsics.checkNotNullParameter(deviceAdvertisingId, "deviceAdvertisingId");
        Intrinsics.checkNotNullParameter(applicationData, "applicationData");
        Intrinsics.checkNotNullParameter(deviceData, "deviceData");
        Intrinsics.checkNotNullParameter(userPersonalData, "userPersonalData");
        switch (a.$EnumSwitchMapping$0[variant.ordinal()]) {
            case 1:
                b.C0130b b2 = loadedConfig.b();
                if (b2 != null) {
                    return new ServiceOptions.Appsflyer(context, b2.a(), b2.c(), InitializationMode.Companion.get(b2.e()), b2.b(), b2.d(), b2.f(), b2.g(), z, serviceConnector);
                }
                break;
            case 2:
                b.a a2 = loadedConfig.a();
                if (a2 != null) {
                    return new ServiceOptions.Adjust(context, a2.a(), deviceAdvertisingId, a2.c(), a2.b(), InitializationMode.Companion.get(a2.e()), a2.d(), a2.f(), a2.g(), z, serviceConnector);
                }
                break;
            case 3:
                b.c c2 = loadedConfig.c();
                if (c2 != null) {
                    return new ServiceOptions.FacebookAnalytics(context, true, c2.b(), c2.c(), z, serviceConnector);
                }
                break;
            case 4:
                b.d d2 = loadedConfig.d();
                if (d2 != null) {
                    return new ServiceOptions.Firebase(context, d2.c(), d2.b(), d2.a(), InitializationMode.Companion.get(d2.e()), d2.d(), d2.f(), d2.g(), z, serviceConnector);
                }
                break;
            case 5:
                b.f f2 = loadedConfig.f();
                if (f2 != null) {
                    return new ServiceOptions.StackAnalytics(context, f2.f(), f2.e(), f2.d(), f2.c(), f2.a(), f2.h(), deviceData, applicationData, userPersonalData, z, f2.g(), false, serviceConnector, 4096, null);
                }
                break;
            case 6:
                b.e e2 = loadedConfig.e();
                if (e2 != null) {
                    return new ServiceOptions.SentryAnalytics(context, e2.d(), e2.e(), e2.c(), e2.g(), e2.b(), e2.f(), deviceData, applicationData, userPersonalData, z, false, false, serviceConnector, 6144, null);
                }
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        return null;
    }
}
