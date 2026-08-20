package com.appodeal.ads;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.webkit.WebSettings;
import com.appodeal.ads.UserSettings;
import com.appodeal.ads.modules.common.internal.data.ConnectionData;
import com.appodeal.ads.utils.Log;
import java.util.HashMap;
/* loaded from: classes.dex */
public class j4 implements RestrictedData {

    /* renamed from: a  reason: collision with root package name */
    public static final j4 f6751a = new j4();

    /* renamed from: b  reason: collision with root package name */
    public static String f6752b;

    @Override // com.appodeal.ads.RestrictedData
    public final boolean canSendLocation() {
        return (i0.a() || isParameterBlocked(com.appnext.base.b.i.fC) || isParameterBlocked("lon")) ? false : true;
    }

    @Override // com.appodeal.ads.RestrictedData
    public final boolean canSendLocationType() {
        return (i0.a() || isParameterBlocked("lt")) ? false : true;
    }

    @Override // com.appodeal.ads.RestrictedData
    public final boolean canSendUserSettings() {
        return (i0.a() || isParameterBlocked("user_settings")) ? false : true;
    }

    @Override // com.appodeal.ads.RestrictedData
    @Deprecated
    public final Integer getAge() {
        if (canSendUserSettings()) {
            return l5.a().f6847c;
        }
        return null;
    }

    @Override // com.appodeal.ads.RestrictedData
    public final String getCity() {
        if (canSendUserSettings()) {
            return l5.a().j;
        }
        return null;
    }

    @Override // com.appodeal.ads.RestrictedData
    public final ConnectionData getConnectionData(Context context) {
        return f1.c(context);
    }

    @Override // com.appodeal.ads.RestrictedData
    public final String getCountry() {
        if (canSendUserSettings()) {
            return l5.a().f6850f;
        }
        return null;
    }

    @Override // com.appodeal.ads.RestrictedData
    @Deprecated
    public final UserSettings.Gender getGender() {
        if (canSendUserSettings()) {
            return l5.a().f6846b;
        }
        return null;
    }

    @Override // com.appodeal.ads.RestrictedData
    public final String getHttpAgent(Context context) {
        String str;
        String str2 = null;
        if (canSendUserSettings()) {
            String str3 = f6752b;
            if (str3 != null) {
                return str3;
            }
            if (context == null) {
                return null;
            }
            try {
                f6752b = WebSettings.getDefaultUserAgent(context);
            } catch (Throwable th) {
                Log.log(th);
            }
            if (f6752b == null) {
                try {
                    StringBuilder sb = new StringBuilder("Mozilla/5.0 (Linux; Android ");
                    HashMap hashMap = f1.f6654a;
                    sb.append(Build.VERSION.RELEASE).append("; ").append(Build.MODEL).append(" Build/").append(Build.ID).append("; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0");
                    PackageManager packageManager = context.getPackageManager();
                    sb.append(" Chrome/").append(packageManager.getPackageInfo("com.google.android.webview", 0).versionName);
                    sb.append(" Mobile");
                    ApplicationInfo applicationInfo = context.getApplicationInfo();
                    PackageInfo packageInfo = packageManager.getPackageInfo(context.getPackageName(), 0);
                    StringBuilder append = sb.append(" ");
                    int i = applicationInfo.labelRes;
                    append.append(i == 0 ? applicationInfo.nonLocalizedLabel.toString() : context.getString(i)).append("/").append(packageInfo.versionName);
                    str = sb.toString();
                } catch (Throwable unused) {
                    str = null;
                }
                f6752b = str;
            }
            if (f6752b == null) {
                try {
                    str2 = System.getProperty("http.agent", "");
                } catch (Throwable th2) {
                    Log.log(th2);
                }
                f6752b = str2;
            }
            if (f6752b == null) {
                f6752b = "";
            }
            return f6752b;
        }
        return null;
    }

    @Override // com.appodeal.ads.RestrictedData
    public final String getIabConsentString() {
        x2.f7895a.getClass();
        return x2.e().f();
    }

    @Override // com.appodeal.ads.RestrictedData
    public final String getIfa() {
        return x2.a();
    }

    @Override // com.appodeal.ads.RestrictedData
    public final String getIp() {
        if (canSendUserSettings()) {
            return l5.a().f6848d;
        }
        return null;
    }

    @Override // com.appodeal.ads.RestrictedData
    public final LocationData getLocation(Context context) {
        return new z1(context, this);
    }

    @Override // com.appodeal.ads.RestrictedData
    public final String getUSPrivacyString() {
        x2.f7895a.getClass();
        return x2.e().getUSPrivacyString();
    }

    @Override // com.appodeal.ads.RestrictedData
    public final String getUserId() {
        return l5.a().f6845a;
    }

    @Override // com.appodeal.ads.RestrictedData
    public final String getZip() {
        if (canSendUserSettings()) {
            return l5.a().k;
        }
        return null;
    }

    @Override // com.appodeal.ads.RestrictedData
    public final boolean isLimitAdTrackingEnabled() {
        return x2.i();
    }

    @Override // com.appodeal.ads.RestrictedData
    public final boolean isParameterBlocked(String str) {
        x2.f7895a.getClass();
        return ((x2.e().a() && !x2.g()) || (x2.e().g() && !x2.g())) && x2.a(str);
    }

    @Override // com.appodeal.ads.RestrictedData
    public final boolean isUserAgeRestricted() {
        return i0.a();
    }

    @Override // com.appodeal.ads.RestrictedData
    public final boolean isUserCcpaProtected() {
        x2.f7895a.getClass();
        return x2.e().g() && !x2.g();
    }

    @Override // com.appodeal.ads.RestrictedData
    public final boolean isUserGdprProtected() {
        x2.f7895a.getClass();
        return x2.e().a() && !x2.g();
    }

    @Override // com.appodeal.ads.RestrictedData
    public boolean isUserHasConsent() {
        return x2.g();
    }

    @Override // com.appodeal.ads.RestrictedData
    public final boolean isUserInCcpaScope() {
        x2.f7895a.getClass();
        return x2.e().g();
    }

    @Override // com.appodeal.ads.RestrictedData
    public final boolean isUserInGdprScope() {
        x2.f7895a.getClass();
        return x2.e().a();
    }

    @Override // com.appodeal.ads.RestrictedData
    public final boolean isUserProtected() {
        x2.f7895a.getClass();
        return (x2.e().a() && !x2.g()) || (x2.e().g() && !x2.g());
    }
}
