package com.bytedance.sdk.openadsdk.Gm.Qhi;

import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseIntArray;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.component.cJ.Qhi.pA;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.Iterator;
import org.json.JSONObject;
/* compiled from: RequestMonitor.java */
/* loaded from: classes2.dex */
public class Tgh {
    public static int Qhi = -10;
    private long CJ;
    private int Gm;
    private int ROR;
    private int Sf;
    private long Tgh;
    private String WAv;
    private String ac;
    private final int cJ;
    private long fl;
    private boolean hm;

    public Tgh(int i) {
        this.cJ = i;
    }

    public Tgh Qhi(String str) {
        this.ac = str;
        return this;
    }

    public Tgh cJ(String str) {
        byte[] bytes;
        if (!TextUtils.isEmpty(str) && (bytes = str.getBytes()) != null) {
            this.ROR = bytes.length;
        }
        return this;
    }

    public Tgh Qhi(pA pAVar) {
        if (pAVar != null) {
            if (pAVar.Tgh == pA.Qhi.STRING_TYPE && !TextUtils.isEmpty(pAVar.Qhi())) {
                this.ROR = pAVar.Qhi().getBytes().length;
            }
            if (pAVar.Tgh == pA.Qhi.BYTE_ARRAY_TYPE && pAVar.fl != null) {
                this.ROR = pAVar.fl.length;
            }
        }
        return this;
    }

    public void Qhi() {
        this.CJ = SystemClock.elapsedRealtime();
    }

    public Tgh ac(String str) {
        byte[] bytes;
        if (!TextUtils.isEmpty(str) && (bytes = str.getBytes()) != null) {
            this.Sf = bytes.length;
        }
        return this;
    }

    public Tgh Qhi(int i) {
        this.Gm = i;
        return this;
    }

    public void cJ() {
        this.Tgh = SystemClock.elapsedRealtime() - this.CJ;
    }

    public Tgh CJ(String str) {
        this.WAv = str;
        return this;
    }

    public Tgh Qhi(boolean z) {
        this.hm = z;
        return this;
    }

