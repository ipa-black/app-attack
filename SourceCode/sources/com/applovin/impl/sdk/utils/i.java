package com.applovin.impl.sdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.preference.PreferenceManager;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import com.applovin.impl.sdk.v;
import com.google.android.exoplayer2.C;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f6078a = {7, 4, 2, 1, 11};

    /* renamed from: b  reason: collision with root package name */
    private static final int[] f6079b = {5, 6, 12, 10, 3, 9, 8, 14};

    /* renamed from: c  reason: collision with root package name */
    private static final int[] f6080c = {15, 13};

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f6081d = {20};

    public static String a(InputStream inputStream, com.applovin.impl.sdk.n nVar) throws IOException {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[((Integer) nVar.a(com.applovin.impl.sdk.c.b.dd)).intValue()];
        while (true) {
            int read = inputStream.read(bArr);
            if (read <= 0) {
                return byteArrayOutputStream.toString(C.UTF8_NAME);
            }
            byteArrayOutputStream.write(bArr, 0, read);
        }
    }

    public static String a(String str, com.applovin.impl.sdk.n nVar) {
        return a((String) nVar.a(com.applovin.impl.sdk.c.b.bc), str, nVar);
    }

    public static String a(String str, String str2, com.applovin.impl.sdk.n nVar) {
        if (str == null || str.length() < 4) {
            throw new IllegalArgumentException("Invalid domain specified");
        }
        if (str2 != null) {
            if (nVar != null) {
                return str + str2;
            }
            throw new IllegalArgumentException("No sdk specified");
        }
        throw new IllegalArgumentException("No endpoint specified");
    }

    public static JSONObject a(JSONObject jSONObject) throws JSONException {
        return (JSONObject) jSONObject.getJSONArray("results").get(0);
    }

    public static void a(int i, com.applovin.impl.sdk.n nVar) {
        if (i == 401) {
            v.i("AppLovinSdk", "SDK key \"" + nVar.C() + "\" is rejected by AppLovin. Please make sure the SDK key is correct.");
        } else if (i == 418) {
            nVar.O().a((com.applovin.impl.sdk.c.b<?>) com.applovin.impl.sdk.c.b.Z, (Object) true);
            nVar.O().a();
        } else {
            if (i < 400 || i >= 500) {
                if (i != -1 || !((Boolean) nVar.a(com.applovin.impl.sdk.c.b.ab)).booleanValue()) {
                    return;
                }
            } else if (!((Boolean) nVar.a(com.applovin.impl.sdk.c.b.ab)).booleanValue()) {
                return;
            }
            nVar.k();
        }
    }

    public static void a(JSONObject jSONObject, boolean z, com.applovin.impl.sdk.n nVar) {
        nVar.aj().a(jSONObject, z);
    }

    public static boolean a() {
        return a((String) null);
    }

    private static boolean a(int i, int[] iArr) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(Context context) {
        if (context.getSystemService("connectivity") != null) {
            NetworkInfo b2 = b(context);
            if (b2 != null) {
                return b2.isConnected();
            }
            return false;
        }
        return true;
    }

    public static boolean a(String str) {
        if (h.e()) {
            return (!h.f() || TextUtils.isEmpty(str)) ? NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted() : NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(str);
        }
        return true;
    }

    private static NetworkInfo b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager != null) {
            return connectivityManager.getActiveNetworkInfo();
        }
        return null;
    }

    public static String b(String str, com.applovin.impl.sdk.n nVar) {
        return a((String) nVar.a(com.applovin.impl.sdk.c.b.bd), str, nVar);
    }

    public static void c(JSONObject jSONObject, com.applovin.impl.sdk.n nVar) {
        String string = JsonUtils.getString(jSONObject, "persisted_data", null);
        if (StringUtils.isValidString(string)) {
            nVar.a((com.applovin.impl.sdk.c.d<com.applovin.impl.sdk.c.d<String>>) com.applovin.impl.sdk.c.d.z, (com.applovin.impl.sdk.c.d<String>) string);
            nVar.D();
            if (v.a()) {
                nVar.D().c("ConnectionUtils", "Updated persisted data");
            }
        }
    }

    public static void d(JSONObject jSONObject, com.applovin.impl.sdk.n nVar) {
        if (jSONObject == null) {
            throw new IllegalArgumentException("No response specified");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        try {
            if (jSONObject.has(com.appnext.core.a.b.hW)) {
                com.applovin.impl.sdk.c.c O = nVar.O();
                if (jSONObject.isNull(com.appnext.core.a.b.hW)) {
                    return;
                }
                O.a(jSONObject.getJSONObject(com.appnext.core.a.b.hW));
                O.a();
            }
        } catch (JSONException e2) {
            nVar.D();
            if (v.a()) {
                nVar.D().b("ConnectionUtils", "Unable to parse settings out of API response", e2);
            }
        }
    }

    public static Map<String, String> e(com.applovin.impl.sdk.n nVar) {
        Map<String, String> map = CollectionUtils.map();
        String str = (String) nVar.a(com.applovin.impl.sdk.c.b.ac);
        if (StringUtils.isValidString(str)) {
            map.put("device_token", str);
        } else if (!((Boolean) nVar.a(com.applovin.impl.sdk.c.b.eA)).booleanValue()) {
            map.put("api_key", nVar.C());
        }
        map.putAll(Utils.stringifyObjectMap(nVar.Y().i()));
        return map;
    }

    public static void e(JSONObject jSONObject, com.applovin.impl.sdk.n nVar) {
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "filesystem_values", (JSONObject) null);
        if (jSONObject2 != null) {
            SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(nVar.P()).edit();
            Iterator<String> keys = jSONObject2.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                Object object = JsonUtils.getObject(jSONObject2, next, null);
                if (object != null) {
                    com.applovin.impl.sdk.c.e.a(next, object, (SharedPreferences) null, edit);
                }
            }
            edit.apply();
        }
    }

    public static String f(com.applovin.impl.sdk.n nVar) {
        NetworkInfo b2 = b(nVar.P());
        if (b2 != null) {
            int type = b2.getType();
            int subtype = b2.getSubtype();
            return type == 1 ? "wifi" : type == 0 ? a(subtype, f6078a) ? "2g" : a(subtype, f6079b) ? "3g" : a(subtype, f6080c) ? "4g" : a(subtype, f6081d) ? "5g" : "mobile" : "unknown";
        }
        return "unknown";
    }

    public static void f(JSONObject jSONObject, com.applovin.impl.sdk.n nVar) {
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "variables", (JSONObject) null);
        if (jSONObject2 != null) {
            nVar.z().updateVariables(jSONObject2);
        }
    }

    public static String g(com.applovin.impl.sdk.n nVar) {
        return a((String) nVar.a(com.applovin.impl.sdk.c.b.ba), ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.dl)).booleanValue() ? "5.0/ad" : "4.0/ad", nVar);
    }

    public static String h(com.applovin.impl.sdk.n nVar) {
        return a((String) nVar.a(com.applovin.impl.sdk.c.b.bb), ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.dl)).booleanValue() ? "5.0/ad" : "4.0/ad", nVar);
    }

    public static String i(com.applovin.impl.sdk.n nVar) {
        return a((String) nVar.a(com.applovin.impl.sdk.c.b.ba), "4.0/ad", nVar);
    }

    public static String j(com.applovin.impl.sdk.n nVar) {
        return a((String) nVar.a(com.applovin.impl.sdk.c.b.bb), "4.0/ad", nVar);
    }

    public static String k(com.applovin.impl.sdk.n nVar) {
        return a((String) nVar.a(com.applovin.impl.sdk.c.b.bg), "1.0/variable_config", nVar);
    }

    public static String l(com.applovin.impl.sdk.n nVar) {
        return a((String) nVar.a(com.applovin.impl.sdk.c.b.bh), "1.0/variable_config", nVar);
    }
}
