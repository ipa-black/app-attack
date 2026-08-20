package com.bytedance.sdk.openadsdk.component.reward.Qhi;

import android.os.SystemClock;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: RewardFullUgenEndcardManager.java */
/* loaded from: classes2.dex */
public class ABk {
    private com.bytedance.adsdk.ugeno.component.cJ ABk;
    private boolean HzH;
    final tP Qhi;
    private volatile long ROR;
    private volatile long Sf;
    private volatile long Tgh;
    private FrameLayout ac;
    private final Qhi cJ;
    private String hm;
    private com.bytedance.adsdk.ugeno.component.cJ iMK;
    private final AtomicBoolean CJ = new AtomicBoolean(false);
    private final AtomicBoolean fl = new AtomicBoolean(false);
    private final AtomicBoolean WAv = new AtomicBoolean(false);
    private long Gm = 0;
    private long zc = 0;
    private String pA = null;
    private boolean hpZ = false;

    public ABk(Qhi qhi) {
        this.cJ = qhi;
        this.Qhi = qhi.cJ;
        this.hm = qhi.fl;
    }

    public void Qhi() {
        if (this.HzH) {
            return;
        }
        this.HzH = true;
        cJ();
    }

    void cJ() {
        this.ac = (FrameLayout) this.cJ.yN.findViewById(com.bytedance.sdk.openadsdk.utils.iMK.pA);
    }

    public void ac() {
        com.bytedance.sdk.openadsdk.core.ugen.fl.Qhi af;
        tP tPVar = this.Qhi;
        if (tPVar == null || (af = tPVar.af()) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ugen.cJ.cJ cJVar = new com.bytedance.sdk.openadsdk.core.ugen.cJ.cJ(this.cJ.FQ, this.Qhi, af, this.hm, new com.bytedance.sdk.openadsdk.core.ugen.CJ.fl() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.ABk.1
            @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.Tgh
            public void Qhi() {
                ABk.this.Gm = SystemClock.elapsedRealtime();
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.Tgh
            public void Qhi(int i, String str, String str2) {
                ABk.this.pA = str2;
                ABk.this.CJ.set(false);
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(ABk.this.Qhi, false, ABk.this.hm, "fail", SystemClock.elapsedRealtime() - ABk.this.Gm, str2, "endcard", i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.Tgh
            public void Qhi(String str) {
                ABk.this.pA = str;
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(ABk.this.Qhi, false, ABk.this.hm, FirebaseAnalytics.Param.SUCCESS, SystemClock.elapsedRealtime() - ABk.this.Gm, str, "endcard", 0, null);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.fl
            public void cJ() {
                ABk.this.fl();
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.fl
            public void Qhi(int i, String str) {
                ABk.this.CJ.set(false);
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(ABk.this.Qhi, ABk.this.hm, SystemClock.elapsedRealtime() - ABk.this.Tgh, i, str, (String) null);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.fl
            public void Qhi(com.bytedance.adsdk.ugeno.component.cJ<View> cJVar2) {
                ABk.this.ABk = cJVar2;
                ABk.this.CJ.set(true);
                ABk.this.ROR = SystemClock.elapsedRealtime();
                ABk.this.iMK();
                ABk.this.hm();
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(ABk.this.Qhi, ABk.this.hm, ABk.this.ROR - ABk.this.Tgh);
            }
        });
        if (this.Qhi.wv() != null) {
            cJVar.Qhi(new com.bytedance.sdk.openadsdk.core.ugen.CJ.ac() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.ABk.2
                @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.ac
                public void cJ() {
                }

                @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.ac
                public String Qhi() {
                    return "normal";
                }
            });
        }
        cJVar.Qhi();
        cJVar.Qhi(this.cJ.es.WAv());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void iMK() {
        com.bytedance.sdk.openadsdk.core.ugen.fl.Qhi wv;
        tP tPVar = this.Qhi;
        if (tPVar == null || (wv = tPVar.wv()) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ugen.cJ.cJ cJVar = new com.bytedance.sdk.openadsdk.core.ugen.cJ.cJ(this.cJ.FQ, this.Qhi, wv, this.hm, new com.bytedance.sdk.openadsdk.core.ugen.CJ.fl() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.ABk.3
            @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.fl
            public void cJ() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.Tgh
            public void Qhi() {
                ABk.this.zc = SystemClock.elapsedRealtime();
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.Tgh
            public void Qhi(int i, String str, String str2) {
                ABk.this.fl.set(false);
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(ABk.this.Qhi, true, ABk.this.hm, "fail", SystemClock.elapsedRealtime() - ABk.this.zc, str2, "endcard", i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.Tgh
            public void Qhi(String str) {
                com.bytedance.sdk.openadsdk.cJ.ac.Qhi(ABk.this.Qhi, true, ABk.this.hm, FirebaseAnalytics.Param.SUCCESS, SystemClock.elapsedRealtime() - ABk.this.zc, str, "endcard", 0, null);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.fl
            public void Qhi(int i, String str) {
                ABk.this.fl.set(false);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.fl
            public void Qhi(com.bytedance.adsdk.ugeno.component.cJ<View> cJVar2) {
                ABk.this.iMK = cJVar2;
                ABk.this.fl.set(true);
            }
        });
        cJVar.Qhi(new com.bytedance.sdk.openadsdk.core.ugen.CJ.ac() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.ABk.4
            @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.ac
            public String Qhi() {
                return "overlay";
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugen.CJ.ac
            public void cJ() {
                ABk.this.hpZ = true;
                ABk.this.cJ.es.WAv().performClick();
            }
        });
        cJVar.Qhi();
        cJVar.Qhi(this.cJ.es.WAv());
    }

    public boolean CJ() {
        return this.hpZ;
    }

    public void Qhi(int i) {
        zn.Qhi((View) this.ac, i);
    }

    public void fl() {
        this.Tgh = SystemClock.elapsedRealtime();
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(this.Qhi, this.hm);
    }

    public void Tgh() {
        this.Sf = SystemClock.elapsedRealtime();
    }

    public void ROR() {
        WAv();
        hm();
        com.bytedance.adsdk.ugeno.component.cJ cJVar = this.ABk;
        if (cJVar != null) {
            this.ac.addView(cJVar.hm(), new FrameLayout.LayoutParams(this.ABk.hpZ(), this.ABk.HzH()));
        }
    }

    public void Sf() {
        com.bytedance.adsdk.ugeno.component.cJ cJVar = this.iMK;
        if (cJVar != null) {
            this.ac.addView(cJVar.hm(), new FrameLayout.LayoutParams(this.iMK.hpZ(), this.iMK.HzH()));
        }
    }

    public void hm() {
        if (this.Sf <= 0 || this.ROR <= 0 || this.WAv.getAndSet(true)) {
            return;
        }
        com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.ROR - this.Sf, this.Qhi, this.hm, this.pA);
    }

    public void WAv() {
        com.bytedance.sdk.openadsdk.cJ.ac.ac(this.Qhi, this.hm);
    }

    public void Gm() {
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(SystemClock.elapsedRealtime() - this.Sf, this.Qhi, this.hm);
    }

    public boolean zc() {
        return this.CJ.get();
    }

    public boolean ABk() {
        return this.fl.get();
    }
}
