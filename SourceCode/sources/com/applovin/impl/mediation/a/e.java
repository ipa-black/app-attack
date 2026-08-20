package com.applovin.impl.mediation.a;

import com.applovin.impl.sdk.n;
import com.applovin.mediation.MaxAdFormat;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class e extends a {
    /* JADX INFO: Access modifiers changed from: protected */
    public e(Map<String, Object> map, JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.mediation.g gVar, n nVar) {
        super(map, jSONObject, jSONObject2, gVar, nVar);
    }

    public int H() {
        MaxAdFormat format = getFormat();
        com.applovin.impl.sdk.c.b<Integer> bVar = format == MaxAdFormat.BANNER ? com.applovin.impl.sdk.c.b.bR : format == MaxAdFormat.MREC ? com.applovin.impl.sdk.c.b.bT : format == MaxAdFormat.LEADER ? com.applovin.impl.sdk.c.b.bV : format == MaxAdFormat.NATIVE ? com.applovin.impl.sdk.c.b.bX : null;
        if (bVar != null) {
            return b("viewability_min_width", ((Integer) this.f4701b.a(bVar)).intValue());
        }
        return 0;
    }

    public int I() {
        MaxAdFormat format = getFormat();
        com.applovin.impl.sdk.c.b<Integer> bVar = format == MaxAdFormat.BANNER ? com.applovin.impl.sdk.c.b.bS : format == MaxAdFormat.MREC ? com.applovin.impl.sdk.c.b.bU : format == MaxAdFormat.LEADER ? com.applovin.impl.sdk.c.b.bW : format == MaxAdFormat.NATIVE ? com.applovin.impl.sdk.c.b.bY : null;
        if (bVar != null) {
            return b("viewability_min_height", ((Integer) this.f4701b.a(bVar)).intValue());
        }
        return 0;
    }

    public float J() {
        return a("viewability_min_alpha", ((Float) this.f4701b.a(com.applovin.impl.sdk.c.a.bZ)).floatValue() / 100.0f);
    }

    public int K() {
        return b("viewability_min_pixels", -1);
    }

    public float L() {
        return a("viewability_min_percentage_dp", -1.0f);
    }

    public float M() {
        return a("viewability_min_percentage_pixels", -1.0f);
    }

    public boolean N() {
        return K() >= 0 || L() >= 0.0f || M() >= 0.0f;
    }

    public long O() {
        return b("viewability_timer_min_visible_ms", ((Long) this.f4701b.a(com.applovin.impl.sdk.c.a.ca)).longValue());
    }
}
