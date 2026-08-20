package com.appodeal.consent.internal;

import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.amazon.aps.shared.APSAnalytics;
import com.appodeal.advertising.AdvertisingInfo;
import com.appodeal.consent.Consent;
import com.appodeal.consent.ConsentManager;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final Context f8072a;

    /* renamed from: b  reason: collision with root package name */
    public final String f8073b;

    /* renamed from: c  reason: collision with root package name */
    public final Consent f8074c;

    /* renamed from: d  reason: collision with root package name */
    public final AdvertisingInfo.AdvertisingProfile f8075d;

    /* renamed from: e  reason: collision with root package name */
    public final Map<?, ?> f8076e;

    /* renamed from: f  reason: collision with root package name */
    public final String f8077f;

    /* renamed from: g  reason: collision with root package name */
    public final String f8078g;

    /* renamed from: h  reason: collision with root package name */
    public final String f8079h;
    public final String i;
    public final Lazy j;
    public final String k;
    public final String l;
    public final String m;
    public final String n;
    public final Lazy o;

    /* renamed from: com.appodeal.consent.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0154a extends Lambda implements Function0<String> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0154a f8080a = new C0154a();

        public C0154a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final String invoke() {
            try {
                Object invoke = Class.forName("com.appodeal.ads.Appodeal").getDeclaredMethod(MobileAdsBridge.versionMethodName, new Class[0]).invoke(null, new Object[0]);
                String str = invoke instanceof String ? (String) invoke : null;
                return str == null ? new String() : str;
            } catch (Throwable unused) {
                return new String();
            }
        }
    }

    /* loaded from: classes2.dex */
    public static final class b extends Lambda implements Function0<Pair<? extends Integer, ? extends Integer>> {
        public b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final Pair<? extends Integer, ? extends Integer> invoke() {
            DisplayMetrics displayMetrics = a.this.f8072a.getResources().getDisplayMetrics();
            return TuplesKt.to(Integer.valueOf(displayMetrics.widthPixels), Integer.valueOf(displayMetrics.heightPixels));
        }
    }

    public a(Context context, String appKey, Consent consent, AdvertisingInfo.AdvertisingProfile advertisingProfile, Map<?, ?> extraData, String deviceModel, String deviceManufacturer, String osVersion, String locale) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(consent, "consent");
        Intrinsics.checkNotNullParameter(advertisingProfile, "advertisingProfile");
        Intrinsics.checkNotNullParameter(extraData, "extraData");
        Intrinsics.checkNotNullParameter(deviceModel, "deviceModel");
        Intrinsics.checkNotNullParameter(deviceManufacturer, "deviceManufacturer");
        Intrinsics.checkNotNullParameter(osVersion, "osVersion");
        Intrinsics.checkNotNullParameter(locale, "locale");
        this.f8072a = context;
        this.f8073b = appKey;
        this.f8074c = consent;
        this.f8075d = advertisingProfile;
        this.f8076e = extraData;
        this.f8077f = deviceModel;
        this.f8078g = deviceManufacturer;
        this.f8079h = osVersion;
        this.i = locale;
        this.j = LazyKt.lazy(new b());
        this.k = ConsentManager.getVersion();
        String packageName = context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
        this.l = packageName;
        this.m = o() ? "tablet" : "phone";
        this.n = APSAnalytics.OS_NAME;
        this.o = LazyKt.lazy(C0154a.f8080a);
    }

    public final AdvertisingInfo.AdvertisingProfile a() {
        return this.f8075d;
    }

    public final String b() {
        return this.f8073b;
    }

    public final String c() {
        return (String) this.o.getValue();
    }

    public final Consent d() {
        return this.f8074c;
    }

    public final String e() {
        return this.k;
    }

    public final String f() {
        return this.f8078g;
    }

    public final String g() {
        return this.f8077f;
    }

    public final String h() {
        return this.m;
    }

    public final Map<?, ?> i() {
        return this.f8076e;
    }

    public final String j() {
        return this.i;
    }

    public final String k() {
        return this.n;
    }

    public final String l() {
        return this.f8079h;
    }

    public final String m() {
        return this.l;
    }

    public final Pair<Integer, Integer> n() {
        return (Pair) this.j.getValue();
    }

    public final boolean o() {
        Object systemService = this.f8072a.getSystemService("window");
        if (systemService != null) {
            Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
            Intrinsics.checkNotNullExpressionValue(defaultDisplay, "windowManager.defaultDisplay");
            DisplayMetrics displayMetrics = this.f8072a.getResources().getDisplayMetrics();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            defaultDisplay.getMetrics(displayMetrics);
            return Math.sqrt(Math.pow((double) (((float) point.y) / displayMetrics.ydpi), 2.0d) + Math.pow((double) (((float) point.x) / displayMetrics.xdpi), 2.0d)) > 7.0d;
        }
        throw new NullPointerException("null cannot be cast to non-null type android.view.WindowManager");
    }
}
