package com.ironsource.sdk;

import com.ironsource.sdk.utils.SDKUtils;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public boolean f11543a = false;

    /* renamed from: b  reason: collision with root package name */
    public boolean f11544b = false;

    /* renamed from: c  reason: collision with root package name */
    public a f11545c = null;

    /* renamed from: d  reason: collision with root package name */
    public Map<String, String> f11546d;

    /* renamed from: e  reason: collision with root package name */
    private String f11547e;

    /* renamed from: f  reason: collision with root package name */
    private final com.ironsource.sdk.j.a f11548f;

    public c(String str, com.ironsource.sdk.j.a aVar) {
        this.f11547e = SDKUtils.requireNonEmptyOrNull(str, "Instance name can't be null");
        this.f11548f = (com.ironsource.sdk.j.a) SDKUtils.requireNonNull(aVar, "AdListener name can't be null");
    }

    public final b a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", this.f11547e);
            jSONObject.put("rewarded", this.f11543a);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return new b(this.f11544b ? d.a() : d.a(jSONObject), this.f11547e, this.f11543a, this.f11544b, this.f11546d, this.f11548f, this.f11545c);
    }
}
