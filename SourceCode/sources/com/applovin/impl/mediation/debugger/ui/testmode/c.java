package com.applovin.impl.mediation.debugger.ui.testmode;

import com.applovin.impl.sdk.c.d;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinSdkUtils;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final n f5188a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f5189b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f5190c;

    /* renamed from: d  reason: collision with root package name */
    private String f5191d;

    public c(n nVar) {
        this.f5188a = nVar;
        this.f5191d = (String) nVar.b((d<d<String>>) d.B, (d<String>) null);
        nVar.b(d.B);
        if (StringUtils.isValidString(this.f5191d)) {
            this.f5190c = true;
        }
        this.f5189b = ((Boolean) nVar.b((d<d<Boolean>>) d.C, (d<Boolean>) false)).booleanValue();
        nVar.b(d.C);
    }

    public void a(String str) {
        this.f5191d = str;
    }

    public void a(JSONObject jSONObject) {
        if (this.f5189b) {
            return;
        }
        this.f5189b = JsonUtils.containsCaseInsensitiveString(this.f5188a.Y().k().f6006b, JsonUtils.getJSONArray(jSONObject, "test_mode_idfas", new JSONArray())) || this.f5188a.Y().g() || AppLovinSdkUtils.isEmulator();
    }

    public void a(boolean z) {
        this.f5190c = z;
    }

    public boolean a() {
        return this.f5189b;
    }

    public boolean b() {
        return this.f5190c;
    }

    public String c() {
        return this.f5191d;
    }

    public void d() {
        this.f5188a.a((d<d<Boolean>>) d.C, (d<Boolean>) true);
    }
}
