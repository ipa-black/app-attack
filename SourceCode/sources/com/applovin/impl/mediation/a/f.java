package com.applovin.impl.mediation.a;

import android.os.Bundle;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.BundleUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinEventParameters;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f4700a;

    /* renamed from: b  reason: collision with root package name */
    protected final n f4701b;

    /* renamed from: c  reason: collision with root package name */
    private final JSONObject f4702c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, Object> f4703d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f4704e = new Object();

    /* renamed from: f  reason: collision with root package name */
    private final Object f4705f = new Object();

    /* renamed from: g  reason: collision with root package name */
    private String f4706g;

    /* renamed from: h  reason: collision with root package name */
    private String f4707h;

    public f(Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        if (jSONObject2 == null) {
            throw new IllegalArgumentException("No full response specified");
        }
        if (jSONObject == null) {
            throw new IllegalArgumentException("No ad object specified");
        }
        this.f4701b = nVar;
        this.f4700a = jSONObject2;
        this.f4702c = jSONObject;
        this.f4703d = map;
    }

    private int a() {
        return b("mute_state", a("mute_state", ((Integer) this.f4701b.a(com.applovin.impl.sdk.c.a.L)).intValue()));
    }

    public JSONObject P() {
        JSONObject jSONObject;
        synchronized (this.f4705f) {
            jSONObject = this.f4700a;
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JSONObject Q() {
        JSONObject jSONObject;
        synchronized (this.f4704e) {
            jSONObject = this.f4702c;
        }
        return jSONObject;
    }

    public String R() {
        return b("class", (String) null);
    }

    public String S() {
        return b("name", (String) null);
    }

    public String T() {
        return S().split("_")[0];
    }

    public boolean U() {
        return b("is_testing", (Boolean) false).booleanValue();
    }

    public Boolean V() {
        String str = this.f4701b.q().getExtraParameters().get(AppLovinSdkExtraParameterKey.HAS_USER_CONSENT);
        return StringUtils.isValidString(str) ? Boolean.valueOf(str) : c(AppLovinSdkExtraParameterKey.HAS_USER_CONSENT) ? b(AppLovinSdkExtraParameterKey.HAS_USER_CONSENT, (Boolean) false) : a(AppLovinSdkExtraParameterKey.HAS_USER_CONSENT, (Boolean) null);
    }

    public Boolean W() {
        String str = this.f4701b.q().getExtraParameters().get(AppLovinSdkExtraParameterKey.AGE_RESTRICTED_USER);
        return StringUtils.isValidString(str) ? Boolean.valueOf(str) : c(AppLovinSdkExtraParameterKey.AGE_RESTRICTED_USER) ? b(AppLovinSdkExtraParameterKey.AGE_RESTRICTED_USER, (Boolean) false) : a(AppLovinSdkExtraParameterKey.AGE_RESTRICTED_USER, (Boolean) null);
    }

    public Boolean X() {
        String str = this.f4701b.q().getExtraParameters().get(AppLovinSdkExtraParameterKey.DO_NOT_SELL);
        return StringUtils.isValidString(str) ? Boolean.valueOf(str) : c(AppLovinSdkExtraParameterKey.DO_NOT_SELL) ? b(AppLovinSdkExtraParameterKey.DO_NOT_SELL, (Boolean) false) : a(AppLovinSdkExtraParameterKey.DO_NOT_SELL, (Boolean) null);
    }

    public String Y() {
        return c("consent_string") ? b("consent_string", (String) null) : a("consent_string", (String) null);
    }

    public boolean Z() {
        return b("run_on_ui_thread", (Boolean) true).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float a(String str, float f2) {
        float f3;
        synchronized (this.f4704e) {
            f3 = JsonUtils.getFloat(this.f4702c, str, f2);
        }
        return f3;
    }

    protected int a(String str, int i) {
        int i2;
        synchronized (this.f4705f) {
            i2 = JsonUtils.getInt(this.f4700a, str, i);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long a(String str, long j) {
        long j2;
        synchronized (this.f4705f) {
            j2 = JsonUtils.getLong(this.f4700a, str, j);
        }
        return j2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Boolean a(String str, Boolean bool) {
        Boolean bool2;
        synchronized (this.f4705f) {
            bool2 = JsonUtils.getBoolean(this.f4700a, str, bool);
        }
        return bool2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a(String str, String str2) {
        String string;
        synchronized (this.f4705f) {
            string = JsonUtils.getString(this.f4700a, str, str2);
        }
        return string;
    }

    protected JSONArray a(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        synchronized (this.f4705f) {
            jSONArray2 = JsonUtils.getJSONArray(this.f4700a, str, jSONArray);
        }
        return jSONArray2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public JSONObject a(String str, JSONObject jSONObject) {
        JSONObject jSONObject2;
        synchronized (this.f4704e) {
            jSONObject2 = JsonUtils.getJSONObject(this.f4702c, str, jSONObject);
        }
        return jSONObject2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, Object obj) {
        synchronized (this.f4704e) {
            JsonUtils.putObject(this.f4702c, str, obj);
        }
    }

    public Map<String, Object> aa() {
        return this.f4703d;
    }

    public Bundle ab() {
        Bundle bundle = d("server_parameters") instanceof JSONObject ? JsonUtils.toBundle(a("server_parameters", (JSONObject) null)) : new Bundle();
        int a2 = a();
        if (a2 != -1) {
            bundle.putBoolean("is_muted", a2 == 2 ? this.f4701b.q().isMuted() : a2 == 0);
        }
        if (!bundle.containsKey(AppLovinEventParameters.REVENUE_AMOUNT)) {
            bundle.putLong(AppLovinEventParameters.REVENUE_AMOUNT, a(AppLovinEventParameters.REVENUE_AMOUNT, 0L));
        }
        if (!bundle.containsKey("currency")) {
            bundle.putString("currency", a("currency", ""));
        }
        return bundle;
    }

    public Bundle ac() {
        return BundleUtils.getBundle("custom_parameters", new Bundle(), ab());
    }

    public long ad() {
        return b("adapter_timeout_ms", ((Long) this.f4701b.a(com.applovin.impl.sdk.c.a.k)).longValue());
    }

    public long ae() {
        return b("init_completion_delay_ms", -1L);
    }

    public long af() {
        return b("auto_init_delay_ms", 0L);
    }

    public String ag() {
        return this.f4707h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int b(String str, int i) {
        int i2;
        synchronized (this.f4704e) {
            i2 = JsonUtils.getInt(this.f4702c, str, i);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long b(String str, long j) {
        long j2;
        synchronized (this.f4704e) {
            j2 = JsonUtils.getLong(this.f4702c, str, j);
        }
        return j2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Boolean b(String str, Boolean bool) {
        Boolean bool2;
        synchronized (this.f4704e) {
            bool2 = JsonUtils.getBoolean(this.f4702c, str, bool);
        }
        return bool2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String b(String str, String str2) {
        String string;
        synchronized (this.f4704e) {
            string = JsonUtils.getString(this.f4702c, str, str2);
        }
        return string;
    }

    protected JSONArray b(String str, JSONArray jSONArray) {
        JSONArray jSONArray2;
        synchronized (this.f4704e) {
            jSONArray2 = JsonUtils.getJSONArray(this.f4702c, str, jSONArray);
        }
        return jSONArray2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(String str, int i) {
        synchronized (this.f4704e) {
            JsonUtils.putInt(this.f4702c, str, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(String str, long j) {
        synchronized (this.f4704e) {
            JsonUtils.putLong(this.f4702c, str, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(String str, String str2) {
        synchronized (this.f4704e) {
            JsonUtils.putString(this.f4702c, str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean c(String str) {
        boolean has;
        synchronized (this.f4704e) {
            has = this.f4702c.has(str);
        }
        return has;
    }

    protected Object d(String str) {
        Object opt;
        synchronized (this.f4704e) {
            opt = this.f4702c.opt(str);
        }
        return opt;
    }

    public void e(String str) {
        this.f4706g = str;
    }

    public void f(String str) {
        this.f4707h = str;
    }

    public List<String> g(String str) {
        if (str != null) {
            List optList = JsonUtils.optList(a(str, new JSONArray()), Collections.EMPTY_LIST);
            List optList2 = JsonUtils.optList(b(str, new JSONArray()), Collections.EMPTY_LIST);
            ArrayList arrayList = new ArrayList(optList.size() + optList2.size());
            arrayList.addAll(optList);
            arrayList.addAll(optList2);
            return arrayList;
        }
        throw new IllegalArgumentException("No key specified");
    }

    public String getAdUnitId() {
        return a("ad_unit_id", "");
    }

    public String getPlacement() {
        return this.f4706g;
    }

    public String h(String str) {
        String b2 = b(str, "");
        return StringUtils.isValidString(b2) ? b2 : a(str, "");
    }

    public String toString() {
        return "MediationAdapterSpec{adapterClass='" + R() + "', adapterName='" + S() + "', isTesting=" + U() + '}';
    }
}
