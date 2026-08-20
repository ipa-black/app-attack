package com.bytedance.sdk.openadsdk.core.ROR.cJ;

import com.bytedance.sdk.openadsdk.core.ROR.cJ.ac;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: VastFractionalProgressTracker.java */
/* loaded from: classes2.dex */
public class cJ extends ac implements Comparable<cJ> {
    private final float Qhi;

    private cJ(float f2, String str, ac.EnumC0219ac enumC0219ac, Boolean bool) {
        super(str, enumC0219ac, bool);
        this.Qhi = f2;
    }

    public boolean Qhi(float f2) {
        return this.Qhi <= f2 && !fl();
    }

    @Override // java.lang.Comparable
    /* renamed from: Qhi */
    public int compareTo(cJ cJVar) {
        if (cJVar != null) {
            float f2 = this.Qhi;
            float f3 = cJVar.Qhi;
            if (f2 > f3) {
                return 1;
            }
            return f2 < f3 ? -1 : 0;
        }
        return 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ROR.cJ.ac
    public void k_() {
        super.k_();
    }

    /* compiled from: VastFractionalProgressTracker.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        private final String Qhi;
        private final float cJ;
        private ac.EnumC0219ac ac = ac.EnumC0219ac.TRACKING_URL;
        private boolean CJ = false;

        public Qhi(String str, float f2) {
            this.Qhi = str;
            this.cJ = f2;
        }

        public cJ Qhi() {
            return new cJ(this.cJ, this.Qhi, this.ac, Boolean.valueOf(this.CJ));
        }
    }

    public JSONObject cJ() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("content", ac());
        jSONObject.put("trackingFraction", this.Qhi);
        return jSONObject;
    }
}
