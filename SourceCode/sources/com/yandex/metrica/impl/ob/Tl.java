package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import android.util.Base64;
import com.yandex.metrica.impl.ob.C2032zl;
import com.yandex.metrica.impl.ob.If;
import io.bidmachine.utils.IabUtils;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Tl {

    /* loaded from: classes5.dex */
    public static class a extends JSONObject {
        public a() {
        }

        public Long a(String str) {
            try {
                return Long.valueOf(getLong(str));
            } catch (Throwable unused) {
                return null;
            }
        }

        public String b(String str) {
            if (has(str) && has(str)) {
                try {
                    return getString(str);
                } catch (Throwable unused) {
                    return "";
                }
            }
            return "";
        }

        public String c(String str) {
            if (has(str)) {
                try {
                    return getString(str);
                } catch (Throwable unused) {
                }
            }
            return "";
        }

        public boolean d(String str) {
            try {
                return JSONObject.NULL != get(str);
            } catch (Throwable unused) {
                return false;
            }
        }

        public a(String str) throws JSONException {
            super(str);
        }
    }

    public static <T> T a(T t, T t2) {
        return t == null ? t2 : t;
    }

    public static String a(Context context, String str) throws UnsupportedEncodingException {
        byte[] a2 = a(context, Base64.decode(str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME), 0));
        if (a2 != null) {
            try {
                return new String(L0.a(new String(a2, com.google.android.exoplayer2.C.UTF8_NAME)), com.google.android.exoplayer2.C.UTF8_NAME);
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    public static byte[] b(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        messageDigest.reset();
        messageDigest.update(str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME));
        return messageDigest.digest();
    }

    public static String c(Map<String, String> map) {
        if (A2.b(map)) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb.append(entry.getKey()).append(":").append(entry.getValue()).append(",");
        }
        sb.setLength(sb.length() - 1);
        return sb.toString();
    }

    public static boolean d(Map<String, String> map) {
        if (map == null || map.isEmpty()) {
            return false;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            try {
                Integer.parseInt(entry.getValue());
            } catch (Throwable unused) {
                return false;
            }
        }
        return true;
    }

    public static JSONObject e(Map map) {
        if (A2.b(map)) {
            return null;
        }
        if (A2.a(19)) {
            return new JSONObject(map);
        }
        return h(map);
    }

    public static JSONObject f(Map map) {
        if (map == null) {
            return null;
        }
        if (map.isEmpty()) {
            return new JSONObject();
        }
        return e(map);
    }

    public static String g(Map map) {
        if (A2.b(map)) {
            return null;
        }
        if (A2.a(19)) {
            return new JSONObject(map).toString();
        }
        return a((Object) map).toString();
    }

    private static JSONObject h(Map map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : map.entrySet()) {
            String obj = entry.getKey().toString();
            if (obj != null) {
                linkedHashMap.put(obj, a(entry.getValue()));
            }
        }
        return new JSONObject(linkedHashMap);
    }

    public static Map<String, String> i(Map<String, String> map) {
        long j;
        HashMap hashMap = new HashMap();
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                if (!TextUtils.isEmpty(key) && !key.contains(":") && !key.contains(",") && !key.contains("&")) {
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(value)) {
                        try {
                            j = Long.parseLong(value);
                        } catch (NumberFormatException unused) {
                            j = -1;
                        }
                        if (j != -1) {
                            hashMap.put(entry.getKey(), entry.getValue());
                        }
                    }
                }
            }
        }
        return hashMap;
    }

    public static String b(Context context, String str) throws UnsupportedEncodingException {
        String str2;
        try {
            str2 = L0.a(str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME));
        } catch (Throwable unused) {
            str2 = null;
        }
        return Base64.encodeToString(a(context, str2.getBytes(com.google.android.exoplayer2.C.UTF8_NAME)), 0);
    }

    public static C1450c2 f(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            JSONObject jSONObject = new JSONObject(str);
            return new C1450c2(jSONObject.optInt(IabUtils.KEY_WIDTH), jSONObject.optInt(IabUtils.KEY_HEIGHT), jSONObject.optInt("dpi"), (float) jSONObject.optDouble("scaleFactor", 0.0d), com.yandex.metrica.b.a(jSONObject.optString("deviceType")));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Map<String, String> a(String str) {
        String[] split;
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : str.split(",")) {
                int indexOf = str2.indexOf(":");
                if (indexOf != -1) {
                    hashMap.put(str2.substring(0, indexOf), str2.substring(indexOf + 1));
                }
            }
        }
        return hashMap;
    }

    public static HashMap<String, String> d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return b(new JSONObject(str));
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String c(List<String> list) {
        if (A2.b(list)) {
            return null;
        }
        if (A2.a(19)) {
            return new JSONArray((Collection) list).toString();
        }
        return a((Object) list).toString();
    }

    private static JSONArray b(Collection<?> collection) {
        if (collection == null) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList(collection.size());
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                arrayList.add(a(it.next()));
            }
            return new JSONArray((Collection) arrayList);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static HashMap<String, String> e(String str) throws JSONException {
        return b(new JSONObject(str));
    }

    public static JSONArray b(List<?> list) {
        if (A2.b(list)) {
            return null;
        }
        if (A2.a(19)) {
            return new JSONArray((Collection) list);
        }
        return b((Collection<?>) list);
    }

    public static long a(Long l, TimeUnit timeUnit, long j) {
        return l == null ? j : timeUnit.toMillis(l.longValue());
    }

    private static byte[] a(Context context, byte[] bArr) {
        try {
            byte[] b2 = b(context.getPackageName());
            byte[] bArr2 = new byte[bArr.length];
            for (int i = 0; i < bArr.length; i++) {
                bArr2[i] = (byte) (bArr[i] ^ b2[i % b2.length]);
            }
            return bArr2;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static List<String> c(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                ArrayList arrayList = new ArrayList(jSONArray.length());
                for (int i = 0; i < jSONArray.length(); i++) {
                    try {
                        arrayList.add(jSONArray.getString(i));
                    } catch (Throwable unused) {
                        return arrayList;
                    }
                }
                return arrayList;
            } catch (Throwable unused2) {
            }
        }
        return null;
    }

    public static Object a(Object obj) {
        if (obj == null) {
            return null;
        }
        try {
            if (obj.getClass().isArray()) {
                int length = Array.getLength(obj);
                ArrayList arrayList = new ArrayList(length);
                for (int i = 0; i < length; i++) {
                    arrayList.add(a(Array.get(obj, i)));
                }
                return new JSONArray((Collection) arrayList);
            } else if (obj instanceof Collection) {
                return b((Collection) obj);
            } else {
                return obj instanceof Map ? h((Map) obj) : obj;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    public static HashMap<String, String> b(JSONObject jSONObject) {
        if (JSONObject.NULL.equals(jSONObject)) {
            return null;
        }
        HashMap<String, String> hashMap = new HashMap<>();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString = jSONObject.optString(next);
            if (optString != null) {
                hashMap.put(next, optString);
            }
        }
        return hashMap;
    }

    public static C1544fl c(JSONObject jSONObject) throws JSONException {
        C1960wl c1960wl;
        If.i iVar = new If.i();
        JSONObject optJSONObject = jSONObject.optJSONObject("upc");
        JSONObject optJSONObject2 = jSONObject.optJSONObject("uecc");
        JSONObject optJSONObject3 = jSONObject.optJSONObject("ucfbc");
        JSONObject optJSONObject4 = jSONObject.optJSONObject("ruecc");
        boolean optBoolean = jSONObject.optBoolean("upe", iVar.o);
        boolean optBoolean2 = jSONObject.optBoolean("uece", iVar.p);
        boolean optBoolean3 = jSONObject.optBoolean("ucfbe", iVar.q);
        boolean optBoolean4 = jSONObject.optBoolean("ruece", iVar.u);
        if (optJSONObject == null) {
            c1960wl = null;
        } else {
            If.w wVar = new If.w();
            c1960wl = new C1960wl(optJSONObject.optInt("tltb", wVar.f13181a), optJSONObject.optInt("ttb", wVar.f13182b), optJSONObject.optInt("mvcl", wVar.f13183c), optJSONObject.optLong("act", wVar.f13184d), optJSONObject.optBoolean("rtsc", wVar.f13185e), optJSONObject.optBoolean("er", wVar.f13186f), optJSONObject.optBoolean("pabd", wVar.f13187g), a(optJSONObject.optJSONArray(com.appnext.base.b.f.TAG)));
        }
        return new C1544fl(optBoolean, optBoolean2, optBoolean3, optBoolean4, c1960wl, optJSONObject2 == null ? null : a(optJSONObject2, C1697m0.b()), optJSONObject3 == null ? null : a(optJSONObject3, C1697m0.a()), optJSONObject4 != null ? a(optJSONObject4, C1697m0.b()) : null);
    }

    public static String b(JSONObject jSONObject, String str) {
        if (jSONObject != null && jSONObject.has(str)) {
            try {
                return jSONObject.getString(str);
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static String a(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        return map.isEmpty() ? "" : g(map);
    }

    public static List<String> b(JSONArray jSONArray) throws JSONException {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList(jSONArray.length());
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(jSONArray.getString(i));
        }
        return arrayList;
    }

    public static Long a(JSONObject jSONObject, String str, Long l) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return l;
        }
        try {
            return Long.valueOf(jSONObject.getLong(str));
        } catch (Throwable unused) {
            return l;
        }
    }

    public static String b(Map<String, List<String>> map) {
        if (map == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                JSONArray b2 = b((List<?>) entry.getValue());
                if (b2 != null) {
                    jSONObject.put(entry.getKey(), b2.toString());
                }
            }
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    public static String a(JSONObject jSONObject, JSONObject jSONObject2, String str) {
        String b2 = b(jSONObject, str);
        if (jSONObject2 == null || !jSONObject2.has(str)) {
            return b2;
        }
        try {
            return jSONObject2.getString(str);
        } catch (Throwable unused) {
            return b2;
        }
    }

    public static Integer a(JSONObject jSONObject, String str, Integer num) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return num;
        }
        try {
            return Integer.valueOf(jSONObject.getInt(str));
        } catch (Throwable unused) {
            return num;
        }
    }

    public static boolean a(JSONObject jSONObject, String str, boolean z) {
        Boolean a2 = a(jSONObject, str, (Boolean) null);
        return a2 == null ? z : a2.booleanValue();
    }

    public static Boolean a(JSONObject jSONObject, String str, Boolean bool) {
        if (jSONObject == null || !jSONObject.has(str)) {
            return bool;
        }
        try {
            return Boolean.valueOf(jSONObject.getBoolean(str));
        } catch (Throwable unused) {
            return bool;
        }
    }

    public static JSONArray a(Collection<C1910uj> collection) {
        JSONArray jSONArray = new JSONArray();
        if (collection != null) {
            for (C1910uj c1910uj : collection) {
                try {
                    jSONArray.put(a(c1910uj));
                } catch (Throwable unused) {
                }
            }
        }
        return jSONArray;
    }

    public static JSONObject a(C1910uj c1910uj) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("cell_id", c1910uj.b());
        jSONObject.put("signal_strength", c1910uj.p());
        jSONObject.put("lac", c1910uj.e());
        jSONObject.put("country_code", c1910uj.k());
        jSONObject.put("operator_id", c1910uj.l());
        jSONObject.put("operator_name", c1910uj.n());
        jSONObject.put("is_connected", c1910uj.q());
        jSONObject.put("cell_type", c1910uj.c());
        jSONObject.put("pci", c1910uj.o());
        jSONObject.put("last_visible_time_offset", c1910uj.d());
        jSONObject.put("lte_rsrq", c1910uj.h());
        jSONObject.put("lte_rssnr", c1910uj.j());
        jSONObject.put("arfcn", c1910uj.a());
        jSONObject.put("lte_rssi", c1910uj.i());
        jSONObject.put("lte_bandwidth", c1910uj.f());
        jSONObject.put("lte_cqi", c1910uj.g());
        return jSONObject;
    }

    public static JSONObject a(C1544fl c1544fl) throws JSONException {
        JSONObject put = new JSONObject().put("upe", c1544fl.f14754a).put("uece", c1544fl.f14755b).put("ruece", c1544fl.f14757d).put("ucfbe", c1544fl.f14756c);
        C1960wl c1960wl = c1544fl.f14758e;
        JSONObject putOpt = put.putOpt("upc", c1960wl == null ? null : new JSONObject().put("tltb", c1960wl.f15998a).put("ttb", c1960wl.f15999b).put("mvcl", c1960wl.f16000c).put("act", c1960wl.f16001d).put("rtsc", c1960wl.f16002e).put("er", c1960wl.f16003f).put("pabd", c1960wl.f16004g).put(com.appnext.base.b.f.TAG, a(c1960wl.f16005h)));
        C1594hl c1594hl = c1544fl.f14759f;
        JSONObject putOpt2 = putOpt.putOpt("uecc", c1594hl == null ? null : a(c1594hl));
        C1594hl c1594hl2 = c1544fl.f14761h;
        JSONObject putOpt3 = putOpt2.putOpt("ruecc", c1594hl2 == null ? null : a(c1594hl2));
        C1594hl c1594hl3 = c1544fl.f14760g;
        return putOpt3.putOpt("ucfbc", c1594hl3 != null ? a(c1594hl3) : null);
    }

    private static JSONObject a(C1594hl c1594hl) throws JSONException {
        return new JSONObject().put("tsc", c1594hl.f14876a).put("rtsc1", c1594hl.f14877b).put("tvc", c1594hl.f14878c).put("tsc1", c1594hl.f14879d).put("ic", c1594hl.f14880e).put("ncvc", c1594hl.f14881f).put("tlc", c1594hl.f14882g).put("vh", c1594hl.f14883h).put("if", c1594hl.i).put("wvuc", c1594hl.j).put("tltb", c1594hl.k).put("ttb", c1594hl.l).put("mec", c1594hl.m).put("mfcl", c1594hl.n).put("wvul", c1594hl.o).put(com.appnext.base.b.f.TAG, a(c1594hl.p));
    }

    private static C1594hl a(JSONObject jSONObject, If.v vVar) {
        return new C1594hl(jSONObject.optBoolean("tsc", vVar.f13173a), jSONObject.optBoolean("rtsc1", vVar.f13174b), jSONObject.optBoolean("tvc", vVar.f13175c), jSONObject.optBoolean("tsc1", vVar.f13176d), jSONObject.optBoolean("ic", vVar.i), jSONObject.optBoolean("ncvc", vVar.j), jSONObject.optBoolean("tlc", vVar.k), jSONObject.optBoolean("vh", vVar.l), jSONObject.optBoolean("if", vVar.n), jSONObject.optBoolean("wvuc", vVar.o), jSONObject.optInt("tltb", vVar.f13177e), jSONObject.optInt("ttb", vVar.f13178f), jSONObject.optInt("mec", vVar.f13179g), jSONObject.optInt("mfcl", vVar.f13180h), jSONObject.optInt("wvul", vVar.p), a(jSONObject.optJSONArray(com.appnext.base.b.f.TAG)));
    }

    private static JSONArray a(List<C2032zl> list) {
        JSONArray jSONArray = new JSONArray();
        for (C2032zl c2032zl : list) {
            try {
                jSONArray.put(new JSONObject().put("ft", c2032zl.f16170a.f16177a).put("fv", c2032zl.f16171b));
            } catch (Throwable unused) {
            }
        }
        return jSONArray;
    }

    private static List<C2032zl> a(JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                try {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    arrayList.add(new C2032zl(C2032zl.b.a(jSONObject.getInt("ft")), jSONObject.optString("fv")));
                } catch (Throwable unused) {
                }
            }
        }
        return arrayList;
    }

    public static C1829ra a(JSONObject jSONObject) {
        return new C1829ra(a(jSONObject, "activation"), a(jSONObject, "satellite_clids"), a(jSONObject, "preload_info"));
    }

    public static JSONObject a(C1829ra c1829ra) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("activation", a(c1829ra.f15625a));
            jSONObject.putOpt("preload_info", a(c1829ra.f15627c));
            jSONObject.putOpt("satellite_clids", a(c1829ra.f15626b));
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private static C1806qa a(JSONObject jSONObject, String str) {
        JSONObject optJSONObject = jSONObject.optJSONObject(str);
        if (optJSONObject != null) {
            return new C1806qa(optJSONObject.optLong("exp_t"), optJSONObject.optInt(com.appnext.base.b.d.fn));
        }
        return null;
    }

    private static JSONObject a(C1806qa c1806qa) {
        if (c1806qa == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("exp_t", c1806qa.f15486a).put(com.appnext.base.b.d.fn, c1806qa.f15487b);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    public static String a(C1450c2 c1450c2) {
        JSONObject jSONObject;
        if (c1450c2 == null) {
            jSONObject = null;
        } else {
            jSONObject = new JSONObject();
            try {
                jSONObject.put(IabUtils.KEY_WIDTH, c1450c2.e()).put(IabUtils.KEY_HEIGHT, c1450c2.c()).put("dpi", c1450c2.b()).put("scaleFactor", c1450c2.d()).putOpt("deviceType", c1450c2.a() == null ? null : c1450c2.a().a());
            } catch (Throwable unused) {
            }
        }
        if (jSONObject == null) {
            return null;
        }
        return jSONObject.toString();
    }
}
