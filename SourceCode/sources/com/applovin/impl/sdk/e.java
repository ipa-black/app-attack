package com.applovin.impl.sdk;

import android.os.Bundle;
import android.text.TextUtils;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAdFormat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class e implements AppLovinCommunicatorSubscriber {

    /* renamed from: a  reason: collision with root package name */
    private final n f5664a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f5665b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private final LinkedHashMap<String, Bundle> f5666c = new LinkedHashMap<String, Bundle>() { // from class: com.applovin.impl.sdk.e.1
        @Override // java.util.LinkedHashMap
        protected boolean removeEldestEntry(Map.Entry<String, Bundle> entry) {
            return size() > 16;
        }
    };

    /* renamed from: d  reason: collision with root package name */
    private final Set<a> f5667d = Collections.synchronizedSet(new HashSet());

    /* loaded from: classes.dex */
    public interface a {
        void onCreativeIdGenerated(String str, String str2);
    }

    public e(n nVar) {
        this.f5664a = nVar;
        if (StringUtils.isValidString(a())) {
            AppLovinCommunicator.getInstance(nVar.P()).subscribe(this, "safedk_ad_info");
        }
    }

    public static String a() {
        return c(MobileAdsBridge.versionMethodName);
    }

    public static String b() {
        return c("getSdkKey");
    }

    private static String c(String str) {
        try {
            return (String) Class.forName("com.applovin.quality.AppLovinQualityService").getMethod(str, new Class[0]).invoke(null, new Object[0]);
        } catch (Throwable unused) {
            return "";
        }
    }

    public Bundle a(String str) {
        Bundle bundle;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.f5665b) {
            bundle = this.f5666c.get(str);
        }
        return bundle;
    }

    public void a(a aVar) {
        this.f5667d.add(aVar);
    }

    public void b(a aVar) {
        this.f5667d.remove(aVar);
    }

    public void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f5665b) {
            this.f5666c.remove(str);
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return "e";
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("safedk_ad_info".equals(appLovinCommunicatorMessage.getTopic())) {
            Bundle bundle = appLovinCommunicatorMessage.getMessageData().getBundle("public");
            if (bundle == null) {
                this.f5664a.D();
                if (v.a()) {
                    this.f5664a.D().d("AppLovinSdk", "Received SafeDK ad info without public data");
                    return;
                }
                return;
            }
            Bundle bundle2 = appLovinCommunicatorMessage.getMessageData().getBundle("private");
            if (bundle2 == null) {
                this.f5664a.D();
                if (v.a()) {
                    this.f5664a.D().d("AppLovinSdk", "Received SafeDK ad info without private data");
                }
            } else if (MaxAdFormat.formatFromString(bundle2.getString(FirebaseAnalytics.Param.AD_FORMAT)) == null) {
                this.f5664a.D();
                if (v.a()) {
                    this.f5664a.D().d("AppLovinSdk", "Received SafeDK ad info without ad format");
                }
            } else {
                final String string = bundle2.getString("id");
                if (TextUtils.isEmpty(string)) {
                    this.f5664a.D();
                    if (v.a()) {
                        this.f5664a.D().d("AppLovinSdk", "Received SafeDK ad info without serve id");
                        return;
                    }
                    return;
                }
                synchronized (this.f5665b) {
                    this.f5664a.D();
                    if (v.a()) {
                        this.f5664a.D().b("AppLovinSdk", "Storing current SafeDK ad info for serve id: " + string);
                    }
                    this.f5666c.put(string, bundle);
                }
                final String string2 = bundle.getString("ad_review_creative_id");
                if (!StringUtils.isValidString(string2) || this.f5667d.isEmpty()) {
                    return;
                }
                Iterator it = new HashSet(this.f5667d).iterator();
                while (it.hasNext()) {
                    final a aVar = (a) it.next();
                    this.f5664a.V().a(new com.applovin.impl.sdk.e.z(this.f5664a, new Runnable() { // from class: com.applovin.impl.sdk.e.2
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.onCreativeIdGenerated(string, string2);
                        }
                    }), o.a.BACKGROUND);
                }
            }
        }
    }
}