    public void ac() {
        this.fl = SystemClock.elapsedRealtime() - this.CJ;
        lG.ac().execute(new Runnable() { // from class: com.bytedance.sdk.openadsdk.Gm.Qhi.Tgh.1
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject;
                Qhi qhi;
                Qhi qhi2;
                synchronized (Tgh.class) {
                    String cJ = com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.cJ("tt_sdk_req_monitor", "req_monitor_data", null);
                    try {
                        if (TextUtils.isEmpty(cJ)) {
                            jSONObject = new JSONObject();
                        } else {
                            jSONObject = new JSONObject(cJ);
                        }
                    } catch (Exception e2) {
                        ABk.cJ(e2.getMessage());
                    }
                    if (jSONObject.has(Tgh.this.ac)) {
                        JSONObject optJSONObject = jSONObject.optJSONObject(Tgh.this.ac);
                        if (optJSONObject != null) {
                            qhi2 = Qhi.Qhi(optJSONObject);
                            qhi2.Qhi(Tgh.this.hm, Tgh.this.fl, Tgh.this.ROR, Tgh.this.Sf, Tgh.this.Gm);
                            jSONObject.put(Tgh.this.ac, qhi2.Qhi());
                            com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("tt_sdk_req_monitor", "req_monitor_data", jSONObject.toString());
                        } else {
                            qhi = new Qhi(Tgh.this.cJ, Tgh.this.hm, Tgh.this.fl, Tgh.this.ROR, Tgh.this.Sf, Tgh.this.Gm);
                        }
                    } else {
                        qhi = new Qhi(Tgh.this.cJ, Tgh.this.hm, Tgh.this.fl, Tgh.this.ROR, Tgh.this.Sf, Tgh.this.Gm);
                    }
                    qhi2 = qhi;
                    jSONObject.put(Tgh.this.ac, qhi2.Qhi());
                    com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("tt_sdk_req_monitor", "req_monitor_data", jSONObject.toString());
                }
            }
        });
    }

    public static void CJ() {
        synchronized (Tgh.class) {
            long Qhi2 = com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("tt_sdk_req_monitor", "req_monitor_las_req", 0L);
            if (Qhi2 <= 0) {
                com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("tt_sdk_req_monitor", "req_monitor_las_req", Long.valueOf(System.currentTimeMillis()));
                return;
            }
            if (System.currentTimeMillis() - Qhi2 >= Constants.MILLIS_IN_DAY) {
                String cJ = com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.cJ("tt_sdk_req_monitor", "req_monitor_data", null);
                if (!TextUtils.isEmpty(cJ)) {
                    com.bytedance.sdk.openadsdk.Gm.ac.ac(cJ);
                    com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("tt_sdk_req_monitor");
                    com.bytedance.sdk.openadsdk.multipro.CJ.Tgh.Qhi("tt_sdk_req_monitor", "req_monitor_las_req", Long.valueOf(System.currentTimeMillis()));
                }
            }
        }
    }

    /* compiled from: RequestMonitor.java */
    /* loaded from: classes2.dex */
    private static class Qhi {
        private long CJ;
        private int Qhi;
        private int ROR;
        private final SparseIntArray Sf;
        private int Tgh;
        private int ac;
        private int cJ;
        private long fl;

        public Qhi() {
            this.Qhi = 0;
            this.cJ = 0;
            this.ac = 0;
            this.CJ = 0L;
            this.fl = 0L;
            this.Tgh = 0;
            this.ROR = 0;
            this.Sf = new SparseIntArray();
        }

        public Qhi(int i, boolean z, long j, int i2, int i3, int i4) {
            this.Qhi = 0;
            this.cJ = 0;
            this.ac = 0;
            this.CJ = 0L;
            this.fl = 0L;
            this.Tgh = 0;
            this.ROR = 0;
            SparseIntArray sparseIntArray = new SparseIntArray();
            this.Sf = sparseIntArray;
            this.Qhi = i;
            if (z) {
                this.cJ++;
                this.CJ = j;
            } else {
                this.ac++;
                this.fl = j;
                sparseIntArray.put(i4, 1);
            }
            this.Tgh = i2;
            this.ROR = i3;
        }

        public void Qhi(boolean z, long j, int i, int i2, int i3) {
            if (!z) {
                this.Sf.put(i3, this.Sf.get(i3) + 1);
            }
            int i4 = this.cJ;
            int i5 = this.ac;
            int i6 = i4 + i5;
            int i7 = (this.Tgh * i6) + i;
            int i8 = i6 + 1;
            this.Tgh = i7 / i8;
            this.ROR = ((this.ROR * i6) + i2) / i8;
            if (z) {
                int i9 = i4 + 1;
                this.cJ = i9;
                this.CJ = ((this.CJ * i4) + j) / i9;
                return;
            }
            int i10 = i5 + 1;
            this.ac = i10;
            this.fl = ((this.fl * i5) + j) / i10;
        }

        public static Qhi Qhi(JSONObject jSONObject) {
            Qhi qhi = new Qhi();
            qhi.Qhi = jSONObject.optInt(SessionDescription.ATTR_TYPE, 0);
            qhi.cJ = jSONObject.optInt("suc_times", 0);
            qhi.ac = jSONObject.optInt("fail_times", 0);
            qhi.CJ = jSONObject.optLong("suc_duration", 0L);
            qhi.fl = jSONObject.optLong("fail_duration", 0L);
            qhi.Tgh = jSONObject.optInt("req_size", 0);
            qhi.ROR = jSONObject.optInt("res_size", 0);
            JSONObject optJSONObject = jSONObject.optJSONObject("codes");
            if (optJSONObject != null) {
                Iterator<String> keys = optJSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    qhi.Sf.put(Integer.parseInt(next), optJSONObject.optInt(next));
                }
            }
            return qhi;
        }

        public JSONObject Qhi() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put(SessionDescription.ATTR_TYPE, this.Qhi);
                jSONObject.put("suc_times", this.cJ);
                jSONObject.put("fail_times", this.ac);
                jSONObject.put("suc_duration", this.CJ);
                jSONObject.put("fail_duration", this.fl);
                jSONObject.put("req_size", this.Tgh);
                jSONObject.put("res_size", this.ROR);
                JSONObject jSONObject2 = new JSONObject();
                for (int i = 0; i < this.Sf.size(); i++) {
                    jSONObject2.put(String.valueOf(this.Sf.keyAt(i)), this.Sf.valueAt(i));
                }
                jSONObject.put("codes", jSONObject2);
            } catch (Exception e2) {
                ABk.cJ(e2.getMessage());
            }
            return jSONObject;
        }
    }
}
