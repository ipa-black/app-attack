package com.bytedance.sdk.openadsdk.core.model;

import android.util.SparseArray;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import org.json.JSONObject;
/* compiled from: DynamicClickInfo.java */
/* loaded from: classes2.dex */
public class pA implements com.bytedance.sdk.component.adexpress.ac {
    public JSONObject ABk;
    public final float CJ;
    public final String Gm;
    public JSONObject HzH;
    public final float Qhi;
    public final int ROR;
    public final int Sf;
    public final long Tgh;
    public final int WAv;
    public final float ac;
    public final float cJ;
    public final long fl;
    public final int hm;
    public int hpZ;
    public SparseArray<ac.Qhi> iMK;
    public boolean kYc;
    public final boolean pA;
    public int zc;

    private pA(Qhi qhi) {
        this.kYc = false;
        this.Qhi = qhi.ROR;
        this.cJ = qhi.Tgh;
        this.ac = qhi.fl;
        this.CJ = qhi.CJ;
        this.fl = qhi.ac;
        this.Tgh = qhi.cJ;
        this.ROR = qhi.Sf;
        this.Sf = qhi.hm;
        this.hm = qhi.WAv;
        this.WAv = qhi.Gm;
        this.Gm = qhi.zc;
        this.iMK = qhi.Qhi;
        this.pA = qhi.kYc;
        this.zc = qhi.ABk;
        this.ABk = qhi.iMK;
        this.hpZ = qhi.pA;
        this.HzH = qhi.hpZ;
        this.kYc = qhi.HzH;
    }

    /* compiled from: DynamicClickInfo.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        private int ABk;
        private float CJ;
        private int Gm;
        private boolean HzH = false;
        protected SparseArray<ac.Qhi> Qhi = new SparseArray<>();
        private float ROR;
        private int Sf;
        private float Tgh;
        private int WAv;
        private long ac;
        private long cJ;
        private float fl;
        private int hm;
        private JSONObject hpZ;
        private JSONObject iMK;
        private boolean kYc;
        private int pA;
        private String zc;

        public Qhi Qhi(int i) {
            this.pA = i;
            return this;
        }

        public Qhi cJ(int i) {
            this.ABk = i;
            return this;
        }

        public Qhi Qhi(JSONObject jSONObject) {
            this.iMK = jSONObject;
            return this;
        }

        public Qhi Qhi(boolean z) {
            this.kYc = z;
            return this;
        }

        public Qhi Qhi(long j) {
            this.cJ = j;
            return this;
        }

        public Qhi cJ(long j) {
            this.ac = j;
            return this;
        }

        public Qhi Qhi(float f2) {
            this.CJ = f2;
            return this;
        }

        public Qhi cJ(float f2) {
            this.fl = f2;
            return this;
        }

        public Qhi ac(float f2) {
            this.Tgh = f2;
            return this;
        }

        public Qhi CJ(float f2) {
            this.ROR = f2;
            return this;
        }

        public Qhi ac(int i) {
            this.Sf = i;
            return this;
        }

        public Qhi CJ(int i) {
            this.hm = i;
            return this;
        }

        public Qhi fl(int i) {
            this.WAv = i;
            return this;
        }

        public Qhi Tgh(int i) {
            this.Gm = i;
            return this;
        }

        public Qhi Qhi(String str) {
            this.zc = str;
            return this;
        }

        public Qhi Qhi(SparseArray<ac.Qhi> sparseArray) {
            this.Qhi = sparseArray;
            return this;
        }

        public Qhi cJ(JSONObject jSONObject) {
            this.hpZ = jSONObject;
            return this;
        }

        public Qhi cJ(boolean z) {
            this.HzH = z;
            return this;
        }

        public pA Qhi() {
            return new pA(this);
        }
    }
}
