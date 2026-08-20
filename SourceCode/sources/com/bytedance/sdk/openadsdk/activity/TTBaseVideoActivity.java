package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.IListenerManager;
import com.bytedance.sdk.openadsdk.cJ.cJ;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.qMt;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.google.android.exoplayer2.ExoPlayer;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public abstract class TTBaseVideoActivity extends TTBaseActivity implements CQU.Qhi, com.bytedance.sdk.openadsdk.core.video.ac.cJ {
    private final AtomicBoolean ABk;
    final CQU CJ;
    private boolean Gm;
    public final String Qhi;
    boolean Sf;
    int Tgh;
    protected com.bytedance.sdk.openadsdk.WAv.Tgh WAv;
    protected com.bytedance.sdk.openadsdk.component.reward.cJ.cJ ac;
    com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi cJ;
    protected IListenerManager fl;
    int hm;
    private int zc;

    public abstract boolean HzH();

    protected abstract void Qhi();

    /* JADX INFO: Access modifiers changed from: protected */
    public void Qhi(Intent intent) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void Qhi(Bundle bundle) {
    }

    protected abstract void fl();

    protected abstract void hpZ();

    public boolean kYc() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void zc() {
    }

    public TTBaseVideoActivity() {
        this.Qhi = HzH() ? "rewarded_video" : "fullscreen_interstitial_ad";
        this.CJ = new CQU(Looper.getMainLooper(), this);
        this.Gm = false;
        this.zc = 0;
        this.hm = 1;
        this.ABk = new AtomicBoolean(false);
        this.WAv = new com.bytedance.sdk.openadsdk.WAv.Tgh() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.2
            @Override // com.bytedance.sdk.openadsdk.WAv.Tgh
            public void Qhi() {
                TTBaseVideoActivity.this.iMK();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi;
        super.onCreate(bundle);
        qMt.Qhi("BVA", "onCreate ".concat(String.valueOf(this)));
        HzH.cJ(getApplicationContext());
        if (!iMK.fl()) {
            finish();
            return;
        }
        tP Qhi = com.bytedance.sdk.openadsdk.component.reward.Qhi.cJ.Qhi(getIntent(), bundle, this);
        if (Qhi == null) {
            finish();
            return;
        }
        com.bytedance.sdk.openadsdk.utils.cJ.Qhi(Qhi);
        this.hm = Qhi.SL();
        Qhi(Qhi, bundle);
        if (bundle != null) {
            if (Qhi.Xx()) {
                this.ABk.set(true);
            }
            if (Qhi.uyf() && (qhi = this.cJ) != null) {
                qhi.ABk.set(true);
            }
            com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi2 = this.cJ;
            if (qhi2 != null) {
                qhi2.aP.ROR();
            }
        }
        try {
            tP();
            MQ();
        } catch (Throwable th) {
            ABk.Qhi("TTAD.BVA", "onCreate: ", th);
            com.bytedance.sdk.openadsdk.Gm.ac.cJ();
            finish();
        }
    }

    private void Qhi(tP tPVar, Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = new com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi(this, this.CJ, tPVar, this, 0);
        this.cJ = qhi;
        com.bytedance.sdk.openadsdk.component.reward.Qhi.cJ.Qhi(qhi, getIntent(), bundle);
        Intent intent = getIntent();
        if (intent != null) {
            Qhi(intent);
            tPVar.Qhi(intent.getLongExtra("start_show_time", 0L));
        }
        if (bundle != null && this.cJ.zjb) {
            Qhi();
        }
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ Qhi = com.bytedance.sdk.openadsdk.component.reward.cJ.ROR.Qhi(this.cJ);
        this.ac = Qhi;
        this.cJ.ReL = Qhi;
        com.bytedance.sdk.openadsdk.utils.ABk.Qhi(this.cJ);
        new StringBuilder("init: mAdType = ").append(this.ac);
    }

    private void tP() {
        setContentView(this.cJ.yN);
        this.cJ.yN.Qhi(this.ac);
        this.ac.Qhi(this, this.CJ);
        this.ac.Gm();
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = this.cJ;
        if (qhi == null || qhi.cJ == null) {
            return;
        }
        tP tPVar = this.cJ.cJ;
        if (this.ROR && !tPVar.HUk() && !TextUtils.isEmpty(tP.Qhi(this, tPVar))) {
            finish();
        }
        if (tPVar.HUk()) {
            tPVar.fl(false);
        }
    }

    private void MQ() {
        this.ac.Qhi(this.WAv);
        this.Tgh = (int) this.cJ.bxS.aP();
        hpZ();
        ac();
        if (this.cJ.cJ.cJP() == null || this.cJ.cJ.cJP().Qhi() == null) {
            return;
        }
        this.cJ.cJ.cJP().Qhi().Qhi(0L);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = this.cJ;
        if (qhi != null && qhi.aP != null) {
            this.cJ.aP.cJ(z);
            this.cJ.aP.ac(z);
        }
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi2 = this.cJ;
        if (qhi2 == null || !(qhi2.ReL instanceof com.bytedance.sdk.openadsdk.component.reward.cJ.Tgh)) {
            return;
        }
        ((com.bytedance.sdk.openadsdk.component.reward.cJ.Tgh) this.cJ.ReL).cJ(z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void Gm() {
        if (!this.cJ.iMK.getAndSet(true) || bxS.Gm(this.cJ.cJ)) {
            this.cJ.aP.Qhi();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void Sf() {
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.ac;
        if (cJVar == null) {
            return;
        }
        cJVar.ABk();
    }

    public void Qhi(boolean z, int i) {
        Qhi(z, false, i);
    }

    public void Qhi(boolean z, boolean z2, int i) {
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.ac;
        if (cJVar == null) {
            return;
        }
        cJVar.Qhi(z, z2, false, i);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void hm() {
        this.cJ.bxS.NFd();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public View WAv() {
        return this.cJ.bxS.sDy();
    }

    protected void ac() {
        if (bxS.Gm(this.cJ.cJ)) {
            Qhi(false, cJ.C0214cJ.ac);
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.ac;
        if (cJVar != null) {
            cJVar.Qhi(this.cJ.es.Tgh());
            this.ac.pM();
        }
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        qMt.Qhi("BVA", "onStart ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = this.cJ;
        if (qhi == null) {
            return;
        }
        qhi.lG.sDy();
        com.bytedance.sdk.openadsdk.utils.ac.Qhi(this, this.cJ.cJ);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onResume() {
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar;
        super.onResume();
        qMt.Qhi("BVA", "onResume ".concat(String.valueOf(this)));
        if (this.cJ == null || (cJVar = this.ac) == null) {
            return;
        }
        cJVar.HzH();
        this.cJ.Qe = true;
        this.cJ.Eh.cJ(this.CJ);
        if (qMt()) {
            this.cJ.js.Qhi(this.cJ.cJ.rB());
        }
        this.cJ.es.pA();
        this.cJ.lG.MQ();
        this.cJ.CQU.ABk();
        if (this.ac.cJ()) {
            this.cJ.bxS.Qhi(this.ac);
            this.cJ.bxS.Qhi(false, this, this.zc != 0);
        }
        this.zc++;
        ROR();
        if (this.cJ.pM != null) {
            this.cJ.pM.ROR();
        }
        this.cJ.Eh.Qhi(this.CJ);
        this.ac.tP();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        qMt.Qhi("BVA", "onPause ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.ac;
        if (cJVar == null) {
            return;
        }
        cJVar.MQ();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        qMt.Qhi("BVA", "onStop ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.ac;
        if (cJVar == null) {
            return;
        }
        cJVar.qMt();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        qMt.Qhi("BVA", "onDestroy ".concat(String.valueOf(this)));
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = this.cJ;
        if (qhi == null || this.ac == null) {
            return;
        }
        if (qhi.HLI > 0 && this.cJ.ABk.get()) {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(String.valueOf(SystemClock.elapsedRealtime() - this.cJ.HLI), this.cJ.cJ, this.Qhi, this.cJ.bxS.Qhi());
            this.cJ.HLI = 0L;
        }
        this.cJ.sDy.cJ();
        this.CJ.removeCallbacksAndMessages(null);
        this.ac.EBS();
        com.bytedance.sdk.openadsdk.MQ.Qhi.Tgh.Qhi(this.cJ.cJ);
        final AdSlot lB = this.cJ.cJ.lB();
        if (!this.cJ.bxS.Dww() && lB != null && TextUtils.isEmpty(lB.getBidAdm())) {
            iMK.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TTBaseVideoActivity.this.HzH()) {
                        com.bytedance.sdk.openadsdk.component.reward.ABk.Qhi(HzH.Qhi()).Qhi(lB);
                    } else {
                        com.bytedance.sdk.openadsdk.component.reward.Tgh.Qhi(HzH.Qhi()).Qhi(lB);
                    }
                }
            });
        }
        com.bytedance.sdk.openadsdk.utils.ABk.Qhi();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = this.cJ;
        if (qhi == null) {
            super.onSaveInstanceState(bundle);
            return;
        }
        if (qhi.ABk.get()) {
            this.cJ.cJ.Sf(true);
        }
        if (this.ABk.get()) {
            this.cJ.cJ.gt();
        }
        com.bytedance.sdk.openadsdk.component.reward.Qhi.cJ.Qhi(this.cJ, bundle);
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar;
        if (this.cJ == null || (cJVar = this.ac) == null) {
            super.onBackPressed();
        } else {
            cJVar.bxS();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = this.cJ;
        if (qhi == null) {
            return;
        }
        qhi.Eh.Qhi();
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public void Qhi(Message message) {
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.ac;
        if (cJVar == null) {
            return;
        }
        cJVar.Qhi(message);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public final void Tgh() {
        if (this.ABk.compareAndSet(false, true)) {
            qMt.Qhi("BVA", "invoke callback onShow, ".concat(String.valueOf(this)));
            fl();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IListenerManager cJ(int i) {
        if (this.fl == null) {
            this.fl = com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi.asInterface(com.bytedance.sdk.openadsdk.multipro.aidl.Qhi.Qhi().Qhi(i));
        }
        return this.fl;
    }

    protected void ROR() {
        if (kYc() && !this.Gm) {
            this.Gm = true;
            getWindow().getDecorView().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTBaseVideoActivity.3
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.component.reward.Qhi.ROR ror = TTBaseVideoActivity.this.cJ.NFd;
                    float[] Qhi = TTBaseVideoActivity.this.cJ.Eh.Qhi(TTBaseVideoActivity.this.hm);
                    TTBaseVideoActivity tTBaseVideoActivity = TTBaseVideoActivity.this;
                    ror.Qhi(Qhi, tTBaseVideoActivity, tTBaseVideoActivity.ac);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ABk() {
        Message message = new Message();
        message.what = 400;
        if (HzH()) {
            Qhi(10000);
        }
        this.CJ.sendMessageDelayed(message, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void pA() {
        this.CJ.removeMessages(400);
    }

    private boolean qMt() {
        if (this.cJ.WAv.get() && this.cJ.ROR) {
            return false;
        }
        if ((this instanceof TTFullScreenExpressVideoActivity) || (this instanceof TTRewardExpressVideoActivity)) {
            return this.cJ.WAv.get();
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void finish() {
        super.finish();
        if (this.cJ == null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.utils.CQU.fl()) {
            zn.cJ((Activity) this);
        }
        if (!bxS.cJ(this.cJ.cJ) || this.cJ.WAv.get()) {
            return;
        }
        ApmHelper.reportCustomError("invalid finish", "playable", new RuntimeException());
    }
}
