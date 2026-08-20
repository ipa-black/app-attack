package com.bytedance.sdk.openadsdk.cJ.CJ.Qhi;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.api.ac.ac;
import com.bykv.vk.openvk.component.video.api.ac.cJ;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Gm;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.ROR;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Tgh;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.WAv;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.fl;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.hm;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.hpZ;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.iMK;
import com.bytedance.sdk.openadsdk.cJ.CJ.cJ.pA;
import com.bytedance.sdk.openadsdk.cJ.Sf;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.bxS;
import com.bytedance.sdk.openadsdk.utils.js;
import java.io.File;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: VideoEventManager.java */
/* loaded from: classes2.dex */
public class Qhi {
    private static final Map<com.bykv.vk.openvk.component.video.api.cJ.Qhi, hpZ> Qhi = Collections.synchronizedMap(new WeakHashMap());

    public static JSONObject Qhi(tP tPVar, String str, int i, ac acVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("session_id", str);
            }
            if (i > 0) {
                jSONObject.put("play_type", String.valueOf(i));
            }
            if (tPVar != null) {
                cJ FQ = tPVar.FQ();
                if (FQ != null) {
                    jSONObject.put("video_resolution", FQ.hm());
                    jSONObject.put("video_size", Long.valueOf(FQ.fl()));
                    jSONObject.put("video_url", FQ.Gm());
                    jSONObject.put("player_type", acVar.pA());
                    jSONObject.put("video_encode_type", acVar.Gm() ? 1 : 0);
                }
                jSONObject.put("dp_creative_type", tPVar.nR());
            }
        } catch (JSONException e2) {
            ABk.Qhi("TTAD.VideoEventManager", "", e2);
        }
        return jSONObject;
    }

    public static void Qhi(com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi<Gm> qhi) {
        com.bytedance.sdk.openadsdk.Gm.ac.Qhi("load_video_error", qhi);
    }

    public static void cJ(com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi<WAv> qhi) {
        com.bytedance.sdk.openadsdk.Gm.ac.Qhi("load_video_cancel", qhi);
    }

    public static void Qhi(tP tPVar, com.bykv.vk.openvk.component.video.api.cJ.Qhi qhi, ac acVar) {
        if (tPVar == null || qhi == null || acVar == null) {
            return;
        }
        String Qhi2 = bxS.Qhi();
        int i = CacheDirFactory.getICacheDir(tPVar.zTC()).Qhi(acVar) ? 1 : 2;
        Qhi.put(qhi, new hpZ(SystemClock.elapsedRealtime(), Qhi2, i, acVar, tPVar));
        JSONObject Qhi3 = Qhi(tPVar, Qhi2, i, acVar);
        String Qhi4 = js.Qhi(tPVar);
        if (acVar.CJ > 0) {
            try {
                Qhi3.put("play_time", acVar.CJ);
            } catch (JSONException e2) {
                ABk.Qhi("TTAD.VideoEventManager", "", e2);
            }
        }
        com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi qhi2 = new com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi(tPVar, Qhi4, Qhi3, null);
        qhi2.Qhi(acVar.pA() == -1);
        Qhi(qhi2, "play_start");
    }

    public static void Qhi(Context context, com.bykv.vk.openvk.component.video.api.cJ.Qhi qhi, hpZ.Qhi qhi2, Sf sf) {
        hpZ hpz;
        if (context == null || qhi == null || qhi2 == null || (hpz = Qhi.get(qhi)) == null) {
            return;
        }
        ac CJ = hpz.CJ();
        tP fl = hpz.fl();
        if (CJ == null || fl == null) {
            return;
        }
        if (!qhi2.WAv()) {
            Qhi(fl, CJ, qhi2);
        }
        hm hmVar = new hm();
        hmVar.Qhi(qhi2.Gm() ? 1 : 0);
        hmVar.cJ(CacheDirFactory.getICacheDir(fl.zTC()).cJ(CJ));
        hmVar.Qhi(SystemClock.elapsedRealtime() - hpz.Qhi());
        JSONObject Qhi2 = Qhi(fl, hpz.cJ(), hpz.ac(), CJ);
        if (CJ.CJ > 0) {
            try {
                Qhi2.put("play_time", CJ.CJ);
            } catch (JSONException e2) {
                ABk.Qhi("TTAD.VideoEventManager", "", e2);
            }
        }
        com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi qhi3 = new com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi(fl, js.Qhi(fl), Qhi2, hmVar);
        qhi3.Qhi(qhi2.WAv());
        Qhi(qhi3, "feed_play", sf);
    }

    public static void Qhi(com.bykv.vk.openvk.component.video.api.cJ.Qhi qhi, hpZ.Qhi qhi2) {
        hpZ hpz;
        if (qhi == null || qhi2 == null || (hpz = Qhi.get(qhi)) == null) {
            return;
        }
        ac CJ = hpz.CJ();
        tP fl = hpz.fl();
        if (CJ == null || fl == null) {
            return;
        }
        long Qhi2 = qhi2.Qhi();
        long ac = qhi2.ac();
        if (ac <= 0 || Qhi2 <= 0) {
            return;
        }
        com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Sf sf = new com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Sf();
        sf.Qhi(qhi2.cJ());
        sf.cJ(ac);
        JSONObject Qhi3 = Qhi(fl, hpz.cJ(), hpz.ac(), CJ);
        if (CJ.CJ > 0) {
            try {
                Qhi3.put("play_time", CJ.CJ);
            } catch (JSONException e2) {
                ABk.Qhi("TTAD.VideoEventManager", "", e2);
            }
        }
        com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi qhi3 = new com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi(fl, js.Qhi(fl), Qhi3, sf);
        qhi3.Qhi(qhi2.WAv());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", Qhi2);
            jSONObject.put("percent", qhi2.Tgh());
            Qhi(qhi3, "feed_pause", jSONObject);
        } catch (JSONException e3) {
            ABk.Qhi("TTAD.VideoEventManager", "", e3);
        }
    }

    public static void cJ(com.bykv.vk.openvk.component.video.api.cJ.Qhi qhi, hpZ.Qhi qhi2) {
        hpZ hpz;
        if (qhi == null || qhi2 == null || (hpz = Qhi.get(qhi)) == null) {
            return;
        }
        ac CJ = hpz.CJ();
        tP fl = hpz.fl();
        if (CJ == null || fl == null) {
            return;
        }
        long Qhi2 = qhi2.Qhi();
        long ac = qhi2.ac();
        if (ac <= 0 || Qhi2 <= 0) {
            return;
        }
        Tgh tgh = new Tgh();
        tgh.Qhi(qhi2.cJ());
        tgh.cJ(ac);
        JSONObject Qhi3 = Qhi(fl, hpz.cJ(), hpz.ac(), CJ);
        if (CJ.CJ > 0) {
            try {
                Qhi3.put("play_time", CJ.CJ);
            } catch (JSONException e2) {
                ABk.Qhi("TTAD.VideoEventManager", "", e2);
            }
        }
        com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi qhi3 = new com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi(fl, js.Qhi(fl), Qhi3, tgh);
        qhi3.Qhi(qhi2.WAv());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", Qhi2);
            jSONObject.put("percent", qhi2.Tgh());
            Qhi(qhi3, "feed_continue", jSONObject);
        } catch (JSONException e3) {
            ABk.Qhi("TTAD.VideoEventManager", "", e3);
        }
    }

    public static void ac(com.bykv.vk.openvk.component.video.api.cJ.Qhi qhi, hpZ.Qhi qhi2) {
        hpZ hpz;
        if (qhi == null || qhi2 == null || (hpz = Qhi.get(qhi)) == null) {
            return;
        }
        ac CJ = hpz.CJ();
        tP fl = hpz.fl();
        if (CJ == null || fl == null) {
            return;
        }
        long Qhi2 = qhi2.Qhi();
        long ac = qhi2.ac();
        pA pAVar = new pA(qhi2.zc());
        pAVar.Qhi(qhi2.cJ());
        pAVar.cJ(ac);
        JSONObject Qhi3 = Qhi(fl, hpz.cJ(), hpz.ac(), CJ);
        if (CJ.CJ > 0) {
            try {
                Qhi3.put("play_time", CJ.CJ);
            } catch (JSONException e2) {
                ABk.Qhi("TTAD.VideoEventManager", "", e2);
            }
        }
        com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi qhi3 = new com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi(fl, js.Qhi(fl), Qhi3, pAVar);
        qhi3.Qhi(qhi2.WAv());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", Qhi2);
            jSONObject.put("percent", qhi2.Tgh());
            Qhi(qhi3, "play_error", jSONObject);
        } catch (JSONException e3) {
            ABk.Qhi("TTAD.VideoEventManager", "", e3);
        }
        Qhi.remove(qhi);
    }

    public static void CJ(com.bykv.vk.openvk.component.video.api.cJ.Qhi qhi, hpZ.Qhi qhi2) {
        hpZ hpz;
        if (qhi == null || qhi2 == null || (hpz = Qhi.get(qhi)) == null) {
            return;
        }
        ac CJ = hpz.CJ();
        tP fl = hpz.fl();
        if (CJ == null || fl == null) {
            return;
        }
        long Qhi2 = qhi2.Qhi();
        long ac = qhi2.ac();
        com.bytedance.sdk.openadsdk.cJ.CJ.cJ.cJ cJVar = new com.bytedance.sdk.openadsdk.cJ.CJ.cJ.cJ();
        cJVar.Qhi(qhi2.cJ());
        cJVar.cJ(ac);
        cJVar.Qhi(qhi2.CJ());
        cJVar.cJ(qhi2.fl());
        com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi qhi3 = new com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi(fl, js.Qhi(fl), Qhi(fl, hpz.cJ(), hpz.ac(), CJ), cJVar);
        qhi3.Qhi(qhi2.WAv());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", Qhi2);
            jSONObject.put("percent", qhi2.Tgh());
            Qhi(qhi3, "endcard_skip", jSONObject);
        } catch (JSONException e2) {
            ABk.Qhi("TTAD.VideoEventManager", "", e2);
        }
    }

    public static void Qhi(com.bykv.vk.openvk.component.video.api.cJ.Qhi qhi, hpZ.Qhi qhi2, Sf sf) {
        hpZ hpz;
        if (qhi == null || qhi2 == null || (hpz = Qhi.get(qhi)) == null) {
            return;
        }
        ac CJ = hpz.CJ();
        tP fl = hpz.fl();
        if (CJ == null || fl == null) {
            return;
        }
        long Qhi2 = qhi2.Qhi();
        long ac = qhi2.ac();
        fl flVar = new fl();
        flVar.cJ(qhi2.cJ());
        flVar.Qhi(ac);
        flVar.Qhi(qhi2.ROR());
        flVar.cJ(qhi2.Sf());
        JSONObject Qhi3 = Qhi(fl, hpz.cJ(), hpz.ac(), CJ);
        if (CJ.CJ > 0) {
            try {
                Qhi3.put("play_time", CJ.CJ);
            } catch (JSONException e2) {
                ABk.Qhi("TTAD.VideoEventManager", "", e2);
            }
        }
        com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi qhi3 = new com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi(fl, js.Qhi(fl), Qhi3, flVar);
        qhi3.Qhi(qhi2.WAv());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", Qhi2);
            jSONObject.put("percent", qhi2.Tgh());
            Qhi(qhi3, "feed_break", jSONObject, sf);
        } catch (JSONException e3) {
            ABk.Qhi("TTAD.VideoEventManager", "", e3);
        }
    }

    public static void cJ(com.bykv.vk.openvk.component.video.api.cJ.Qhi qhi, hpZ.Qhi qhi2, Sf sf) {
        if (qhi == null || qhi2 == null) {
            return;
        }
        fl(qhi, qhi2);
        hpZ hpz = Qhi.get(qhi);
        if (hpz == null) {
            return;
        }
        ac CJ = hpz.CJ();
        tP fl = hpz.fl();
        if (CJ == null || fl == null) {
            return;
        }
        long Qhi2 = qhi2.Qhi();
        long ac = qhi2.ac();
        ROR ror = new ROR();
        ror.cJ(qhi2.cJ());
        ror.Qhi(ac);
        ror.Qhi(qhi2.Sf());
        JSONObject Qhi3 = Qhi(fl, hpz.cJ(), hpz.ac(), CJ);
        if (CJ.CJ > 0) {
            try {
                Qhi3.put("play_time", CJ.CJ);
            } catch (JSONException e2) {
                ABk.Qhi("TTAD.VideoEventManager", "", e2);
            }
        }
        com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi qhi3 = new com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi(fl, js.Qhi(fl), Qhi3, ror);
        qhi3.Qhi(qhi2.WAv());
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("duration", Qhi2);
            jSONObject.put("percent", qhi2.Tgh());
            Qhi(qhi3, "feed_over", jSONObject, sf);
        } catch (JSONException e3) {
            ABk.Qhi("TTAD.VideoEventManager", "", e3);
        }
        Qhi.remove(qhi);
    }

    public static void fl(com.bykv.vk.openvk.component.video.api.cJ.Qhi qhi, hpZ.Qhi qhi2) {
        hpZ hpz;
        if (qhi == null || qhi2 == null || qhi2.hm() <= 0 || (hpz = Qhi.get(qhi)) == null) {
            return;
        }
        ac CJ = hpz.CJ();
        tP fl = hpz.fl();
        if (CJ == null || fl == null) {
            return;
        }
        long ac = qhi2.ac();
        iMK imk = new iMK();
        imk.Qhi(qhi2.cJ());
        imk.cJ(ac);
        imk.Qhi(qhi2.hm());
        JSONObject Qhi2 = Qhi(fl, hpz.cJ(), hpz.ac(), CJ);
        if (CJ.CJ > 0) {
            try {
                Qhi2.put("play_time", CJ.CJ);
            } catch (JSONException e2) {
                ABk.Qhi("TTAD.VideoEventManager", "", e2);
            }
        }
        com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi qhi3 = new com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi(fl, js.Qhi(fl), Qhi2, imk);
        qhi3.Qhi(qhi2.WAv());
        Qhi(qhi3, "play_buffer");
    }

    private static void Qhi(com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi qhi, String str) {
        Qhi(qhi, str, (JSONObject) null, (Sf) null);
    }

    private static void Qhi(com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi qhi, String str, JSONObject jSONObject) {
        Qhi(qhi, str, jSONObject, (Sf) null);
    }

    private static void Qhi(com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi qhi, String str, Sf sf) {
        Qhi(qhi, str, (JSONObject) null, sf);
    }

    private static void Qhi(final com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi qhi, String str, final JSONObject jSONObject, final Sf sf) {
        if (qhi == null) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        if (qhi.fl() && !TextUtils.isEmpty(qhi.cJ())) {
            String cJ = qhi.cJ();
            cJ.hashCode();
            if (cJ.equals("stream") || cJ.equals("embeded_ad")) {
                str = "customer_".concat(String.valueOf(str));
            }
        }
        final String str2 = str;
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(System.currentTimeMillis(), qhi.Qhi(), qhi.cJ(), str2, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.1
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                Sf sf2;
                try {
                    JSONObject ac = com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi.this.ac();
                    if (com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi.this.CJ() != null) {
                        com.bytedance.sdk.openadsdk.cJ.CJ.cJ.Qhi.this.CJ().Qhi(ac);
                    }
                    if (("feed_play".equals(str2) || "feed_over".equals(str2) || "feed_break".equals(str2)) && (sf2 = sf) != null) {
                        sf2.Qhi(ac);
                    }
                    jSONObject.put("ad_extra_data", ac.toString());
                } catch (Throwable unused) {
                }
                return jSONObject;
            }
        });
    }

    private static void Qhi(final tP tPVar, final ac acVar, final hpZ.Qhi qhi) {
        com.bytedance.sdk.openadsdk.Gm.ac.Qhi();
        com.bytedance.sdk.openadsdk.Gm.ac.Qhi("pangle_video_play_state", false, new com.bytedance.sdk.openadsdk.Gm.cJ() { // from class: com.bytedance.sdk.openadsdk.cJ.CJ.Qhi.Qhi.2
            @Override // com.bytedance.sdk.openadsdk.Gm.cJ
            public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("service_duration", Qhi.ac(ac.this));
                jSONObject.put("player_duration", qhi.ac());
                jSONObject.put("cache_path_type", CacheDirFactory.getCacheType());
                jSONObject.put("url", ac.this.ABk());
                jSONObject.put("path", Qhi.CJ(ac.this));
                jSONObject.put("player_type", ac.this.pA());
                com.bytedance.sdk.openadsdk.Gm.Qhi.fl Qhi2 = com.bytedance.sdk.openadsdk.Gm.Qhi.fl.cJ().Qhi("pangle_video_play_state");
                tP tPVar2 = tPVar;
                return Qhi2.Qhi(tPVar2 != null ? tPVar2.sqa() : 0).cJ(jSONObject.toString());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long ac(ac acVar) {
        if (acVar == null) {
            return 0L;
        }
        cJ qMt = acVar.Gm() ? acVar.qMt() : acVar.MQ();
        if (qMt != null) {
            return Double.valueOf(qMt.Tgh() * 1000.0d).longValue();
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String CJ(ac acVar) {
        return new File(acVar.cJ(), acVar.iMK()).getAbsolutePath();
    }
}
