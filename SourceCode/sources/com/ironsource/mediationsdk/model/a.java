package com.ironsource.mediationsdk.model;

import com.ironsource.mediationsdk.IronSource;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public NetworkSettings f11235a;

    /* renamed from: b  reason: collision with root package name */
    public JSONObject f11236b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f11237c;

    /* renamed from: d  reason: collision with root package name */
    public int f11238d;

    /* renamed from: e  reason: collision with root package name */
    public int f11239e;

    /* renamed from: f  reason: collision with root package name */
    public IronSource.AD_UNIT f11240f;

    public a(NetworkSettings networkSettings, JSONObject jSONObject, IronSource.AD_UNIT ad_unit) {
        this.f11235a = networkSettings;
        this.f11236b = jSONObject;
        int optInt = jSONObject.optInt("instanceType");
        this.f11238d = optInt;
        this.f11237c = optInt == 2;
        this.f11239e = jSONObject.optInt("maxAdsPerSession", 99);
        this.f11240f = ad_unit;
    }
}
