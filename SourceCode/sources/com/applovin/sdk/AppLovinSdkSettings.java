package com.applovin.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.v;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class AppLovinSdkSettings {

    /* renamed from: a  reason: collision with root package name */
    private boolean f6340a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f6341b;

    /* renamed from: g  reason: collision with root package name */
    private String f6346g;
    private n l;

    /* renamed from: f  reason: collision with root package name */
    private boolean f6345f = true;
    private final Map<String, Object> localSettings = CollectionUtils.map();
    private final Map<String, String> metaData = CollectionUtils.map();

    /* renamed from: h  reason: collision with root package name */
    private List<String> f6347h = Collections.emptyList();
    private List<String> i = Collections.emptyList();
    private final Map<String, String> j = CollectionUtils.map();
    private final Object k = new Object();

    /* renamed from: c  reason: collision with root package name */
    private boolean f6342c = true;

    /* renamed from: d  reason: collision with root package name */
    private boolean f6343d = true;

    /* renamed from: e  reason: collision with root package name */
    private boolean f6344e = true;

    public AppLovinSdkSettings(Context context) {
        this.f6340a = Utils.isVerboseLoggingEnabled(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void attachAppLovinSdk(n nVar) {
        this.l = nVar;
        if (StringUtils.isValidString(this.f6346g)) {
            nVar.N().a(true);
            nVar.N().a(this.f6346g);
            this.f6346g = null;
        }
    }

    public Map<String, String> getExtraParameters() {
        Map<String, String> map;
        synchronized (this.k) {
            map = CollectionUtils.map(this.j);
        }
        return map;
    }

    public List<String> getInitializationAdUnitIds() {
        return this.i;
    }

    public List<String> getTestDeviceAdvertisingIds() {
        return this.f6347h;
    }

    public boolean isCreativeDebuggerEnabled() {
        return this.f6342c;
    }

    public boolean isExceptionHandlerEnabled() {
        return this.f6343d;
    }

    public boolean isLocationCollectionEnabled() {
        return this.f6344e;
    }

    public boolean isMuted() {
        return this.f6341b;
    }

    public boolean isVerboseLoggingEnabled() {
        return this.f6340a;
    }

    public void setCreativeDebuggerEnabled(boolean z) {
        v.j("AppLovinSdkSettings", "setCreativeDebuggerEnabled(creativeDebuggerEnabled=" + z + ")");
        this.f6342c = z;
    }

    public void setExceptionHandlerEnabled(boolean z) {
        v.j("AppLovinSdkSettings", "setExceptionHandlerEnabled(exceptionHandlerEnabled=" + z + ")");
        this.f6343d = z;
    }

    public void setExtraParameter(String str, String str2) {
        v.j("AppLovinSdkSettings", "setExtraParameter(key=" + str + ", value=" + str2 + ")");
        if (TextUtils.isEmpty(str)) {
            v.i("AppLovinSdkSettings", "Failed to set extra parameter for null or empty key: " + str);
            return;
        }
        String trim = str2 != null ? str2.trim() : null;
        synchronized (this.k) {
            this.j.put(str, trim);
        }
        if ("test_mode_network".equalsIgnoreCase(str)) {
            if (this.l == null) {
                this.f6346g = trim;
            } else if (StringUtils.isValidString(trim)) {
                this.l.N().a(true);
                this.l.N().a(trim);
            } else {
                this.l.N().a(false);
                this.l.N().a((String) null);
            }
        }
    }

    public void setInitializationAdUnitIds(List<String> list) {
        v.j("AppLovinSdkSettings", "setInitializationAdUnitIds(initializationAdUnitIds=" + list + ")");
        if (list == null) {
            this.i = Collections.emptyList();
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            if (StringUtils.isValidString(str) && str.length() > 0) {
                if (str.length() == 16) {
                    arrayList.add(str);
                } else {
                    v.i("AppLovinSdkSettings", "Unable to set initialization ad unit id (" + str + ") - please make sure it is in the format of XXXXXXXXXXXXXXXX");
                }
            }
        }
        this.i = arrayList;
    }

    public void setLocationCollectionEnabled(boolean z) {
        v.j("AppLovinSdkSettings", "setLocationCollectionEnabled(locationCollectionEnabled=" + z + ")");
        this.f6344e = z;
    }

    public void setMuted(boolean z) {
        v.j("AppLovinSdkSettings", "setMuted(muted=" + z + ")");
        this.f6341b = z;
    }

    public void setShouldFailAdDisplayIfDontKeepActivitiesIsEnabled(boolean z) {
        v.j("AppLovinSdkSettings", "setShouldFailAdDisplayIfDontKeepActivitiesIsEnabled(shouldFailAdDisplayIfDontKeepActivitiesIsEnabled=" + z + ")");
        this.f6345f = z;
    }

    public void setTestDeviceAdvertisingIds(List<String> list) {
        v.j("AppLovinSdkSettings", "setTestDeviceAdvertisingIds(testDeviceAdvertisingIds=" + list + ")");
        if (list == null) {
            this.f6347h = Collections.emptyList();
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (String str : list) {
            if (str == null || str.length() != 36) {
                v.i("AppLovinSdkSettings", "Unable to set test device advertising id (" + str + ") - please make sure it is in the format of xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx");
            } else {
                arrayList.add(str);
            }
        }
        this.f6347h = arrayList;
    }

    public void setVerboseLogging(boolean z) {
        v.j("AppLovinSdkSettings", "setVerboseLogging(isVerboseLoggingEnabled=" + z + ")");
        if (!Utils.isVerboseLoggingConfigured()) {
            this.f6340a = z;
            return;
        }
        v.i("AppLovinSdkSettings", "Ignoring setting of verbose logging - it is configured from Android manifest already.");
        if (Utils.isVerboseLoggingEnabled(null) != z) {
            v.i("AppLovinSdkSettings", "Attempted to programmatically set verbose logging flag to value different from value configured in Android Manifest.");
        }
    }

    public boolean shouldFailAdDisplayIfDontKeepActivitiesIsEnabled() {
        return this.f6345f;
    }

    public String toString() {
        return "AppLovinSdkSettings{isVerboseLoggingEnabled=" + this.f6340a + ", muted=" + this.f6341b + ", testDeviceAdvertisingIds=" + this.f6347h.toString() + ", initializationAdUnitIds=" + this.i.toString() + ", creativeDebuggerEnabled=" + this.f6342c + ", exceptionHandlerEnabled=" + this.f6343d + ", locationCollectionEnabled=" + this.f6344e + '}';
    }
}
