package com.applovin.mediation.hybridAds;

import android.graphics.Color;
import androidx.core.view.ViewCompat;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.google.android.exoplayer2.C;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f6264a;

    public c(JSONObject jSONObject) {
        this.f6264a = jSONObject == null ? new JSONObject() : jSONObject;
    }

    public int a() {
        String string = JsonUtils.getString(this.f6264a, "background_color", null);
        return string != null ? Color.parseColor(string) : ViewCompat.MEASURED_STATE_MASK;
    }

    public int b() {
        return JsonUtils.getInt(this.f6264a, "close_button_top_margin", 20);
    }

    public int c() {
        return JsonUtils.getInt(this.f6264a, "close_button_h_margin", 5);
    }

    public int d() {
        return JsonUtils.getInt(this.f6264a, "close_button_size", 30);
    }

    public int e() {
        return JsonUtils.getInt(this.f6264a, "close_button_extended_touch_area_size", 10);
    }

    public long f() {
        return JsonUtils.getLong(this.f6264a, "close_button_delay_ms", C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }
}
