package com.bytedance.sdk.openadsdk.core.ROR;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.openadsdk.core.ROR.ac.Qhi;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: VastIcon.java */
/* loaded from: classes2.dex */
public class cJ extends ac {
    private long Gm;
    private long WAv;

    public cJ(int i, int i2, long j, long j2, Qhi.EnumC0217Qhi enumC0217Qhi, Qhi.cJ cJVar, String str, List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list, List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list2, String str2) {
        super(i, i2, enumC0217Qhi, cJVar, str, list, list2, str2);
        this.WAv = j;
        this.Gm = j2;
        this.hm = "icon_click";
    }

    @Override // com.bytedance.sdk.openadsdk.core.ROR.ac
    public JSONObject Qhi() throws JSONException {
        JSONObject Qhi = super.Qhi();
        if (Qhi != null) {
            Qhi.put(TypedValues.CycleType.S_WAVE_OFFSET, this.WAv);
            Qhi.put("duration", this.Gm);
        }
        return Qhi;
    }

    public static cJ Qhi(JSONObject jSONObject) {
        ac cJ = ac.cJ(jSONObject);
        if (cJ == null) {
            return null;
        }
        return new cJ(cJ.Qhi, cJ.cJ, jSONObject.optLong(TypedValues.CycleType.S_WAVE_OFFSET, -1L), jSONObject.optLong("duration", -1L), cJ.ac, cJ.CJ, cJ.fl, cJ.Tgh, cJ.ROR, cJ.Sf);
    }
}
