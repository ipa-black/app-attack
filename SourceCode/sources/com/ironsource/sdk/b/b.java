package com.ironsource.sdk.b;

import android.os.Build;
import android.util.Log;
import android.webkit.WebView;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public a f11527a;

    /* renamed from: c  reason: collision with root package name */
    public WebView f11529c;

    /* renamed from: d  reason: collision with root package name */
    public String f11530d;

    /* renamed from: e  reason: collision with root package name */
    public String f11531e = "b";

    /* renamed from: f  reason: collision with root package name */
    private String[] f11532f = {"handleGetViewVisibility"};

    /* renamed from: g  reason: collision with root package name */
    private final String[] f11533g = {"loadWithUrl", "updateAd", "isExternalAdViewInitiated", "handleGetViewVisibility", "sendMessage"};

    /* renamed from: b  reason: collision with root package name */
    public d f11528b = new d();

    private static String d(String str) {
        return String.format("window.ssa.onMessageReceived(%1$s)", str);
    }

    private void e(final String str) {
        final String str2 = "javascript:try{" + str + "}catch(e){console.log(\"JS exception: \" + JSON.stringify(e));}";
        com.ironsource.environment.e.a.f10578a.a(new Runnable() { // from class: com.ironsource.sdk.b.b.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    b.this.f11529c.evaluateJavascript(str2, null);
                } catch (Throwable unused) {
                    Log.e(b.this.f11531e, "injectJavaScriptIntoWebView | Error while trying inject JS into external adUnit: " + str + "Android API level: " + Build.VERSION.SDK_INT);
                }
            }
        });
    }

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("visibilityParams", this.f11528b.a());
            jSONObject.put("configs", jSONObject2);
            jSONObject.put("adViewId", this.f11530d);
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return new JSONObject();
        }
    }

    public JSONObject a(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("id", jSONObject.getString("id"));
            jSONObject2.put("data", this.f11528b.a());
        } catch (Exception e2) {
            Log.e(this.f11531e, "Error while trying execute method buildVisibilityMessageForAdUnit | params: " + jSONObject);
            e2.printStackTrace();
        }
        return jSONObject2;
    }

    public final void a(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("adViewId", this.f11530d);
            a(str, jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public final void a(String str, int i, boolean z) {
        d dVar = this.f11528b;
        if (dVar.f11539a.containsKey(str)) {
            dVar.f11539a.put(str, Boolean.valueOf(i == 0));
        }
        dVar.f11539a.put("isShown", Boolean.valueOf(z));
        dVar.f11539a.put("isViewVisible", Boolean.valueOf((dVar.f11539a.get("isWindowVisible").booleanValue() || dVar.f11539a.get("isVisible").booleanValue()) && dVar.f11539a.get("isShown").booleanValue()));
        if (!str.equalsIgnoreCase("isVisible") || this.f11527a == null || this.f11528b == null) {
            return;
        }
        a("containerIsVisible", a());
    }

    public final void a(String str, String str2) {
        a aVar = this.f11527a;
        if (aVar != null) {
            aVar.a(str, str2, this.f11530d);
        }
    }

    public final void a(String str, String str2, String str3) {
        if (this.f11529c == null) {
            String str4 = "No external adUnit attached to ISNAdView while trying to send message: " + str;
            Log.e(this.f11531e, str4);
            this.f11527a.a(str3, str4, this.f11530d);
            return;
        }
        try {
            new JSONObject(str);
        } catch (JSONException unused) {
            str = "\"" + str + "\"";
        }
        e(d(str));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("adViewId", this.f11530d);
        a(str2, jSONObject);
    }

    public final void a(String str, JSONObject jSONObject) {
        a aVar = this.f11527a;
        if (aVar != null) {
            aVar.a(str, jSONObject);
        }
    }

    public final void b(String str) {
        JSONObject a2 = this.f11528b.a();
        a2.put("adViewId", this.f11530d);
        a(str, a2);
    }

    public boolean c(String str) {
        for (String str2 : this.f11532f) {
            if (str2.equalsIgnoreCase(str)) {
                return true;
            }
        }
        return false;
    }
}
