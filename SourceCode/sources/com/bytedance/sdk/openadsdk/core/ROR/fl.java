package com.bytedance.sdk.openadsdk.core.ROR;

import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.openadsdk.core.ROR.cJ.Qhi;
import com.bytedance.sdk.openadsdk.core.ROR.cJ.ac;
import com.bytedance.sdk.openadsdk.core.ROR.cJ.cJ;
import com.bytedance.sdk.openadsdk.core.model.tP;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: VideoTrackers.java */
/* loaded from: classes2.dex */
public class fl {
    private final Qhi ABk;
    private tP HzH;
    private boolean MQ;
    private long hpZ;
    private boolean kYc;
    private String qMt;
    private boolean tP;
    public List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> Qhi = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> cJ = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> ac = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> CJ = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> fl = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> Tgh = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> ROR = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> Sf = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> hm = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> WAv = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.ROR.cJ.cJ> Gm = new ArrayList();
    public List<com.bytedance.sdk.openadsdk.core.ROR.cJ.Qhi> zc = new ArrayList();
    private final AtomicBoolean iMK = new AtomicBoolean(false);
    private final AtomicBoolean pA = new AtomicBoolean(false);

    public fl(Qhi qhi) {
        this.ABk = qhi;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi qhi) {
        Qhi(-1L, this.Qhi, qhi);
    }

    public void Qhi(long j) {
        if (this.iMK.compareAndSet(false, true)) {
            Qhi(j, this.cJ, null, new ac.cJ("show_impression", this.HzH));
        }
    }

    public void cJ(long j) {
        Qhi(j, this.ac, (com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi) null);
    }

    public void ac(long j) {
        Qhi(j, this.CJ, (com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi) null);
    }

    public void CJ(long j) {
        Qhi(j, this.fl, null, new ac.cJ("video_progress", this.HzH, 1.0f));
    }

    public void fl(long j) {
        if (this.pA.compareAndSet(false, true)) {
            Qhi(j, this.Tgh, (com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi) null);
        }
    }

    public void Tgh(long j) {
        Qhi(j, this.ROR, (com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi) null);
    }

    public void ROR(long j) {
        Qhi(j, this.Sf, null, new ac.cJ(Constants.CLICK, this.HzH));
    }

    public void Sf(long j) {
        Qhi(j, this.hm, (com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi) null);
    }

