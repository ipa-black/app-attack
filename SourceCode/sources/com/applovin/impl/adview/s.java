package com.applovin.impl.adview;

import com.applovin.impl.sdk.utils.JsonUtils;
import io.bidmachine.utils.IabUtils;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private final int f4485a;

    /* renamed from: b  reason: collision with root package name */
    private final int f4486b;

    /* renamed from: c  reason: collision with root package name */
    private final int f4487c;

    /* renamed from: d  reason: collision with root package name */
    private final int f4488d;

    /* renamed from: e  reason: collision with root package name */
    private final boolean f4489e;

    /* renamed from: f  reason: collision with root package name */
    private final int f4490f;

    /* renamed from: g  reason: collision with root package name */
    private final int f4491g;

    /* renamed from: h  reason: collision with root package name */
    private final int f4492h;
    private final float i;
    private final float j;

    public s(JSONObject jSONObject, com.applovin.impl.sdk.n nVar) {
        nVar.D();
        if (com.applovin.impl.sdk.v.a()) {
            nVar.D().c("VideoButtonProperties", "Updating video button properties with JSON = " + JsonUtils.maybeConvertToIndentedString(jSONObject));
        }
        this.f4485a = JsonUtils.getInt(jSONObject, IabUtils.KEY_WIDTH, 64);
        this.f4486b = JsonUtils.getInt(jSONObject, IabUtils.KEY_HEIGHT, 7);
        this.f4487c = JsonUtils.getInt(jSONObject, "margin", 20);
        this.f4488d = JsonUtils.getInt(jSONObject, "gravity", 85);
        this.f4489e = JsonUtils.getBoolean(jSONObject, "tap_to_fade", false).booleanValue();
        this.f4490f = JsonUtils.getInt(jSONObject, "tap_to_fade_duration_milliseconds", 500);
        this.f4491g = JsonUtils.getInt(jSONObject, "fade_in_duration_milliseconds", 500);
        this.f4492h = JsonUtils.getInt(jSONObject, "fade_out_duration_milliseconds", 500);
        this.i = JsonUtils.getFloat(jSONObject, "fade_in_delay_seconds", 1.0f);
        this.j = JsonUtils.getFloat(jSONObject, "fade_out_delay_seconds", 6.0f);
    }

    public int a() {
        return this.f4485a;
    }

    public int b() {
        return this.f4486b;
    }

    public int c() {
        return this.f4487c;
    }

    public int d() {
        return this.f4488d;
    }

    public boolean e() {
        return this.f4489e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        s sVar = (s) obj;
        return this.f4485a == sVar.f4485a && this.f4486b == sVar.f4486b && this.f4487c == sVar.f4487c && this.f4488d == sVar.f4488d && this.f4489e == sVar.f4489e && this.f4490f == sVar.f4490f && this.f4491g == sVar.f4491g && this.f4492h == sVar.f4492h && Float.compare(sVar.i, this.i) == 0 && Float.compare(sVar.j, this.j) == 0;
    }

    public long f() {
        return this.f4490f;
    }

    public long g() {
        return this.f4491g;
    }

    public long h() {
        return this.f4492h;
    }

    public int hashCode() {
        int i = ((((((((((((((this.f4485a * 31) + this.f4486b) * 31) + this.f4487c) * 31) + this.f4488d) * 31) + (this.f4489e ? 1 : 0)) * 31) + this.f4490f) * 31) + this.f4491g) * 31) + this.f4492h) * 31;
        float f2 = this.i;
        int floatToIntBits = (i + (f2 != 0.0f ? Float.floatToIntBits(f2) : 0)) * 31;
        float f3 = this.j;
        return floatToIntBits + (f3 != 0.0f ? Float.floatToIntBits(f3) : 0);
    }

    public float i() {
        return this.i;
    }

    public float j() {
        return this.j;
    }

    public String toString() {
        return "VideoButtonProperties{widthPercentOfScreen=" + this.f4485a + ", heightPercentOfScreen=" + this.f4486b + ", margin=" + this.f4487c + ", gravity=" + this.f4488d + ", tapToFade=" + this.f4489e + ", tapToFadeDurationMillis=" + this.f4490f + ", fadeInDurationMillis=" + this.f4491g + ", fadeOutDurationMillis=" + this.f4492h + ", fadeInDelay=" + this.i + ", fadeOutDelay=" + this.j + '}';
    }
}
