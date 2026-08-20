package com.appodeal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.appodeal.ads.modules.common.internal.data.ApplicationData;
import com.appodeal.ads.utils.Log;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class j0 implements ApplicationData {

    /* renamed from: c  reason: collision with root package name */
    public static final j0 f6745c = new j0();

    /* renamed from: a  reason: collision with root package name */
    public final Lazy f6746a = LazyKt.lazy(a.f6748a);

    /* renamed from: b  reason: collision with root package name */
    public final List<String> f6747b = CollectionsKt.listOf((Object[]) new String[]{"com.android.vending", "com.google.android.feedback", "com.amazon.venezia"});

    /* loaded from: classes.dex */
    public static final class a extends Lambda implements Function0<com.appodeal.ads.storage.o> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f6748a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final com.appodeal.ads.storage.o invoke() {
            return com.appodeal.ads.storage.o.f7663b;
        }
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final String getAppName() {
        return i0.f6728a;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final String getBuildVersion() {
        String RELEASE = Build.VERSION.RELEASE;
        Intrinsics.checkNotNullExpressionValue(RELEASE, "RELEASE");
        return RELEASE;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final String getFrameworkName() {
        return q4.f7309g;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final String getFrameworkVersion() {
        return q4.i;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final String getInstaller(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            return context.getPackageManager().getInstallerPackageName(context.getPackageName());
        } catch (Throwable th) {
            Log.log(th);
            return null;
        }
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final String getPackageName(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String packageName = context.getPackageName();
        Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
        return packageName;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final String getPluginVersion() {
        return q4.f7310h;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final String getSdkKey() {
        return ((com.appodeal.ads.storage.a) this.f6746a.getValue()).c();
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final String getSdkVersion() {
        return q4.n();
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final long getSegmentId() {
        return com.appodeal.ads.segments.n.c().f7528a;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.SessionData
    public final String getSessionUuid() {
        return q4.m().j();
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final String getTargetSdkVersion(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return String.valueOf(context.getApplicationInfo().targetSdkVersion);
    }

    @Override // com.appodeal.ads.modules.common.internal.data.SessionData
    public final long getUptime() {
        return q4.m().h();
    }

    @Override // com.appodeal.ads.modules.common.internal.data.SessionData
    public final long getUptimeMono() {
        return q4.m().i();
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final int getVersionCode(Context context) {
        PackageInfo packageInfo;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            PackageManager packageManager = context.getPackageManager();
            Intrinsics.checkNotNullParameter(context, "context");
            String packageName = context.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
            packageInfo = packageManager.getPackageInfo(packageName, 0);
        } catch (Throwable th) {
            Log.log(th);
            packageInfo = null;
        }
        if (packageInfo == null) {
            return 0;
        }
        return packageInfo.versionCode;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final String getVersionName(Context context) {
        PackageInfo packageInfo;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            PackageManager packageManager = context.getPackageManager();
            Intrinsics.checkNotNullParameter(context, "context");
            String packageName = context.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
            packageInfo = packageManager.getPackageInfo(packageName, 0);
        } catch (Throwable th) {
            Log.log(th);
            packageInfo = null;
        }
        if (packageInfo == null) {
            return null;
        }
        return packageInfo.versionName;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final boolean isAppodealInitialized() {
        return q4.f7305c;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final boolean isAppodealInitializing() {
        return q4.f7304b;
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final boolean isSideLoaded(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String installer = getInstaller(context);
        return installer != null && this.f6747b.contains(installer);
    }

    @Override // com.appodeal.ads.modules.common.internal.data.ApplicationData
    public final boolean isTestMode() {
        return r0.f7342b;
    }
}
