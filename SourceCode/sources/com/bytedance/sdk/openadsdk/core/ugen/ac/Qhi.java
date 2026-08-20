package com.bytedance.sdk.openadsdk.core.ugen.ac;

import com.bytedance.adsdk.ugeno.core.HzH;
import com.bytedance.sdk.component.adexpress.cJ.iMK;
import org.json.JSONObject;
/* compiled from: UGRenderRequest.java */
/* loaded from: classes2.dex */
public class Qhi extends iMK {
    private float CJ;
    private JSONObject Qhi;
    private float ac;
    private HzH cJ;

    public Qhi(C0230Qhi c0230Qhi) {
        super(c0230Qhi);
        this.Qhi = c0230Qhi.Qhi;
        this.cJ = c0230Qhi.cJ;
        this.ac = c0230Qhi.ac;
        this.CJ = c0230Qhi.CJ;
    }

    public float pM() {
        return this.ac;
    }

    public float Eh() {
        return this.CJ;
    }

    public JSONObject aP() {
        return this.Qhi;
    }

    public HzH NFd() {
        return this.cJ;
    }

    /* compiled from: UGRenderRequest.java */
    /* renamed from: com.bytedance.sdk.openadsdk.core.ugen.ac.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0230Qhi extends iMK.Qhi {
        private float CJ;
        private JSONObject Qhi;
        private float ac;
        private HzH cJ;

        public C0230Qhi Qhi(JSONObject jSONObject) {
            this.Qhi = jSONObject;
            return this;
        }

        public C0230Qhi Qhi(HzH hzH) {
            this.cJ = hzH;
            return this;
        }

        public C0230Qhi Qhi(float f2) {
            this.ac = f2;
            return this;
        }

        public C0230Qhi cJ(float f2) {
            this.CJ = f2;
            return this;
        }

        @Override // com.bytedance.sdk.component.adexpress.cJ.iMK.Qhi
        /* renamed from: cJ */
        public Qhi Qhi() {
            return new Qhi(this);
        }
    }
}
