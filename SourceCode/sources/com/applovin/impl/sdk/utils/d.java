package com.applovin.impl.sdk.utils;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.applovin.impl.sdk.o;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.Collection;
import java.util.HashSet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f6062a = true;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f6063b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static final Collection<CountDownLatch> f6064c = new HashSet();

    /* renamed from: d  reason: collision with root package name */
    private static boolean f6065d = false;

    /* renamed from: e  reason: collision with root package name */
    private static o.a f6066e = null;

    public static o.a a(Context context) {
        return b(context);
    }

    public static boolean a() {
        return Utils.checkClassExistence("com.google.android.gms.ads.identifier.AdvertisingIdClient");
    }

    private static o.a b(Context context) {
        o.a aVar;
        HashSet<CountDownLatch> hashSet;
        Object obj = f6063b;
        synchronized (obj) {
            if (f6065d) {
                return f6066e;
            }
            Collection<CountDownLatch> collection = f6064c;
            boolean isEmpty = collection.isEmpty();
            CountDownLatch countDownLatch = new CountDownLatch(1);
            collection.add(countDownLatch);
            if (isEmpty) {
                o.a c2 = c(context);
                synchronized (obj) {
                    f6065d = true;
                    f6066e = c2;
                    hashSet = new HashSet(collection);
                    collection.clear();
                }
                for (CountDownLatch countDownLatch2 : hashSet) {
                    countDownLatch2.countDown();
                }
            }
            try {
                if (!countDownLatch.await(60L, TimeUnit.SECONDS)) {
                    v.i("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }: collection timeout");
                }
            } catch (InterruptedException e2) {
                v.c("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }", e2);
            }
            synchronized (f6063b) {
                aVar = f6066e;
            }
            return aVar;
        }
    }

    private static o.a c(Context context) {
        o.a d2 = d(context);
        if (d2 == null) {
            d2 = e(context);
        }
        return d2 == null ? new o.a() : d2;
    }

    private static o.a d(Context context) {
        if (!a()) {
            if (AppLovinSdkUtils.isFireOS(context)) {
                return null;
            }
            v.i("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }");
            return null;
        }
        try {
            o.a aVar = new o.a();
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            boolean isLimitAdTrackingEnabled = advertisingIdInfo.isLimitAdTrackingEnabled();
            aVar.f6005a = isLimitAdTrackingEnabled;
            aVar.f6007c = isLimitAdTrackingEnabled ? o.d.ON : o.d.OFF;
            aVar.f6006b = advertisingIdInfo.getId();
            return aVar;
        } catch (Throwable th) {
            if (AppLovinSdkUtils.isFireOS(context)) {
                return null;
            }
            v.c("DataCollector", "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you're sure you've integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }", th);
            return null;
        }
    }

    private static o.a e(Context context) {
        String str;
        if (f6062a) {
            try {
                ContentResolver contentResolver = context.getContentResolver();
                o.a aVar = new o.a();
                aVar.f6006b = StringUtils.emptyIfNull(Settings.Secure.getString(contentResolver, "advertising_id"));
                boolean z = Settings.Secure.getInt(contentResolver, "limit_ad_tracking") != 0;
                aVar.f6005a = z;
                aVar.f6007c = z ? o.d.ON : o.d.OFF;
                return aVar;
            } catch (Settings.SettingNotFoundException e2) {
                e = e2;
                str = "Unable to determine if Fire OS limited ad tracking is turned on";
                v.c("DataCollector", str, e);
                f6062a = false;
                return null;
            } catch (Throwable th) {
                e = th;
                str = "Unable to collect Fire OS IDFA";
                v.c("DataCollector", str, e);
                f6062a = false;
                return null;
            }
        }
        f6062a = false;
        return null;
    }
}
