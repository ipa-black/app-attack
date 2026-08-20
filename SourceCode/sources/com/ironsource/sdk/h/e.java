package com.ironsource.sdk.h;

import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public JSONObject f12077a;

    public e(JSONObject jSONObject) {
        this.f12077a = jSONObject == null ? new JSONObject() : jSONObject;
    }

    public final boolean a() {
        return this.f12077a.optBoolean("useCacheDir", false);
    }
}
