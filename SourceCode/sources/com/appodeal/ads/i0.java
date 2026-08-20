package com.appodeal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.utils.Log;
import io.bidmachine.utils.IabUtils;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class i0 {

    /* renamed from: a  reason: collision with root package name */
    public static String f6728a = null;

    /* renamed from: b  reason: collision with root package name */
    public static String f6729b = null;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f6730c = false;

    /* renamed from: d  reason: collision with root package name */
    public static JSONObject f6731d = null;

    /* renamed from: e  reason: collision with root package name */
    public static int f6732e = 0;

    /* renamed from: f  reason: collision with root package name */
    public static boolean f6733f = true;

    /* renamed from: g  reason: collision with root package name */
    public static Boolean f6734g;

    /* renamed from: h  reason: collision with root package name */
    public static Boolean f6735h;

    public static void a(Context context, JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (context != null && jSONObject != null && (optJSONObject = jSONObject.optJSONObject("app_data")) != null) {
            if (optJSONObject.has(IabUtils.KEY_STORE_URL)) {
                f6729b = optJSONObject.optString(IabUtils.KEY_STORE_URL, f6729b);
            } else {
                f6729b = h0.a("https://play.google.com/store/apps/details?id=").append(context.getPackageName()).toString();
            }
            String optString = optJSONObject.optString("name");
            f6728a = optString;
            if (TextUtils.isEmpty(optString)) {
                try {
                    f6728a = (String) context.getPackageManager().getApplicationLabel(context.getApplicationInfo());
                } catch (Exception e2) {
                    Log.log(e2);
                }
            }
            if (optJSONObject.has("paid")) {
                optJSONObject.optInt("paid");
            }
            optJSONObject.optString("publisher", "");
            if (optJSONObject.has("id")) {
                String.valueOf(optJSONObject.optInt("id"));
            }
            f6731d = optJSONObject.optJSONObject("ext");
            f6732e = optJSONObject.optInt("ad_box_size");
            f6733f = optJSONObject.optBoolean("hr", true);
        }
        a(jSONObject);
        if (jSONObject == null) {
            return;
        }
        f6730c = jSONObject.optBoolean("corona");
    }

    public static void a(JSONObject jSONObject) {
        if (jSONObject != null && jSONObject.has(Constants.FOR_KIDS)) {
            boolean a2 = a();
            f6735h = Boolean.valueOf(jSONObject.optBoolean(Constants.FOR_KIDS, false));
            if (a2 != a()) {
                r0.d();
            }
        }
    }

    public static boolean a() {
        Boolean bool = f6734g;
        if (bool == null && (bool = f6735h) == null) {
            return false;
        }
        return bool.booleanValue();
    }
}
