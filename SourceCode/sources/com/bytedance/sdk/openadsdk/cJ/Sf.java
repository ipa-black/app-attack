package com.bytedance.sdk.openadsdk.cJ;

import org.json.JSONObject;
/* compiled from: AdShowTime.java */
/* loaded from: classes2.dex */
public class Sf {
    private long CJ;
    private long Qhi;
    private long ac;
    private long cJ;
    private long fl;

    public void Qhi(long j) {
        if (this.Qhi <= 0) {
            this.Qhi = j;
        }
    }

    public void cJ(long j) {
        if (this.cJ <= 0) {
            this.cJ = j;
        }
    }

    public void ac(long j) {
        if (this.ac <= 0) {
            this.ac = j;
        }
    }

    public void CJ(long j) {
        if (this.CJ <= 0) {
            this.CJ = j;
        }
    }

    public void fl(long j) {
        if (this.fl <= 0) {
            this.fl = j;
        }
    }

    public boolean Qhi() {
        return this.Qhi > 0;
    }

    public void Qhi(long j, float f2) {
        if (f2 > 0.0f) {
            Qhi(j);
        }
        double d2 = f2;
        if (d2 >= 0.25d) {
            Qhi(j);
            cJ(j);
        }
        if (d2 >= 0.5d) {
            Qhi(j);
            cJ(j);
            ac(j);
        }
        if (d2 >= 0.75d) {
            Qhi(j);
            cJ(j);
            ac(j);
            CJ(j);
        }
        if (f2 >= 1.0f) {
            Qhi(j);
            cJ(j);
            ac(j);
            CJ(j);
            fl(j);
        }
    }

    public JSONObject cJ() {
        return Qhi((JSONObject) null);
    }

    public JSONObject Qhi(JSONObject jSONObject) {
        if (jSONObject == null) {
            try {
                jSONObject = new JSONObject();
            } catch (Exception unused) {
            }
        }
        long j = this.Qhi;
        if (j > 0) {
            jSONObject.put("show_start", j);
            long j2 = this.cJ;
            if (j2 > 0) {
                jSONObject.put("show_firstQuartile", j2);
                long j3 = this.ac;
                if (j3 > 0) {
                    jSONObject.put("show_mid", j3);
                    long j4 = this.CJ;
                    if (j4 > 0) {
                        jSONObject.put("show_thirdQuartile", j4);
                        long j5 = this.fl;
                        if (j5 > 0) {
                            jSONObject.put("show_full", j5);
                        }
                    }
                }
            }
        }
        return jSONObject;
    }
}
