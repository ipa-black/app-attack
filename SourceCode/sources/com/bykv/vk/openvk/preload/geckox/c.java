package com.bykv.vk.openvk.preload.geckox;

import android.content.Context;
import android.text.TextUtils;
import com.appnext.base.b.d;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bykv.vk.openvk.preload.geckox.net.INetWork;
import com.onesignal.OSInAppMessageContentKt;
import java.io.File;
import java.io.InputStream;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* compiled from: GeckoHubUtil.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    static File f8494a;

    /* renamed from: b  reason: collision with root package name */
    static Context f8495b;

    /* renamed from: c  reason: collision with root package name */
    static String f8496c;

    /* renamed from: g  reason: collision with root package name */
    private static final Set<String> f8497g = new HashSet(Arrays.asList("js", "css", OSInAppMessageContentKt.HTML, "ico", "jpeg", "jpg", "png", "gif", "woff", "svg", "ttf", "woff2", "webp", "otf", "sfnt"));

    /* renamed from: d  reason: collision with root package name */
    INetWork f8498d;

    /* renamed from: e  reason: collision with root package name */
    private Map.Entry<String, JSONObject> f8499e;

    /* renamed from: f  reason: collision with root package name */
    private Map.Entry<String, JSONObject> f8500f;

    /* synthetic */ c(byte b2) {
        this();
    }

    /* compiled from: GeckoHubUtil.java */
    /* loaded from: classes2.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        private static c f8501a = new c((byte) 0);
    }

    public static c a(Context context) {
        f8495b = context;
        if (f8494a == null) {
            f8494a = new File(f8495b.getCacheDir() + File.separator + "gecko");
        }
        return a.f8501a;
    }

    public static c a() {
        return a.f8501a;
    }

    private c() {
    }

    public static void a(String str) {
        f8496c = str;
    }

    private static String b(String str) {
        if (str == null) {
            return null;
        }
        int indexOf = str.indexOf("?");
        return indexOf == -1 ? str : str.substring(0, indexOf);
    }

    private JSONObject a(String str, String str2) {
        if (str != null && str2 != null) {
            try {
                Map.Entry<String, JSONObject> entry = this.f8499e;
                if (entry == null || !str.equals(entry.getKey())) {
                    String a2 = com.bykv.vk.openvk.preload.geckox.utils.c.a(new com.bykv.vk.openvk.preload.falconx.loader.a(f8495b, "cca47107bfcbdb211d88f3385aeede40", f8494a).getInputStream(str + "/manifest.json"));
                    if (TextUtils.isEmpty(a2)) {
                        return null;
                    }
                    this.f8499e = new AbstractMap.SimpleEntry(str, new JSONObject(a2));
                }
                Map.Entry<String, JSONObject> entry2 = this.f8500f;
                if (entry2 == null || !str.equals(entry2.getKey())) {
                    String a3 = com.bykv.vk.openvk.preload.geckox.utils.c.a(new com.bykv.vk.openvk.preload.falconx.loader.a(f8495b, "cca47107bfcbdb211d88f3385aeede40", f8494a).getInputStream(str + "/md5_url_map.json"));
                    if (TextUtils.isEmpty(a3)) {
                        return null;
                    }
                    this.f8500f = new AbstractMap.SimpleEntry(str, new JSONObject(a3));
                }
                JSONObject value = this.f8499e.getValue();
                JSONObject value2 = this.f8500f.getValue();
                String a4 = a(str2, value2);
                if (value.has(a4)) {
                    JSONObject jSONObject = value.getJSONObject(a4);
                    a(value, a4, str2);
                    return jSONObject;
                }
                String b2 = b(str2);
                if (b2 == null) {
                    return null;
                }
                String a5 = a(b2, value2);
                if (value.has(a5)) {
                    JSONObject jSONObject2 = value.getJSONObject(a5);
                    a(value, a5, str2);
                    return jSONObject2;
                }
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private static String a(String str, JSONObject jSONObject) {
        try {
            return jSONObject.getJSONObject(str).getString("md5");
        } catch (Throwable unused) {
            return "";
        }
    }

    private void a(JSONObject jSONObject, String str, String str2) {
        try {
            if (d.fm.equals(jSONObject.getJSONObject(str).optJSONObject("cacheStrategy").optString("hitStrategy"))) {
                jSONObject.remove(str);
                c(str2);
            }
        } catch (Throwable unused) {
        }
    }

    private void c(String str) {
        try {
            if (this.f8498d == null || TextUtils.isEmpty(str)) {
                return;
            }
            this.f8498d.syncDoGet(str);
        } catch (Throwable unused) {
        }
    }

    public static com.bykv.vk.openvk.preload.falconx.loader.a b() {
        try {
            return new com.bykv.vk.openvk.preload.falconx.loader.a(f8495b, "cca47107bfcbdb211d88f3385aeede40", f8494a);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void a(ILoader iLoader) {
        if (iLoader != null) {
            try {
                iLoader.release();
            } catch (Throwable unused) {
            }
        }
    }

    public final WebResourceResponseModel a(ILoader iLoader, String str, String str2) {
        String substring;
        try {
            if (iLoader == null) {
                return new WebResourceResponseModel(-1, null);
            }
            if (!TextUtils.isEmpty(str2) && !str2.matches("^https?:\\/\\/www\\.google-analytics\\.com/(?:ga|urchin|analytics)\\.js") && !str2.matches("^https?:\\/\\/www\\.googletagmanager\\.com\\/(gtag\\/js|gtm\\.js)") && !str2.matches("^https?:\\/\\/analytics\\.tiktok\\.com\\/i18n\\/pixel") && !str2.matches("https?:\\/\\/connect\\.facebook\\.net\\/(.*)\\/fbevents\\.js") && !str2.matches("https?:\\/\\/mc\\.yandex\\.ru\\/") && !str2.contains("jsonp") && !str2.contains("Callback") && !str2.contains("analytics.tiktok.com/i18n/pixel") && !str2.contains("google-analytics.com/analytics") && !str2.contains("connect.facebook.net")) {
                JSONObject a2 = a(str, str2);
                Set<String> set = f8497g;
                String b2 = b(str2);
                int lastIndexOf = b2.lastIndexOf(".");
                if (lastIndexOf == -1) {
                    substring = "";
                } else {
                    substring = b2.substring(lastIndexOf + 1);
                }
                int i = set.contains(substring) ? 2 : -1;
                if (a2 == null) {
                    return new WebResourceResponseModel(i, null);
                }
                String optString = a2.optString("fileName", null);
                if (optString == null) {
                    return new WebResourceResponseModel(i, null);
                }
                JSONObject jSONObject = a2.has("respHeader") ? a2.getJSONObject("respHeader") : null;
                if (jSONObject == null) {
                    return new WebResourceResponseModel(i, null);
                }
                String str3 = str + File.separator + optString;
                InputStream inputStream = !iLoader.exist(str3) ? null : iLoader.getInputStream(str3);
                if (inputStream == null) {
                    return new WebResourceResponseModel(i, null);
                }
                HashMap hashMap = new HashMap();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.getString(next));
                }
                return new WebResourceResponseModel(i, com.bykv.vk.openvk.preload.falconx.a.a.a(inputStream, hashMap));
            }
            return new WebResourceResponseModel(1, null);
        } catch (Throwable unused) {
            return new WebResourceResponseModel(-1, null);
        }
    }

    public static int a(ILoader iLoader, String str) {
        if (iLoader == null || str == null) {
            return 0;
        }
        try {
            com.bykv.vk.openvk.preload.falconx.loader.a aVar = new com.bykv.vk.openvk.preload.falconx.loader.a(f8495b, "cca47107bfcbdb211d88f3385aeede40", f8494a);
            String str2 = str + File.separator;
            if (aVar.f8433b.get()) {
                throw new RuntimeException("released!");
            }
            com.bykv.vk.openvk.preload.geckox.f.b bVar = aVar.f8432a;
            if (bVar.f8536b.get()) {
                throw new RuntimeException("released");
            }
            if (TextUtils.isEmpty(str2)) {
                throw new RuntimeException("relativePath empty");
            }
            return bVar.a(str2.trim()).b(str2);
        } catch (Throwable unused) {
            return 0;
        }
    }
}
