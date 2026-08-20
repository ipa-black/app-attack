package com.bytedance.sdk.openadsdk.core.ugen.ac;

import android.content.Context;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.adsdk.ugeno.core.Gm;
import com.bytedance.adsdk.ugeno.core.iMK;
import com.bytedance.adsdk.ugeno.core.pA;
import com.bytedance.adsdk.ugeno.core.zc;
import com.bytedance.sdk.component.adexpress.CJ.Dww;
import com.bytedance.sdk.component.adexpress.cJ.Sf;
import com.bytedance.sdk.component.adexpress.cJ.hm;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import com.bytedance.sdk.openadsdk.core.model.pA;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: UGenRender.java */
/* loaded from: classes2.dex */
public class ac implements iMK, pA, com.bytedance.sdk.component.adexpress.cJ.fl<View>, com.bytedance.sdk.component.adexpress.dynamic.fl {
    private static float CQU = 0.0f;
    private static long Dww = 0;
    private static float Eh = 0.0f;
    protected static int Gm = 24;
    private static float aP;
    private static float pM;
    protected tP CJ;
    private long EBS;
    private final boolean HzH;
    private JSONObject Jma;
    private float MQ;
    private fl NFd;
    protected Gm Qhi;
    protected com.bytedance.sdk.component.adexpress.cJ.pA ROR;
    protected FrameLayout Tgh;
    protected com.bytedance.adsdk.ugeno.component.cJ<View> ac;
    private long bxS;
    protected Context cJ;
    protected Qhi fl;
    protected com.bytedance.adsdk.ugeno.component.cJ hm;
    private Sf hpZ;
    private JSONObject iMK;
    private float kYc;
    private NativeExpressView lB;
    private hm pA;
    private float qMt;
    private String sDy;
    private float tP;
    protected WeakReference<View> zc;
    protected boolean WAv = true;
    public SparseArray<ac.Qhi> ABk = new SparseArray<>();
    private String lG = "";
    private final com.bytedance.sdk.component.Sf.hm js = new com.bytedance.sdk.component.Sf.hm("ugen_render_template") { // from class: com.bytedance.sdk.openadsdk.core.ugen.ac.ac.1
        @Override // java.lang.Runnable
        public void run() {
            ac acVar = ac.this;
            acVar.iMK = acVar.fl.ac();
            if (ac.this.lB == null) {
                ac.this.lG = "expressView is null";
            } else {
                ac acVar2 = ac.this;
                acVar2.lG = acVar2.lB.getUgenTemplateErrorReason();
            }
            com.bytedance.sdk.openadsdk.core.iMK.ac().post(ac.this.zn);
        }
    };
    private final Runnable zn = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ugen.ac.ac.2
        @Override // java.lang.Runnable
        public void run() {
            if (ac.this.hpZ != null) {
                ac acVar = ac.this;
                acVar.cJ(acVar.hpZ);
            }
        }
    };
    private boolean es = false;
    protected AtomicBoolean Sf = new AtomicBoolean(false);

    @Override // com.bytedance.sdk.component.adexpress.cJ.fl
    public int ac() {
        return 7;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.fl
    public void d_() {
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.fl
    public void setTimeUpdate(int i) {
    }

    static {
        if (HzH.Qhi() != null) {
            Gm = HzH.cJ();
        }
    }

    public ac(Context context, tP tPVar, boolean z, Qhi qhi, ViewGroup viewGroup) {
        this.cJ = context;
        this.HzH = z;
        this.Qhi = new Gm(context);
        this.CJ = tPVar;
        this.fl = qhi;
        this.Tgh = new FrameLayout(context);
        if (viewGroup instanceof NativeExpressView) {
            this.lB = (NativeExpressView) viewGroup;
        }
        this.sDy = qhi.CJ();
        this.Jma = this.fl.aP();
        this.NFd = new fl(this.cJ, this.CJ, this.sDy, this.Jma);
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.fl
    public void Qhi(Sf sf) {
        this.hpZ = sf;
        lG.cJ(this.js);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(Sf sf) {
        this.fl.NFd().Qhi();
        if (this.iMK == null) {
            sf.Qhi(133, "ugen template is null real reason is " + this.lG);
        } else if (this.Jma == null) {
            sf.Qhi(133, "ugen data is null");
        } else {
            this.Qhi.Qhi((iMK) this);
            this.Qhi.Qhi((pA) this);
            com.bytedance.adsdk.ugeno.component.cJ<View> Qhi = this.Qhi.Qhi(this.iMK);
            this.ac = Qhi;
            fl flVar = this.NFd;
            if (flVar != null && Qhi != null) {
                flVar.Qhi(Qhi);
            }
            this.fl.NFd().cJ();
            this.fl.NFd().ac();
            this.Qhi.cJ(this.Jma);
            if (this.ac != null) {
                cJ cJVar = new cJ();
                this.ROR = cJVar;
                cJVar.Qhi(true);
                this.ROR.Qhi(ac());
                setSoundMute(this.HzH);
                com.bytedance.adsdk.ugeno.component.cJ<View> cJ = this.ac.cJ("video");
                this.hm = cJ;
                if (cJ != null && (cJ instanceof com.bytedance.sdk.openadsdk.core.ugen.component.video.Qhi)) {
                    ((cJ) this.ROR).Qhi((FrameLayout) ((com.bytedance.sdk.openadsdk.core.ugen.component.video.Qhi) cJ).MQ());
                }
                com.bytedance.adsdk.ugeno.component.cJ<View> cJ2 = this.ac.cJ("feedback");
                fl flVar2 = this.NFd;
                if (flVar2 != null) {
                    flVar2.Qhi();
                }
                if (cJ2 != null && cJ2.hm() != null) {
                    this.zc = new WeakReference<>(cJ2.hm());
                }
                this.Tgh.addView(this.ac.hm(), new FrameLayout.LayoutParams(this.ac.hpZ(), this.ac.HzH()));
                float pM2 = this.fl.pM();
                float Eh2 = this.fl.Eh();
                float cJ3 = zn.cJ(this.cJ, pM2);
                float cJ4 = zn.cJ(this.cJ, Eh2);
                int i = (Eh2 > 0.0f ? 1 : (Eh2 == 0.0f ? 0 : -1));
                if (i <= 0) {
                    this.Tgh.setLayoutParams(new FrameLayout.LayoutParams((int) cJ3, -2));
                } else {
                    this.Tgh.setLayoutParams(new FrameLayout.LayoutParams((int) cJ3, (int) cJ4));
                }
                if (i <= 0 || pM2 <= 0.0f) {
                    this.Tgh.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
                    int ac = zn.ac(this.cJ, this.Tgh.getMeasuredWidth());
                    int ac2 = zn.ac(this.cJ, this.Tgh.getMeasuredHeight());
                    this.ROR.Qhi(ac);
                    this.ROR.cJ(ac2);
                } else {
                    this.ROR.Qhi(pM2);
                    this.ROR.cJ(Eh2);
                }
                if (this.Sf.get()) {
                    sf.Qhi(137, "ugen render timeout");
                    return;
                } else {
                    sf.Qhi(this.Tgh, this.ROR);
                    return;
                }
            }
            sf.Qhi(TsExtractor.TS_STREAM_TYPE_DTS, "ugen render error");
        }
    }

    public void Qhi(boolean z) {
        this.Sf.set(z);
    }

    public void Qhi(hm hmVar) {
        this.pA = hmVar;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.widget.ac acVar) {
        fl flVar = this.NFd;
        if (flVar != null) {
            flVar.Qhi(acVar);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.core.iMK
    public void Qhi(zc zcVar, iMK.cJ cJVar, iMK.Qhi qhi) {
        if (zcVar == null) {
            return;
        }
        if (zcVar.cJ() == 1 || zcVar.cJ() == 4) {
            Qhi(zcVar);
        }
        if (zcVar.cJ() == 10) {
            Qhi(zcVar.ac());
        }
        if (cJVar == null || zcVar.CJ() == null) {
            return;
        }
        cJVar.Qhi(zcVar.CJ());
    }

    private void Qhi(JSONObject jSONObject) {
        com.bytedance.adsdk.ugeno.component.cJ<View> cJ;
        if (jSONObject == null) {
            return;
        }
        String optString = jSONObject.optString(SessionDescription.ATTR_TYPE);
        String optString2 = jSONObject.optString("nodeId");
        if (TextUtils.isEmpty(optString2) || (cJ = this.ac.cJ(optString2)) == null) {
            return;
        }
        if (TextUtils.equals(optString, "onShow")) {
            cJ.ac(0);
        } else if (TextUtils.equals(optString, "onDismiss")) {
            cJ.ac(8);
        }
    }

    private void Qhi(zc zcVar) {
        JSONObject jSONObject;
        boolean z;
        int i;
        fl flVar;
        fl flVar2;
        fl flVar3;
        if (this.pA == null) {
            return;
        }
        String optString = zcVar.ac().optString(SessionDescription.ATTR_TYPE);
        if ("swiperLeft".equals(optString) && (flVar3 = this.NFd) != null) {
            flVar3.cJ();
        } else if ("swiperRight".equals(optString) && (flVar2 = this.NFd) != null) {
            flVar2.ac();
        } else {
            if (!"swiperClick".equals(optString) || (flVar = this.NFd) == null) {
                jSONObject = null;
                z = false;
                i = 0;
            } else {
                z = flVar.Qhi(zcVar);
                jSONObject = this.NFd.CJ();
                i = 2;
            }
            optString.hashCode();
            char c2 = 65535;
            switch (optString.hashCode()) {
                case -314498168:
                    if (optString.equals("privacy")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -191501435:
                    if (optString.equals("feedback")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 3363353:
                    if (optString.equals("mute")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 3532159:
                    if (optString.equals("skip")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 112202875:
                    if (optString.equals("video")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 1820422063:
                    if (optString.equals("creative")) {
                        c2 = 5;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    i = 7;
                    break;
                case 1:
                    i = 3;
                    break;
                case 2:
                    i = 5;
                    break;
                case 3:
                    i = 6;
                    break;
                case 4:
                    i = 4;
                    break;
                case 5:
                    i = 2;
                    break;
            }
            com.bytedance.adsdk.ugeno.component.cJ Qhi = zcVar.Qhi();
            int[] iArr = new int[2];
            int[] iArr2 = new int[2];
            WeakReference<View> weakReference = this.zc;
            if (weakReference != null) {
                int[] Qhi2 = zn.Qhi(weakReference.get());
                if (Qhi2 != null) {
                    iArr = Qhi2;
                }
                int[] ac = zn.ac(this.zc.get());
                if (ac != null) {
                    iArr2 = ac;
                }
            }
            this.pA.Qhi(zcVar.Qhi().hm(), i, new pA.Qhi().CJ(this.kYc).ac(this.tP).cJ(this.MQ).Qhi(this.qMt).cJ(this.EBS).Qhi(this.bxS).ac(iArr[0]).CJ(iArr[1]).fl(iArr2[0]).Tgh(iArr2[1]).Qhi(this.ABk).Qhi(this.WAv).Qhi(Qhi == null ? "" : Qhi.pA() + "_" + Qhi.iMK()).cJ(z).cJ(jSONObject).Qhi());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0058, code lost:
        if (com.bytedance.sdk.openadsdk.core.ugen.ac.ac.aP <= r2) goto L23;
     */
    @Override // com.bytedance.adsdk.ugeno.core.pA
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Qhi(com.bytedance.adsdk.ugeno.component.cJ r12, android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.ugen.ac.ac.Qhi(com.bytedance.adsdk.ugeno.component.cJ, android.view.MotionEvent):void");
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.fl
    public void Qhi(CharSequence charSequence, int i, int i2, boolean z) {
        if (this.ac == null) {
            return;
        }
        boolean z2 = i == 1;
        Qhi(charSequence, z2, i2, z);
        cJ(charSequence, z2, i2, z);
    }

    private void Qhi(CharSequence charSequence, boolean z, int i, boolean z2) {
        int i2;
        com.bytedance.adsdk.ugeno.component.cJ<View> cJ = this.ac.cJ("countdown");
        if (cJ == null) {
            return;
        }
        View hm = cJ.hm();
        if (hm instanceof TextView) {
            try {
                i2 = Integer.parseInt((String) charSequence);
            } catch (Exception unused) {
                ABk.Qhi("UGenRender", "parse duration exception", charSequence);
                i2 = 0;
            }
            if (z2 || i2 <= 0 || this.es) {
                hm.setVisibility(8);
                return;
            }
            hm.setVisibility(0);
            if (!z && this.fl.Qhi() && Dww.cJ(this.fl.CJ())) {
                ((TextView) hm).setText(String.format(MQ.Qhi(com.bytedance.sdk.component.adexpress.fl.Qhi(), "tt_reward_full_skip"), Integer.valueOf(i)));
            } else if (!"open_ad".equals(this.fl.CJ()) && this.fl.Qhi()) {
                this.es = true;
                hm.setVisibility(8);
            } else {
                ((TextView) hm).setText(((Object) charSequence) + "s");
            }
        }
    }

    private void cJ(CharSequence charSequence, boolean z, int i, boolean z2) {
        View hm;
        com.bytedance.adsdk.ugeno.component.cJ<View> cJ = this.ac.cJ("skip");
        if (cJ == null || (hm = cJ.hm()) == null) {
            return;
        }
        int i2 = 0;
        if (!z && !z2) {
            i2 = 8;
        }
        hm.setVisibility(i2);
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.fl
    public void setSoundMute(boolean z) {
        com.bytedance.adsdk.ugeno.component.cJ<View> cJ;
        com.bytedance.adsdk.ugeno.component.cJ<View> cJVar = this.ac;
        if (cJVar == null || (cJ = cJVar.cJ("mute")) == null) {
            return;
        }
        if (z) {
            ((com.bytedance.adsdk.ugeno.component.image.cJ) cJ).fl("local://tt_reward_full_mute");
        } else {
            ((com.bytedance.adsdk.ugeno.component.image.cJ) cJ).fl("local://tt_reward_full_unmute");
        }
        cJ.cJ();
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.fl
    public View fl() {
        return this.Tgh;
    }
}
