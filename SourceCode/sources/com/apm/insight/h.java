package com.apm.insight;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import com.amazon.aps.shared.APSAnalytics;
import com.apm.insight.l.u;
import com.onesignal.OSNotificationFormatHelper;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class h {

    /* renamed from: b  reason: collision with root package name */
    protected static MonitorCrash f869b;

    /* renamed from: c  reason: collision with root package name */
    protected static volatile ConcurrentHashMap<String, h> f870c = new ConcurrentHashMap<>();

    /* renamed from: a  reason: collision with root package name */
    protected MonitorCrash f871a;

    private h(MonitorCrash monitorCrash) {
        this.f871a = monitorCrash;
        com.apm.insight.entity.b.a(this);
        com.apm.insight.j.b.d();
        com.apm.insight.k.k.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static h a(String str) {
        return f870c.get(str);
    }

    public static Object a() {
        return f869b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Context context, final MonitorCrash monitorCrash) {
        f869b = monitorCrash;
        h hVar = new h(monitorCrash);
        final com.apm.insight.runtime.d a2 = i.a();
        Npth.init(context, new ICommonParams() { // from class: com.apm.insight.h.1
            @Override // com.apm.insight.ICommonParams
            public Map<String, Object> getCommonParams() {
                return com.apm.insight.l.k.b(h.this.e());
            }

            @Override // com.apm.insight.ICommonParams
            public String getDeviceId() {
                return TextUtils.isEmpty(monitorCrash.mConfig.mDeviceId) ? a2.d() : monitorCrash.mConfig.mDeviceId;
            }

            @Override // com.apm.insight.ICommonParams
            public List<String> getPatchInfo() {
                return null;
            }

            @Override // com.apm.insight.ICommonParams
            public Map<String, Integer> getPluginInfo() {
                return null;
            }

            @Override // com.apm.insight.ICommonParams
            public String getSessionId() {
                return null;
            }

            @Override // com.apm.insight.ICommonParams
            public long getUserId() {
                return 0L;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(MonitorCrash monitorCrash) {
        h hVar = new h(monitorCrash);
        if (monitorCrash == null || monitorCrash.mConfig == null) {
            return;
        }
        f870c.put(monitorCrash.mConfig.mAid, hVar);
    }

    private JSONObject b(CrashType crashType) {
        Map<? extends String, ? extends String> userData;
        if (this.f871a.mCustomData == null || (userData = this.f871a.mCustomData.getUserData(crashType)) == null) {
            return null;
        }
        return new JSONObject(userData);
    }

    private JSONObject c(CrashType crashType) {
        return new JSONObject(this.f871a.mTagMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject e() {
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f871a.mConfig.mPackageName == null) {
                Context g2 = i.g();
                PackageInfo packageInfo = g2.getPackageManager().getPackageInfo(g2.getPackageName(), 128);
                if (packageInfo != null) {
                    if (this.f871a.mConfig.mVersionInt == -1) {
                        this.f871a.mConfig.mVersionInt = packageInfo.versionCode;
                    }
                    if (this.f871a.mConfig.mVersionStr == null) {
                        this.f871a.mConfig.mVersionStr = packageInfo.versionName;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(this.f871a.mConfig.mDeviceId) || "0".equals(this.f871a.mConfig.mDeviceId)) {
            this.f871a.mConfig.mDeviceId = i.c().a();
        }
        try {
            jSONObject.put("aid", String.valueOf(this.f871a.mConfig.mAid));
            jSONObject.put("update_version_code", this.f871a.mConfig.mVersionInt);
            jSONObject.put("version_code", this.f871a.mConfig.mVersionInt);
            jSONObject.put("app_version", this.f871a.mConfig.mVersionStr);
            jSONObject.put("channel", this.f871a.mConfig.mChannel);
            jSONObject.put("package", com.apm.insight.l.k.a(this.f871a.mConfig.mPackageName));
            jSONObject.put("device_id", this.f871a.mConfig.mDeviceId);
            jSONObject.put("user_id", this.f871a.mConfig.mUID);
            jSONObject.put("ssid", this.f871a.mConfig.mSSID);
            jSONObject.put("os", APSAnalytics.OS_NAME);
            jSONObject.put("so_list", com.apm.insight.l.k.a(this.f871a.mConfig.mSoList));
            jSONObject.put("thread_list", com.apm.insight.l.k.a(this.f871a.mConfig.mThreadList));
            jSONObject.put("single_upload", d() ? 1 : 0);
        } catch (JSONException unused2) {
        }
        return jSONObject;
    }

    public JSONArray a(StackTraceElement[] stackTraceElementArr, Throwable th) {
        return a(stackTraceElementArr, th, null);
    }

    public JSONArray a(StackTraceElement[] stackTraceElementArr, Throwable th, String str) {
        if (this.f871a.mConfig.mPackageName == null) {
            return new JSONArray().put(new u.a(0, stackTraceElementArr.length).a());
        }
        if (th == null || stackTraceElementArr == null) {
            return null;
        }
        JSONArray a2 = u.a(stackTraceElementArr, this.f871a.mConfig.mPackageName);
        if (str != null && this.f871a.mConfig.mThreadList != null && com.apm.insight.l.k.a(a2)) {
            for (String str2 : this.f871a.mConfig.mThreadList) {
                if (TextUtils.equals(str2, str)) {
                    a2.put(new u.a(0, stackTraceElementArr.length).a());
                }
            }
        }
        return a2;
    }

    public JSONArray a(String[] strArr) {
        return this.f871a.config().mPackageName == null ? new JSONArray().put(new u.a(0, strArr.length).a()) : u.a(strArr, this.f871a.mConfig.mPackageName);
    }

    public JSONObject a(CrashType crashType) {
        return a(crashType, (JSONArray) null);
    }

    public JSONObject a(CrashType crashType, JSONArray jSONArray) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("header", e());
            if (crashType != null) {
                jSONObject.put(OSNotificationFormatHelper.PAYLOAD_OS_ROOT_CUSTOM, b(crashType));
                jSONObject.put("filters", c(crashType));
            }
            jSONObject.put("line_num", jSONArray);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public boolean a(Object obj) {
        return this.f871a == obj;
    }

    public boolean a(String str, String str2) {
        if (this.f871a.config().mPackageName == null) {
            return true;
        }
        return com.apm.insight.entity.b.a(str, com.apm.insight.l.k.a(this.f871a.mConfig.mSoList), str2, com.apm.insight.l.k.a(this.f871a.mConfig.mThreadList));
    }

    public String b() {
        return this.f871a.mConfig.mAid;
    }

    public JSONObject c() {
        return e();
    }

    public boolean d() {
        return false;
    }
}