    public void hm(long j) {
        Qhi(j, this.WAv, (com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Qhi(long r8, long r10, com.bytedance.sdk.openadsdk.core.ROR.ROR r12) {
        /*
            r7 = this;
            long r0 = java.lang.System.currentTimeMillis()
            long r2 = r7.hpZ
            long r0 = r0 - r2
            r2 = 1000(0x3e8, double:4.94E-321)
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto Le
            return
        Le:
            r0 = 0
            int r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r2 < 0) goto L87
            int r0 = (r10 > r0 ? 1 : (r10 == r0 ? 0 : -1))
            if (r0 <= 0) goto L87
            long r0 = java.lang.System.currentTimeMillis()
            r7.hpZ = r0
            float r0 = (float) r8
            float r10 = (float) r10
            float r0 = r0 / r10
            java.util.List r4 = r7.Qhi(r8, r0)
            r10 = 1048576000(0x3e800000, float:0.25)
            int r11 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            r1 = 1
            if (r11 < 0) goto L3f
            boolean r11 = r7.kYc
            if (r11 != 0) goto L3f
            java.lang.String r11 = "firstQuartile"
            r7.cJ(r11)
            r7.kYc = r1
            if (r12 == 0) goto L3d
            r11 = 6
            r7.Qhi(r12, r11)
        L3d:
            r0 = r10
            goto L70
        L3f:
            r10 = 1056964608(0x3f000000, float:0.5)
            int r11 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            if (r11 < 0) goto L57
            boolean r11 = r7.tP
            if (r11 != 0) goto L57
            java.lang.String r11 = "midpoint"
            r7.cJ(r11)
            r7.tP = r1
            if (r12 == 0) goto L3d
            r11 = 7
            r7.Qhi(r12, r11)
            goto L3d
        L57:
            r10 = 1061158912(0x3f400000, float:0.75)
            int r11 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            if (r11 < 0) goto L70
            boolean r11 = r7.MQ
            if (r11 != 0) goto L70
            java.lang.String r11 = "thirdQuartile"
            r7.cJ(r11)
            r7.MQ = r1
            if (r12 == 0) goto L3d
            r11 = 8
            r7.Qhi(r12, r11)
            goto L3d
        L70:
            r10 = 1022739087(0x3cf5c28f, float:0.03)
            int r10 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1))
            if (r10 >= 0) goto L78
            r0 = 0
        L78:
            com.bytedance.sdk.openadsdk.core.ROR.cJ.ac$cJ r6 = new com.bytedance.sdk.openadsdk.core.ROR.cJ.ac$cJ
            java.lang.String r10 = "video_progress"
            com.bytedance.sdk.openadsdk.core.model.tP r11 = r7.HzH
            r6.<init>(r10, r11, r0)
            r5 = 0
            r1 = r7
            r2 = r8
            r1.Qhi(r2, r4, r5, r6)
        L87:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.ROR.fl.Qhi(long, long, com.bytedance.sdk.openadsdk.core.ROR.ROR):void");
    }

    private void Qhi(final ROR ror, final int i) {
        com.bytedance.sdk.component.utils.Sf.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ROR.fl.1
            @Override // java.lang.Runnable
            public void run() {
                ROR ror2 = ror;
                if (ror2 != null) {
                    ror2.Qhi(i);
                }
            }
        });
    }

    private void cJ(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("event", str);
            com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.HzH, this.qMt, "vast_play_track", jSONObject);
        } catch (Throwable unused) {
        }
    }

    private void Qhi(long j, List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list, com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi qhi, ac.cJ cJVar) {
        Qhi qhi2 = this.ABk;
        com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(list, qhi, j, qhi2 != null ? qhi2.ROR() : null, cJVar);
    }

    private void Qhi(long j, List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list, com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi qhi) {
        Qhi(j, list, qhi, null);
    }

    public List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> Qhi(long j, float f2) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < this.Gm.size(); i++) {
            com.bytedance.sdk.openadsdk.core.ROR.cJ.cJ cJVar = this.Gm.get(i);
            if (cJVar.Qhi(f2)) {
                arrayList.add(cJVar);
            }
        }
        for (int i2 = 0; i2 < this.zc.size(); i2++) {
            com.bytedance.sdk.openadsdk.core.ROR.cJ.Qhi qhi = this.zc.get(i2);
            if (qhi.Qhi(j)) {
                arrayList.add(qhi);
            }
        }
        return arrayList;
    }

    public void Qhi(List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list) {
        this.cJ.addAll(list);
    }

    public void cJ(List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list) {
        this.ac.addAll(list);
    }

    public void ac(List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list) {
        this.CJ.addAll(list);
    }

    public void CJ(List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list) {
        this.fl.addAll(list);
    }

    public void fl(List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list) {
        this.Tgh.addAll(list);
    }

    public void Tgh(List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list) {
        this.ROR.addAll(list);
    }

    public void ROR(List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list) {
        this.Sf.addAll(list);
    }

    public void Sf(List<com.bytedance.sdk.openadsdk.core.ROR.cJ.cJ> list) {
        this.Gm.addAll(list);
        Collections.sort(this.Gm);
    }

    public void hm(List<com.bytedance.sdk.openadsdk.core.ROR.cJ.Qhi> list) {
        this.zc.addAll(list);
        Collections.sort(this.zc);
    }

    public void WAv(List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list) {
        this.Qhi.addAll(list);
    }

    public void Gm(List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list) {
        this.hm.addAll(list);
    }

    public void zc(List<com.bytedance.sdk.openadsdk.core.ROR.cJ.ac> list) {
        this.WAv.addAll(list);
    }

    public JSONObject Qhi() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("errorTrackers", com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(this.Qhi));
        jSONObject.put("impressionTrackers", com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(this.cJ));
        jSONObject.put("pauseTrackers", com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(this.ac));
        jSONObject.put("resumeTrackers", com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(this.CJ));
        jSONObject.put("completeTrackers", com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(this.fl));
        jSONObject.put("closeTrackers", com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(this.Tgh));
        jSONObject.put("skipTrackers", com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(this.ROR));
        jSONObject.put("clickTrackers", com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(this.Sf));
        jSONObject.put("muteTrackers", com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(this.hm));
        jSONObject.put("unMuteTrackers", com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(this.WAv));
        jSONObject.put("fractionalTrackers", cJ());
        jSONObject.put("absoluteTrackers", ac());
        return jSONObject;
    }

    private JSONArray cJ() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (com.bytedance.sdk.openadsdk.core.ROR.cJ.cJ cJVar : this.Gm) {
            jSONArray.put(cJVar.cJ());
        }
        return jSONArray;
    }

    private JSONArray ac() throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (com.bytedance.sdk.openadsdk.core.ROR.cJ.Qhi qhi : this.zc) {
            jSONArray.put(qhi.Qhi());
        }
        return jSONArray;
    }

    public void Qhi(JSONObject jSONObject) {
        WAv(com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(jSONObject.optJSONArray("errorTrackers")));
        Qhi(com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(jSONObject.optJSONArray("impressionTrackers")));
        cJ(com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(jSONObject.optJSONArray("pauseTrackers"), true));
        ac(com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(jSONObject.optJSONArray("resumeTrackers"), true));
        CJ(com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(jSONObject.optJSONArray("completeTrackers")));
        fl(com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(jSONObject.optJSONArray("closeTrackers")));
        Tgh(com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(jSONObject.optJSONArray("skipTrackers")));
        ROR(com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(jSONObject.optJSONArray("clickTrackers")));
        Gm(com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(jSONObject.optJSONArray("muteTrackers"), true));
        zc(com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.Qhi(jSONObject.optJSONArray("unMuteTrackers"), true));
        Sf(com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.cJ(jSONObject.optJSONArray("fractionalTrackers")));
        hm(com.bytedance.sdk.openadsdk.core.ROR.cJ.ac.ac(jSONObject.optJSONArray("absoluteTrackers")));
    }

    public void Qhi(tP tPVar) {
        this.HzH = tPVar;
    }

    public void Qhi(String str) {
        this.qMt = str;
    }

    public void Qhi(String str, long j) {
        if (TextUtils.isEmpty(str) || j < 0) {
            return;
        }
        hm(Collections.singletonList(new Qhi.C0218Qhi(str, j).Qhi()));
    }

    public void Qhi(String str, float f2) {
        if (TextUtils.isEmpty(str) || f2 < 0.0f) {
            return;
        }
        Sf(Collections.singletonList(new cJ.Qhi(str, f2).Qhi()));
    }

    public void Qhi(fl flVar) {
        WAv(flVar.Qhi);
        Qhi(flVar.cJ);
        cJ(flVar.ac);
        ac(flVar.CJ);
        CJ(flVar.fl);
        fl(flVar.Tgh);
        Tgh(flVar.ROR);
        ROR(flVar.Sf);
        Gm(flVar.hm);
        zc(flVar.WAv);
        Sf(flVar.Gm);
        hm(flVar.zc);
    }
}
