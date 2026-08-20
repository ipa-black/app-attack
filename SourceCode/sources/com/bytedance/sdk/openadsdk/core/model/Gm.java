package com.bytedance.sdk.openadsdk.core.model;

import android.util.SparseArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import io.bidmachine.utils.IabUtils;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: ClickEventModel.java */
/* loaded from: classes2.dex */
public class Gm {
    private final int ABk;
    private final int[] CJ;
    private final int Gm;
    private final JSONObject HzH;
    private final int[] Qhi;
    private final float ROR;
    private final float Sf;
    private final float Tgh;
    private final long WAv;
    private final int[] ac;
    private final int[] cJ;
    private final float fl;
    private final long hm;
    private final int hpZ;
    private final int iMK;
    private final String kYc;
    private final SparseArray<ac.Qhi> pA;
    private final JSONObject tP;
    private final int zc;

    private Gm(Qhi qhi) {
        this.Qhi = qhi.Gm;
        this.cJ = qhi.zc;
        this.CJ = qhi.ABk;
        this.ac = qhi.WAv;
        this.fl = qhi.hm;
        this.Tgh = qhi.Sf;
        this.ROR = qhi.ROR;
        this.Sf = qhi.Tgh;
        this.hm = qhi.fl;
        this.WAv = qhi.CJ;
        this.Gm = qhi.iMK;
        this.zc = qhi.pA;
        this.ABk = qhi.hpZ;
        this.iMK = qhi.kYc;
        this.pA = qhi.HzH;
        this.kYc = qhi.tP;
        this.hpZ = qhi.MQ;
        this.HzH = qhi.qMt;
        this.tP = qhi.EBS;
    }

    public JSONObject Qhi() {
        JSONObject jSONObject = new JSONObject();
        try {
            JSONObject jSONObject2 = this.tP;
            if (jSONObject2 != null) {
                try {
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        jSONObject.putOpt(next, this.tP.opt(next));
                    }
                } catch (Exception unused) {
                }
            }
            int[] iArr = this.Qhi;
            if (iArr != null && iArr.length == 2) {
                jSONObject.putOpt("ad_x", Integer.valueOf(iArr[0])).putOpt("ad_y", Integer.valueOf(this.Qhi[1]));
            }
            int[] iArr2 = this.cJ;
            if (iArr2 != null && iArr2.length == 2) {
                jSONObject.putOpt(IabUtils.KEY_WIDTH, Integer.valueOf(iArr2[0])).putOpt(IabUtils.KEY_HEIGHT, Integer.valueOf(this.cJ[1]));
            }
            int[] iArr3 = this.ac;
            if (iArr3 != null && iArr3.length == 2) {
                jSONObject.putOpt("button_x", Integer.valueOf(iArr3[0])).putOpt("button_y", Integer.valueOf(this.ac[1]));
            }
            int[] iArr4 = this.CJ;
            if (iArr4 != null && iArr4.length == 2) {
                jSONObject.putOpt("button_width", Integer.valueOf(iArr4[0])).putOpt("button_height", Integer.valueOf(this.CJ[1]));
            }
            jSONObject.putOpt("down_x", Float.toString(this.fl)).putOpt("down_y", Float.toString(this.Tgh)).putOpt("up_x", Float.toString(this.ROR)).putOpt("up_y", Float.toString(this.Sf)).putOpt("down_time", Long.valueOf(this.hm)).putOpt("up_time", Long.valueOf(this.WAv)).putOpt("toolType", Integer.valueOf(this.Gm)).putOpt("deviceId", Integer.valueOf(this.zc)).putOpt("source", Integer.valueOf(this.ABk)).putOpt("ft", Qhi(this.pA, this.iMK)).putOpt("click_area_type", this.kYc);
            int i = this.hpZ;
            if (i > 0) {
                jSONObject.putOpt("areaType", Integer.valueOf(i));
            }
            JSONObject jSONObject3 = this.HzH;
            if (jSONObject3 != null) {
                jSONObject.putOpt("rectInfo", jSONObject3);
            }
        } catch (Exception unused2) {
        }
        return jSONObject;
    }

    public static JSONObject Qhi(SparseArray<ac.Qhi> sparseArray, int i) {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            if (sparseArray != null) {
                for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                    ac.Qhi valueAt = sparseArray.valueAt(i2);
                    if (valueAt != null) {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.putOpt("force", Double.valueOf(valueAt.ac)).putOpt("mr", Double.valueOf(valueAt.cJ)).putOpt(TypedValues.CycleType.S_WAVE_PHASE, Integer.valueOf(valueAt.Qhi)).putOpt("ts", Long.valueOf(valueAt.CJ));
                        jSONArray.put(jSONObject2);
                        jSONObject.putOpt("ftc", Integer.valueOf(i)).putOpt("info", jSONArray);
                    }
                }
            }
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    /* compiled from: ClickEventModel.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        private int[] ABk;
        private long CJ;
        private JSONObject EBS;
        private int[] Gm;
        private SparseArray<ac.Qhi> HzH;
        private int MQ;
        float Qhi;
        private float ROR;
        private float Sf;
        private float Tgh;
        private int[] WAv;
        float ac;
        int cJ;
        private long fl;
        private float hm;
        private int hpZ;
        private int iMK;
        private int kYc;
        private int pA;
        private JSONObject qMt;
        private String tP;
        private int[] zc;

        public Qhi Qhi(int i) {
            this.MQ = i;
            return this;
        }

        public Qhi Qhi(JSONObject jSONObject) {
            this.qMt = jSONObject;
            return this;
        }

        public Qhi cJ(JSONObject jSONObject) {
            this.EBS = jSONObject;
            return this;
        }

        public Qhi cJ(int i) {
            this.kYc = i;
            return this;
        }

        public Qhi Qhi(SparseArray<ac.Qhi> sparseArray) {
            this.HzH = sparseArray;
            return this;
        }

        public Qhi Qhi(float f2) {
            this.Qhi = f2;
            return this;
        }

        public Qhi ac(int i) {
            this.cJ = i;
            return this;
        }

        public Qhi cJ(float f2) {
            this.ac = f2;
            return this;
        }

        public Qhi Qhi(long j) {
            this.CJ = j;
            return this;
        }

        public Qhi cJ(long j) {
            this.fl = j;
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

        public Qhi fl(float f2) {
            this.Sf = f2;
            return this;
        }

        public Qhi Tgh(float f2) {
            this.hm = f2;
            return this;
        }

        public Qhi Qhi(int[] iArr) {
            this.WAv = iArr;
            return this;
        }

        public Qhi cJ(int[] iArr) {
            this.Gm = iArr;
            return this;
        }

        public Qhi ac(int[] iArr) {
            this.zc = iArr;
            return this;
        }

        public Qhi CJ(int[] iArr) {
            this.ABk = iArr;
            return this;
        }

        public Qhi CJ(int i) {
            this.iMK = i;
            return this;
        }

        public Qhi fl(int i) {
            this.pA = i;
            return this;
        }

        public Qhi Tgh(int i) {
            this.hpZ = i;
            return this;
        }

        public Qhi Qhi(String str) {
            this.tP = str;
            return this;
        }

        public Gm Qhi() {
            return new Gm(this);
        }
    }
}
