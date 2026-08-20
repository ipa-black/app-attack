package com.applovin.impl.mediation.debugger.b.a;

import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final String f4947a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4948b;

    public e(JSONObject jSONObject, n nVar) {
        this.f4947a = JsonUtils.getString(jSONObject, "id", "");
        this.f4948b = JsonUtils.getString(jSONObject, "price", null);
    }

    public String a() {
        return this.f4947a;
    }

    public String b() {
        return this.f4948b;
    }
}
