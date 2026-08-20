package com.applovin.impl.sdk;

import android.content.pm.PackageInfo;
import android.os.Build;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.sdk.AppLovinSdk;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class p {

    /* renamed from: a  reason: collision with root package name */
    protected final n f6017a;

    /* renamed from: b  reason: collision with root package name */
    protected final v f6018b;

    /* renamed from: c  reason: collision with root package name */
    private final String f6019c;

    public p(String str, n nVar) {
        this.f6019c = str;
        this.f6017a = nVar;
        this.f6018b = nVar.D();
    }

    private Map<String, String> b(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        hashMap.put(SessionDescription.ATTR_TYPE, this.f6019c);
        hashMap.put("platform", this.f6017a.Y().f());
        hashMap.put("applovin_random_token", this.f6017a.p());
        hashMap.put("compass_random_token", this.f6017a.o());
        hashMap.put("model", Build.MODEL);
        hashMap.put("brand", Build.MANUFACTURER);
        hashMap.put("brand_name", Build.BRAND);
        hashMap.put("hardware", Build.HARDWARE);
        hashMap.put("revision", Build.DEVICE);
        hashMap.put("os", Build.VERSION.RELEASE);
        hashMap.put("api_level", String.valueOf(Build.VERSION.SDK_INT));
        hashMap.put("sdk_version", String.valueOf(AppLovinSdk.VERSION));
        hashMap.put("aei", String.valueOf(this.f6017a.a(com.applovin.impl.sdk.c.b.au)));
        hashMap.put("mei", String.valueOf(this.f6017a.a(com.applovin.impl.sdk.c.b.av)));
        c(hashMap);
        d(hashMap);
        if (map != null) {
            hashMap.putAll(map);
        }
        return hashMap;
    }

    private void c(Map<String, String> map) {
        PackageInfo packageInfo;
        try {
            packageInfo = this.f6017a.P().getPackageManager().getPackageInfo(this.f6017a.P().getPackageName(), 0);
        } catch (Throwable unused) {
            packageInfo = null;
        }
        map.put("app_version", packageInfo != null ? packageInfo.versionName : "");
        map.put("app_version_code", String.valueOf(packageInfo != null ? packageInfo.versionCode : 0));
    }

    private void d(Map<String, String> map) {
        String str;
        Object c2 = this.f6017a.ah().c();
        if (c2 instanceof com.applovin.impl.sdk.ad.e) {
            map.put("fs_ad_network", "AppLovin");
            str = Long.toString(((com.applovin.impl.sdk.ad.e) c2).getAdIdNumber());
        } else if (c2 instanceof com.applovin.impl.mediation.a.a) {
            com.applovin.impl.mediation.a.a aVar = (com.applovin.impl.mediation.a.a) c2;
            map.put("fs_ad_network", aVar.getNetworkName());
            str = aVar.getCreativeId();
        } else {
            str = "None";
            map.put("fs_ad_network", "None");
        }
        map.put("fs_ad_creative_id", str);
    }

    public void a(Map<String, String> map) {
        if (v.a()) {
            this.f6018b.b("ErrorReporter", "Reporting " + this.f6019c + " error...");
        }
        this.f6017a.X().a(com.applovin.impl.sdk.network.h.o().c("https://ms.applovin.com/1.0/sdk/error").a(false).b(ShareTarget.METHOD_POST).a(b(map)).a());
    }
}
