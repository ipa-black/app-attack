package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import com.bytedance.sdk.component.Sf.hm;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.activity.cJ;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.lG;
/* compiled from: Scene.java */
/* loaded from: classes2.dex */
public abstract class ROR {
    protected IListenerManager Gm;
    private final cJ Qhi;
    protected final tP Sf;
    public boolean WAv;
    public int hm;
    protected com.bytedance.sdk.openadsdk.WAv.Tgh zc = new com.bytedance.sdk.openadsdk.WAv.Tgh() { // from class: com.bytedance.sdk.openadsdk.activity.ROR.1
        @Override // com.bytedance.sdk.openadsdk.WAv.Tgh
        public void Qhi() {
            ROR.this.iMK();
        }
    };

    public void CJ(Activity activity) {
    }

    public void HzH() {
    }

    protected abstract String MQ();

    public abstract View Qhi();

    public void Qhi(Activity activity) {
    }

    public void Qhi(Activity activity, Bundle bundle) {
    }

    public void Qhi(Activity activity, cJ.fl flVar) {
    }

    public void Qhi(ROR ror, ROR ror2, cJ.fl flVar) {
    }

    protected abstract boolean a_();

    public void ac(Activity activity) {
    }

    public abstract String b_();

    public void cJ(Activity activity) {
    }

    public void fl(Activity activity) {
    }

    public void iMK() {
    }

    public void pA() {
    }

    public abstract boolean tP();

    public ROR(cJ cJVar, tP tPVar, int i) {
        this.Qhi = cJVar;
        this.Sf = tPVar;
        this.hm = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Qhi(boolean z, boolean z2, boolean z3, int i) {
        this.Qhi.Qhi(this, z, z2, z3, i);
    }

    public cJ bxS() {
        return this.Qhi;
    }

    public Activity Dww() {
        return this.Qhi.ac();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void CQU() {
        this.Qhi.Qhi(this);
    }

    protected void Qhi(String str) {
        if (a_()) {
            Qhi(str, false, 0, "", 0, "");
        } else {
            cJ(str);
        }
    }

    private void Qhi(final String str, final boolean z, final int i, final String str2, final int i2, final String str3) {
        lG.ac(new hm("Reward_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.ROR.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ROR.this.ac(0).executeRewardVideoCallback(ROR.this.MQ(), str, z, i, str2, i2, str3);
                } catch (Throwable th) {
                    ABk.Qhi("Scene", "rewarded_video", "executeRewardVideoCallback execute throw Exception : ", th);
                }
            }
        }, 5);
    }

    private void cJ(final String str) {
        lG.ac(new hm("FullScreen_executeMultiProcessCallback") { // from class: com.bytedance.sdk.openadsdk.activity.ROR.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ROR.this.ac(1).executeFullVideoCallback(ROR.this.MQ(), str);
                } catch (Throwable th) {
                    ABk.Qhi("Scene", "fullscreen_interstitial_ad", "executeFullVideoCallback execute throw Exception : ", th);
                }
            }
        }, 5);
    }

    protected final IListenerManager ac(int i) {
        if (this.Gm == null) {
            this.Gm = com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi().Qhi(i));
        }
        return this.Gm;
    }

    public void pM() {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("onAdClose");
        } else {
            this.Qhi.Gm();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Eh() {
        if (this.Qhi.pA()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("onAdShow");
        } else {
            this.Qhi.zc();
        }
        this.Qhi.hpZ();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void aP() {
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("onAdVideoBarClick");
        } else {
            this.Qhi.WAv();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void Qhi(boolean z, int i, String str, int i2, String str2) {
        if (this.Qhi.ABk()) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
            Qhi("onRewardVerify", z, i, str, i2, str2);
        } else {
            this.Qhi.Qhi(this, z, i, str, i2, str2);
        }
        this.Qhi.iMK();
    }
}
