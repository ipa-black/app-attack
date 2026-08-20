package com.yandex.metrica.impl.ob;

import android.util.Base64;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ob.J;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Z6 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f14333a;

    /* renamed from: b  reason: collision with root package name */
    private final String f14334b;

    /* renamed from: c  reason: collision with root package name */
    private final int f14335c;

    /* renamed from: d  reason: collision with root package name */
    private final HashMap<J.a, Integer> f14336d;

    /* renamed from: e  reason: collision with root package name */
    private final String f14337e;

    /* renamed from: f  reason: collision with root package name */
    private final Integer f14338f;

    /* renamed from: g  reason: collision with root package name */
    private final String f14339g;

    /* renamed from: h  reason: collision with root package name */
    private final String f14340h;
    private final CounterConfiguration.b i;
    private final String j;

    public Z6(String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        JSONObject jSONObject2 = jSONObject.getJSONObject("event");
        this.f14333a = Base64.decode(jSONObject2.getString("jvm_crash"), 0);
        this.f14334b = jSONObject2.getString("name");
        this.f14335c = jSONObject2.getInt("bytes_truncated");
        this.j = Tl.b(jSONObject2, "environment");
        String optString = jSONObject2.optString("trimmed_fields");
        this.f14336d = new HashMap<>();
        if (optString != null) {
            try {
                HashMap<String, String> d2 = Tl.d(optString);
                if (d2 != null) {
                    for (Map.Entry<String, String> entry : d2.entrySet()) {
                        this.f14336d.put(J.a.valueOf(entry.getKey()), Integer.valueOf(Integer.parseInt(entry.getValue())));
                    }
                }
            } catch (Throwable unused) {
            }
        }
        JSONObject jSONObject3 = jSONObject.getJSONObject("process_configuration");
        this.f14337e = jSONObject3.getString("package_name");
        this.f14338f = Integer.valueOf(jSONObject3.getInt("pid"));
        this.f14339g = jSONObject3.getString("psid");
        JSONObject jSONObject4 = jSONObject.getJSONObject("reporter_configuration");
        this.f14340h = jSONObject4.getString("api_key");
        this.i = a(jSONObject4);
    }

    public String a() {
        return this.f14340h;
    }

    public int b() {
        return this.f14335c;
    }

    public byte[] c() {
        return this.f14333a;
    }

    public String d() {
        return this.j;
    }

    public String e() {
        return this.f14334b;
    }

    public String f() {
        return this.f14337e;
    }

    public Integer g() {
        return this.f14338f;
    }

    public String h() {
        return this.f14339g;
    }

    public CounterConfiguration.b i() {
        return this.i;
    }

    public HashMap<J.a, Integer> j() {
        return this.f14336d;
    }

    public String k() throws JSONException {
        HashMap hashMap = new HashMap();
        for (Map.Entry<J.a, Integer> entry : this.f14336d.entrySet()) {
            hashMap.put(entry.getKey().name(), entry.getValue());
        }
        return new JSONObject().put("process_configuration", new JSONObject().put("pid", this.f14338f).put("psid", this.f14339g).put("package_name", this.f14337e)).put("reporter_configuration", new JSONObject().put("api_key", this.f14340h).put("reporter_type", this.i.a())).put("event", new JSONObject().put("jvm_crash", Base64.encodeToString(this.f14333a, 0)).put("name", this.f14334b).put("bytes_truncated", this.f14335c).put("trimmed_fields", Tl.g(hashMap)).putOpt("environment", this.j)).toString();
    }

    @Deprecated
    private CounterConfiguration.b a(JSONObject jSONObject) throws JSONException {
        if (jSONObject.has("reporter_type")) {
            return CounterConfiguration.b.a(jSONObject.getString("reporter_type"));
        }
        if (jSONObject.getBoolean("is_commutation")) {
            return CounterConfiguration.b.COMMUTATION;
        }
        return CounterConfiguration.b.MAIN;
    }

    public Z6(C1448c0 c1448c0, C2014z3 c2014z3, HashMap<J.a, Integer> hashMap) {
        this.f14333a = c1448c0.r();
        this.f14334b = c1448c0.g();
        this.f14335c = c1448c0.d();
        if (hashMap != null) {
            this.f14336d = hashMap;
        } else {
            this.f14336d = new HashMap<>();
        }
        A3 a2 = c2014z3.a();
        this.f14337e = a2.f();
        this.f14338f = a2.g();
        this.f14339g = a2.h();
        CounterConfiguration b2 = c2014z3.b();
        this.f14340h = b2.a();
        this.i = b2.k();
        this.j = c1448c0.h();
    }
}
