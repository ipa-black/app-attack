package com.bytedance.adsdk.ugeno.core;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: AnimationSetModel.java */
/* loaded from: classes2.dex */
public class Qhi {
    private long CJ;
    private String Qhi;
    private String Tgh;
    private List<C0180Qhi> ac;
    private float cJ;
    private long fl;

    public String Qhi() {
        return this.Qhi;
    }

    public void Qhi(String str) {
        this.Qhi = str;
    }

    public void Qhi(float f2) {
        this.cJ = f2;
    }

    public float cJ() {
        return this.cJ;
    }

    public List<C0180Qhi> ac() {
        return this.ac;
    }

    public void Qhi(List<C0180Qhi> list) {
        this.ac = list;
    }

    public long CJ() {
        return this.CJ;
    }

    public void Qhi(long j) {
        this.CJ = j;
    }

    public long fl() {
        return this.fl;
    }

    public void cJ(long j) {
        this.fl = j;
    }

    public String Tgh() {
        return this.Tgh;
    }

    public void cJ(String str) {
        this.Tgh = str;
    }

    public static Qhi Qhi(String str, com.bytedance.adsdk.ugeno.component.cJ cJVar) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Qhi(new JSONObject(str), cJVar);
        } catch (JSONException unused) {
            return null;
        }
    }

    public static Qhi Qhi(JSONObject jSONObject, com.bytedance.adsdk.ugeno.component.cJ cJVar) {
        return Qhi(jSONObject, null, cJVar);
    }

    public static Qhi Qhi(JSONObject jSONObject, JSONObject jSONObject2, com.bytedance.adsdk.ugeno.component.cJ cJVar) {
        if (jSONObject == null) {
            return null;
        }
        Qhi qhi = new Qhi();
        qhi.Qhi(jSONObject.optString("ordering"));
        String optString = jSONObject.optString("loop");
        if (TextUtils.equals("infinite", optString)) {
            qhi.Qhi(-1.0f);
        } else {
            try {
                qhi.Qhi(Float.parseFloat(optString));
            } catch (NumberFormatException unused) {
                qhi.Qhi(0.0f);
            }
        }
        qhi.Qhi(jSONObject.optLong("duration", 0L));
        qhi.cJ(com.bytedance.adsdk.ugeno.cJ.ac.Qhi(com.bytedance.adsdk.ugeno.Qhi.ac.Qhi(jSONObject.optString("startDelay"), cJVar.WAv()), 0L));
        qhi.cJ(jSONObject.optString("loopMode"));
        JSONArray optJSONArray = jSONObject.optJSONArray("animators");
        if (optJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                if (jSONObject2 != null) {
                    com.bytedance.adsdk.ugeno.cJ.cJ.Qhi(jSONObject2, optJSONObject);
                }
                arrayList.add(C0180Qhi.Qhi(optJSONObject, cJVar));
            }
            qhi.Qhi(arrayList);
        }
        return qhi;
    }

    /* compiled from: AnimationSetModel.java */
    /* renamed from: com.bytedance.adsdk.ugeno.core.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0180Qhi {
        private long CJ;
        private long Qhi;
        private float ROR;
        private float[] Sf;
        private float Tgh;
        private String WAv;
        private String ac;
        private float cJ;
        private String fl;
        private String hm;

        public long Qhi() {
            return this.Qhi;
        }

        public void Qhi(long j) {
            this.Qhi = j;
        }

        public float cJ() {
            return this.cJ;
        }

        public void Qhi(float f2) {
            this.cJ = f2;
        }

        public String ac() {
            return this.ac;
        }

        public void Qhi(String str) {
            this.ac = str;
        }

        public long CJ() {
            return this.CJ;
        }

        public void cJ(long j) {
            this.CJ = j;
        }

        public String fl() {
            return this.fl;
        }

        public void cJ(String str) {
            this.fl = str;
        }

        public float Tgh() {
            return this.Tgh;
        }

        public void cJ(float f2) {
            this.Tgh = f2;
        }

        public float ROR() {
            return this.ROR;
        }

        public void ac(float f2) {
            this.ROR = f2;
        }

        public float[] Sf() {
            return this.Sf;
        }

        public void Qhi(float[] fArr) {
            this.Sf = fArr;
        }

        public String hm() {
            return this.hm;
        }

        public String WAv() {
            return this.WAv;
        }

        public void ac(String str) {
            this.WAv = str;
        }

        public void CJ(String str) {
            this.hm = str;
        }

        public static C0180Qhi Qhi(JSONObject jSONObject, com.bytedance.adsdk.ugeno.component.cJ cJVar) {
            if (jSONObject == null) {
                return null;
            }
            C0180Qhi c0180Qhi = new C0180Qhi();
            c0180Qhi.Qhi(jSONObject.optLong("duration"));
            String optString = jSONObject.optString("loop");
            if (TextUtils.equals("infinite", optString)) {
                c0180Qhi.Qhi(-1.0f);
            } else {
                try {
                    c0180Qhi.Qhi(Float.parseFloat(optString));
                } catch (NumberFormatException unused) {
                    c0180Qhi.Qhi(0.0f);
                }
            }
            c0180Qhi.Qhi(jSONObject.optString("loopMode"));
            c0180Qhi.cJ(jSONObject.optString(SessionDescription.ATTR_TYPE));
            if (TextUtils.equals(c0180Qhi.fl(), "ripple")) {
                c0180Qhi.ac(jSONObject.optString("rippleColor"));
            }
            View hm = cJVar.hm();
            Context context = hm != null ? hm.getContext() : null;
            if (TextUtils.equals(c0180Qhi.fl(), TtmlNode.ATTR_TTS_BACKGROUND_COLOR)) {
                String Qhi = com.bytedance.adsdk.ugeno.Qhi.ac.Qhi(jSONObject.optString("valueTo"), cJVar.WAv());
                int Qhi2 = com.bytedance.adsdk.ugeno.cJ.Qhi.Qhi(jSONObject.optString("valueFrom"));
                int Qhi3 = com.bytedance.adsdk.ugeno.cJ.Qhi.Qhi(Qhi);
                c0180Qhi.cJ(Qhi2);
                c0180Qhi.ac(Qhi3);
            } else if ((TextUtils.equals(c0180Qhi.fl(), "translateX") || TextUtils.equals(c0180Qhi.fl(), "translateY")) && context != null) {
                try {
                    float Qhi4 = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(context, (float) jSONObject.optDouble("valueFrom"));
                    float Qhi5 = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(context, (float) jSONObject.optDouble("valueTo"));
                    c0180Qhi.cJ(Qhi4);
                    c0180Qhi.ac(Qhi5);
                } catch (Exception unused2) {
                    Log.e("animation", "animation ");
                }
            } else {
                c0180Qhi.cJ((float) jSONObject.optDouble("valueFrom"));
                c0180Qhi.ac((float) jSONObject.optDouble("valueTo"));
            }
            c0180Qhi.CJ(jSONObject.optString("interpolator"));
            String Qhi6 = com.bytedance.adsdk.ugeno.Qhi.ac.Qhi(jSONObject.optString("startDelay"), cJVar.WAv());
            Log.d("TAG", "createAnimationModel: ");
            c0180Qhi.cJ(com.bytedance.adsdk.ugeno.cJ.ac.Qhi(Qhi6, 0L));
            JSONArray optJSONArray = jSONObject.optJSONArray("values");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                float[] fArr = new float[optJSONArray.length()];
                int i = 0;
                if ((TextUtils.equals(c0180Qhi.fl(), "translateX") || TextUtils.equals(c0180Qhi.fl(), "translateY")) && context != null) {
                    while (i < optJSONArray.length()) {
                        fArr[i] = com.bytedance.adsdk.ugeno.cJ.hm.Qhi(context, (float) optJSONArray.optDouble(i));
                        i++;
                    }
                } else {
                    while (i < optJSONArray.length()) {
                        fArr[i] = (float) optJSONArray.optDouble(i);
                        i++;
                    }
                }
                c0180Qhi.Qhi(fArr);
            }
            return c0180Qhi;
        }
    }
}
