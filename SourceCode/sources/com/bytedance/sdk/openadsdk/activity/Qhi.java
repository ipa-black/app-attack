package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.openadsdk.CacheDirFactory;
import com.bytedance.sdk.openadsdk.activity.cJ;
import com.bytedance.sdk.openadsdk.cJ.cJ;
import com.bytedance.sdk.openadsdk.component.reward.Qhi.Tgh;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.video.ac.Qhi;
import com.bytedance.sdk.openadsdk.utils.qMt;
import com.google.android.exoplayer2.ExoPlayer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: AdScene.java */
/* loaded from: classes2.dex */
public abstract class Qhi extends ROR implements CQU.Qhi, Tgh.Qhi, com.bytedance.sdk.openadsdk.core.video.ac.cJ {
    private int ABk;
    protected int CJ;
    protected final CQU Qhi;
    private Bundle ROR;
    private int Tgh;
    protected com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi ac;
    protected com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJ;
    private final AtomicBoolean fl;
    private boolean iMK;
    private boolean pA;

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void Qhi(int i) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public abstract void Qhi(Bundle bundle);

    protected abstract void ROR();

    protected abstract void ac();

    protected abstract void cJ();

    @Override // com.bytedance.sdk.openadsdk.activity.ROR, com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void iMK() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public void zc() {
    }

    public Qhi(cJ cJVar, tP tPVar, int i) {
        super(cJVar, tPVar, i);
        this.Qhi = new CQU(Looper.getMainLooper(), this);
        this.fl = new AtomicBoolean(false);
        this.Tgh = 1;
        this.ABk = 0;
        this.iMK = false;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public final void Qhi(Activity activity, Bundle bundle) {
        this.ROR = bundle;
        super.Qhi(activity, bundle);
        Qhi(bundle);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public final View Qhi() {
        return this.ac.yN;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public void Qhi(Activity activity, cJ.fl flVar) {
        super.Qhi(activity, flVar);
        this.Tgh = this.Sf.SL();
        Qhi(this.Sf, this.ROR);
        if (this.ac.VnT && this.hm > 0) {
            this.ac.dIT = flVar.ac;
        }
        try {
            EBS();
            NFd();
        } catch (Throwable th) {
            ABk.Qhi("TTAD.AdScene", "onCreate: ", th);
            com.bytedance.sdk.openadsdk.Gm.ac.cJ();
            CQU();
        }
    }

    private void Qhi(tP tPVar, Bundle bundle) {
        Activity Dww = Dww();
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = new com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi(Dww, this.Qhi, tPVar, this, 1);
        this.ac = qhi;
        qhi.VnT = bxS().Qhi();
        this.ac.Ri = bxS().ROR();
        this.ac.Ura = this;
        this.ac.lB = bxS().HzH();
        Intent intent = Dww.getIntent();
        com.bytedance.sdk.openadsdk.component.reward.Qhi.cJ.Qhi(this.ac, intent, bundle);
        if (intent != null) {
            com.bytedance.sdk.openadsdk.component.reward.Qhi.cJ.Qhi(intent, this.ac);
            tPVar.Qhi(intent.getLongExtra("start_show_time", 0L));
        }
        if (bundle != null && this.ac.zjb) {
            cJ();
        }
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ Qhi = com.bytedance.sdk.openadsdk.component.reward.cJ.ROR.Qhi(this.ac);
        this.cJ = Qhi;
        this.ac.ReL = Qhi;
        this.ac.zn.Qhi(this);
        if (this.ac.VnT) {
            this.ac.bxS.Qhi(new Qhi.InterfaceC0234Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.Qhi.1
                @Override // com.bytedance.sdk.openadsdk.core.video.ac.Qhi.InterfaceC0234Qhi
                public void Qhi(int i) {
                    cJ bxS = Qhi.this.bxS();
                    if (bxS == null) {
                        return;
                    }
                    bxS.Qhi(i);
                }
            });
            bxS().ROR().setShowSound(tP.fl(tPVar));
        }
        com.bytedance.sdk.openadsdk.utils.ABk.Qhi(this.ac);
        new StringBuilder("init: mAdType = ").append(this.cJ);
    }

    private void EBS() {
        this.ac.yN.Qhi(this.cJ);
        this.cJ.Qhi(this, this.Qhi);
        this.cJ.Gm();
    }

    private void NFd() {
        this.cJ.Qhi(this.zc);
        this.CJ = (int) this.ac.bxS.aP();
        if (this.ac.VnT) {
            Qhi(this.ac.aP.fl());
            Qhi(this.ac.aP.CJ());
        }
        ac();
        lG();
        if (this.ac.cJ.cJP() == null || this.ac.cJ.cJP().Qhi() == null) {
            return;
        }
        this.ac.cJ.cJP().Qhi().Qhi(0L);
    }

    private void Qhi(com.bytedance.sdk.openadsdk.core.cJ.cJ cJVar) {
        if (cJVar != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("ad_show_order", Integer.valueOf(this.hm + 1));
            cJVar.Qhi(hashMap);
        }
    }

    private boolean sDy() {
        if (this.ac.WAv.get() && this.ac.ROR) {
            return false;
        }
        if (this.Sf.Qhi()) {
            return this.ac.WAv.get();
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public void Qhi(Activity activity) {
        super.Qhi(activity);
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = this.ac;
        if (qhi == null) {
            return;
        }
        qhi.Eh.Qhi();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public final void cJ(Activity activity) {
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar;
        super.cJ(activity);
        if (this.ac == null || (cJVar = this.cJ) == null) {
            return;
        }
        cJVar.HzH();
        this.ac.Qe = true;
        this.ac.Eh.cJ(this.Qhi);
        if (sDy()) {
            this.ac.js.Qhi(this.ac.cJ.rB());
        }
        this.ac.es.pA();
        this.ac.lG.MQ();
        this.ac.CQU.ABk();
        if (this.cJ.cJ()) {
            this.ac.bxS.Qhi(this.cJ);
            this.ac.bxS.Qhi(false, this, this.ABk != 0);
        }
        this.ABk++;
        lB();
        if (this.ac.pM != null) {
            this.ac.pM.ROR();
        }
        this.ac.Eh.Qhi(this.Qhi);
        this.cJ.tP();
    }

    private void lB() {
        if (this.Sf.Qhi() && !this.iMK) {
            this.iMK = true;
            Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.Qhi.2
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.component.reward.Qhi.ROR ror = Qhi.this.ac.NFd;
                    float[] Qhi = Qhi.this.ac.Eh.Qhi(Qhi.this.Tgh);
                    Qhi qhi = Qhi.this;
                    ror.Qhi(Qhi, qhi, qhi.cJ);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public void ac(Activity activity) {
        super.ac(activity);
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.cJ;
        if (cJVar == null) {
            return;
        }
        cJVar.qMt();
    }

    private void lG() {
        if (this.Sf.Qhi()) {
            return;
        }
        if (bxS.Gm(this.ac.cJ)) {
            Qhi(false, cJ.C0214cJ.ac);
            return;
        }
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.cJ;
        if (cJVar != null) {
            cJVar.Qhi(this.ac.es.Tgh());
            this.cJ.pM();
        }
    }

    public final void Qhi(boolean z, int i) {
        Qhi(z, false, i);
    }

    public final void Qhi(boolean z, boolean z2, int i) {
        this.ac.zn.Qhi(z, z2, false, this.ac.ReL, i);
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public final void Qhi(Message message) {
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.cJ;
        if (cJVar == null) {
            return;
        }
        cJVar.Qhi(message);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public final void CJ() {
        aP();
        this.ac.cJ.wI();
        this.ac.cJ.Qhi(true);
        if (tP.fl(this.ac.cJ)) {
            com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.ac.cJ, this.ac.fl, this.ac.cJ.gSh());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void fl() {
        Message message = new Message();
        message.what = 400;
        if (this.Sf.LpL()) {
            Qhi(10000);
        }
        this.Qhi.sendMessageDelayed(message, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public final void Tgh() {
        if (this.fl.compareAndSet(false, true)) {
            qMt.Qhi("BVA", "invoke callback onShow, ".concat(String.valueOf(this)));
            ROR();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public final void Sf() {
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.cJ;
        if (cJVar == null) {
            return;
        }
        cJVar.ABk();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public final void CJ(Activity activity) {
        super.CJ(activity);
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = this.ac;
        if (qhi == null) {
            return;
        }
        qhi.lG.sDy();
        com.bytedance.sdk.openadsdk.utils.ac.Qhi(activity, this.ac.cJ);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public final void fl(Activity activity) {
        super.fl(activity);
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.cJ;
        if (cJVar == null) {
            return;
        }
        cJVar.MQ();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public final void hm() {
        this.ac.bxS.NFd();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public final View WAv() {
        return this.ac.bxS.sDy();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.ac.cJ
    public final void Gm() {
        if (!this.ac.iMK.getAndSet(true) || bxS.Gm(this.ac.cJ)) {
            this.ac.aP.Qhi();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void ABk() {
        this.Qhi.removeMessages(400);
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public void pA() {
        super.pA();
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.cJ;
        if (cJVar == null) {
            return;
        }
        cJVar.EBS();
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.Qhi.Tgh.Qhi
    public void Qhi(boolean z, boolean z2, boolean z3, com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar, int i) {
        Qhi(z, z2, z3, i);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.Qhi.Tgh.Qhi
    public void hpZ() {
        ac fl;
        cJ bxS = bxS();
        if (bxS == null || (fl = bxS.fl()) == null) {
            return;
        }
        fl.fl();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public void HzH() {
        super.HzH();
        com.bytedance.sdk.openadsdk.component.reward.cJ.cJ cJVar = this.cJ;
        if (cJVar != null) {
            cJVar.bxS();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public void Qhi(ROR ror, ROR ror2, cJ.fl flVar) {
        super.Qhi(ror, ror2, flVar);
        if (ror == this && (ror2 instanceof ac)) {
            if (flVar.cJ == 3) {
                this.ac.bxS.Qhi(!this.ac.bxS.Eh(), 2);
            } else if (flVar.cJ == 6) {
                this.ac.bxS.Qhi(!this.ac.bxS.Eh(), !this.ac.bxS.Eh());
            } else if (flVar.cJ == 5 && !tP.fl(this.ac.cJ) && flVar.CJ) {
                this.ac.bxS.Qhi("skip", true);
            }
            this.ac.js.Qhi(false);
            this.ac.js.CJ(false);
        }
        if (ror2.hm != 0 || this.hm == 0) {
            return;
        }
        this.Sf.hm("0");
        Map<String, Object> Gy = this.Sf.Gy();
        if (Gy != null) {
            Gy.put("price", "0");
        }
    }

    public void Qhi(float f2) {
        cJ bxS = bxS();
        if (bxS == null) {
            return;
        }
        bxS.Qhi(f2);
        if (this.pA || f2 < this.Sf.yt() / 100.0f) {
            return;
        }
        this.pA = true;
        ROR Sf = bxS.Sf();
        if (Sf instanceof Qhi) {
            ((Qhi) Sf).kYc();
        }
    }

    public void kYc() {
        com.bytedance.sdk.openadsdk.core.video.Qhi.cJ Qhi = tP.Qhi(CacheDirFactory.getICacheDir(this.Sf.zTC()).Qhi(), this.Sf);
        Qhi.Qhi("material_meta", this.Sf);
        Qhi.Qhi("ad_slot", this.Sf.lB());
        com.bytedance.sdk.openadsdk.core.video.CJ.fl.Qhi(Qhi, new com.bykv.vk.openvk.component.video.api.fl.cJ() { // from class: com.bytedance.sdk.openadsdk.activity.Qhi.3
            @Override // com.bykv.vk.openvk.component.video.api.fl.Qhi.InterfaceC0167Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.ac.ac acVar, int i) {
            }

            @Override // com.bykv.vk.openvk.component.video.api.fl.Qhi.InterfaceC0167Qhi
            public void Qhi(com.bykv.vk.openvk.component.video.api.ac.ac acVar, int i, String str) {
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    public boolean tP() {
        com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = this.ac;
        return qhi != null && qhi.bxS.Dww();
    }

    @Override // com.bytedance.sdk.openadsdk.activity.ROR
    protected String MQ() {
        return this.ac.MND;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public cJ.fl cJ(int i) {
        cJ.fl flVar = new cJ.fl(i);
        flVar.ac = this.ac.dIT;
        return flVar;
    }

    public void qMt() {
        bxS().Qhi(this, cJ(cJ.C0214cJ.cJ));
    }
}
