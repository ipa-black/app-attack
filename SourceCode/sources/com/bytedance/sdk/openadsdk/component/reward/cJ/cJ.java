package com.bytedance.sdk.openadsdk.component.reward.cJ;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.activity.TTRewardVideoActivity;
import com.bytedance.sdk.openadsdk.activity.cJ;
import com.bytedance.sdk.openadsdk.cJ.cJ;
import com.bytedance.sdk.openadsdk.component.reward.top.TopProxyLayout;
import com.bytedance.sdk.openadsdk.component.reward.view.RFDownloadBarLayout;
import com.bytedance.sdk.openadsdk.component.reward.view.RFEndCardBackUpLayout;
import com.bytedance.sdk.openadsdk.component.reward.view.RewardFullBaseLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.model.HzH;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.hpZ;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.widget.PAGCloseButton;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.PlayableLoadingView;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.iMK;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.explorestack.iab.vast.VastError;
import com.google.android.material.badge.BadgeDrawable;
import java.util.List;
/* compiled from: RewardFullAdType.java */
/* loaded from: classes2.dex */
public abstract class cJ extends com.bytedance.sdk.openadsdk.component.reward.cJ.Qhi {
    public com.bytedance.sdk.openadsdk.core.widget.Qhi ABk;
    protected String Gm;
    public LinearLayout iMK;
    private com.bytedance.sdk.openadsdk.WAv.Tgh pA;
    protected com.bytedance.sdk.openadsdk.core.cJ.Tgh zc;

    /* compiled from: RewardFullAdType.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi(boolean z);
    }

    public void ABk() {
    }

    public Qhi CJ() {
        return null;
    }

    public abstract void Qhi(FrameLayout frameLayout);

    public abstract void ROR();

    public abstract boolean Tgh();

    protected boolean aP() {
        return true;
    }

    public abstract boolean fl();

    public void tP() {
    }

    public cJ(com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi) {
        super(qhi);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.cJ.Qhi
    public void Qhi(com.bytedance.sdk.openadsdk.core.video.ac.cJ cJVar, CQU cqu) {
        super.Qhi(cJVar, cqu);
        if (this.Qhi.cJ.Qhi() && this.Qhi.EGK) {
            this.Qhi.lG.Qhi(false);
        }
        if (bxS.Gm(this.Qhi.cJ)) {
            this.Qhi.CQU.Tgh();
        }
    }

    public void Qhi(RewardFullBaseLayout rewardFullBaseLayout) {
        Qhi(rewardFullBaseLayout, this.Qhi);
    }

    public RFEndCardBackUpLayout Sf() {
        return new RFEndCardBackUpLayout(this.Qhi.ip);
    }

    public View hm() {
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(this.Qhi.FQ);
        pAGFrameLayout.setId(iMK.XyJ);
        PAGImageView cJ = PAGCloseButton.cJ(this.Qhi.FQ);
        cJ.setId(520093708);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = BadgeDrawable.TOP_END;
        layoutParams.topMargin = zn.cJ(this.Qhi.FQ, 20.0f);
        layoutParams.rightMargin = zn.cJ(this.Qhi.FQ, 16.0f);
        cJ.setLayoutParams(layoutParams);
        cJ.setContentDescription(MQ.Qhi(this.Qhi.FQ, "tt_ad_close_text"));
        cJ.setVisibility(8);
        PAGLogoView pAGLogoView = new PAGLogoView(this.Qhi.FQ);
        pAGLogoView.setId(520093757);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, zn.cJ(this.Qhi.FQ, 14.0f));
        layoutParams2.gravity = BadgeDrawable.BOTTOM_START;
        pAGLogoView.setLayoutParams(layoutParams2);
        PAGImageView pAGImageView = new PAGImageView(this.Qhi.FQ);
        pAGImageView.setId(iMK.smJ);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(zn.cJ(this.Qhi.FQ, 32.0f), zn.cJ(this.Qhi.FQ, 14.0f));
        layoutParams3.gravity = BadgeDrawable.BOTTOM_END;
        pAGImageView.setLayoutParams(layoutParams3);
        pAGImageView.setPadding(zn.cJ(this.Qhi.FQ, 9.0f), 0, zn.cJ(this.Qhi.FQ, 9.0f), 0);
        pAGImageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
        PlayableLoadingView playableLoadingView = new PlayableLoadingView(this.Qhi.FQ);
        playableLoadingView.setId(iMK.YAV);
        playableLoadingView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        playableLoadingView.setClickable(true);
        playableLoadingView.setFocusable(true);
        pAGFrameLayout.addView(pAGLogoView);
        pAGFrameLayout.addView(pAGImageView);
        pAGFrameLayout.addView(playableLoadingView);
        if (!this.Qhi.cJ.hU() || !this.Qhi.VnT || this.Qhi.Qhi != 1) {
            TopProxyLayout topProxyLayout = new TopProxyLayout(this.Qhi.FQ);
            topProxyLayout.setId(iMK.YCN);
            topProxyLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
            pAGFrameLayout.addView(topProxyLayout);
        }
        pAGFrameLayout.addView(cJ);
        return pAGFrameLayout;
    }

    public View WAv() {
        PAGRelativeLayout pAGRelativeLayout;
        if (this.cJ.NFd() != 5) {
            pAGRelativeLayout = new PAGRelativeLayout(this.Qhi.FQ);
            pAGRelativeLayout.setId(iMK.nR);
        } else {
            pAGRelativeLayout = null;
        }
        new StringBuilder("getLoadingFrameView").append(pAGRelativeLayout);
        return pAGRelativeLayout;
    }

    public void Gm() {
        this.Qhi.Eh.Qhi(this.Qhi.CJ);
        this.Qhi.es.cJ();
        this.Qhi.zn.Qhi();
        if (!this.Qhi.cJ.IC()) {
            if (this.Qhi.ROR && TextUtils.isEmpty(tP.Qhi(this.Qhi.ip, this.cJ))) {
                zc();
            }
            this.Qhi.lG.Qhi();
            this.Qhi.Jma.Qhi();
        }
        this.Qhi.CQU.Qhi();
        this.Qhi.js.Qhi();
        if (bxS.cJ(this.Qhi.cJ)) {
            SSWebView Sf = this.Qhi.lG.Sf();
            if (Sf != null) {
                Sf.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            }
            this.Qhi.lG.hm().setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            this.Qhi.js.ac(true);
            if (bxS.Gm(this.Qhi.cJ)) {
                this.Qhi.es.CJ();
                zn.Qhi((View) Sf, 4);
                zn.Qhi((View) this.Qhi.lG.hm(), 0);
            }
        }
        if (HzH.ac(this.Qhi.cJ) || HzH.cJ(this.Qhi.cJ) || HzH.CJ(this.Qhi.cJ)) {
            return;
        }
        this.Qhi.es.Qhi(zn.cJ(this.Qhi.ip, this.Qhi.NBs), zn.cJ(this.Qhi.ip, this.Qhi.dI));
        this.Qhi.Dww.Qhi();
        if (bxS.Gm(this.Qhi.cJ)) {
            this.Qhi.lG.Qhi(true);
            this.Qhi.lG.fl();
            Qhi(false, false, false, cJ.C0214cJ.ac);
        } else if (this.Qhi.pv) {
            this.Qhi.es.Qhi(0);
        }
    }

    public void zc() {
        LinearLayout linearLayout = (LinearLayout) this.Qhi.yN.findViewById(iMK.ABk);
        this.iMK = linearLayout;
        zn.Qhi((View) linearLayout, 8);
        this.Qhi.oU = new com.bytedance.sdk.openadsdk.common.ROR(this.Qhi.FQ, this.Qhi.cJ, "landingpage_endcard");
        this.Qhi.oU.ac().setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.cJ.cJ.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                cJ.this.Qhi.es.WAv().performClick();
            }
        });
        this.iMK.addView(this.Qhi.oU.fl(), new LinearLayout.LayoutParams(-1, -1));
        this.Qhi.lG.Qhi(this.Qhi.oU);
    }

    public void Qhi(boolean z, boolean z2, boolean z3, int i) {
        this.Qhi.zn.Qhi(z, z2, z3, this, i);
    }

    public void iMK() {
        com.bytedance.sdk.openadsdk.core.widget.Qhi qhi = this.ABk;
        if (qhi == null || !qhi.isShowing()) {
            return;
        }
        this.ABk.dismiss();
    }

    public void pA() {
        if (this.Qhi.ROR) {
            return;
        }
        this.Qhi.js.Tgh();
        if (this.Qhi.VnT && (this.Qhi.Ura instanceof com.bytedance.sdk.openadsdk.activity.Qhi)) {
            return;
        }
        this.Qhi.es.fl(0);
    }

    public void hpZ() {
        this.WAv.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
    }

    public void HzH() {
        kYc();
        if (this.Qhi == null) {
            return;
        }
        if (this.Qhi.gga != null) {
            this.Qhi.gga.Qhi();
        }
        this.Qhi.Qhi();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void kYc() {
        if (this.Qhi.WAv.get() && !this.Qhi.ROR && this.Qhi.qMt.getAndSet(false) && (this.Qhi.Sf >= 0 || this.Qhi.Sf == -1)) {
            Message obtain = Message.obtain();
            obtain.what = TypedValues.TransitionType.TYPE_DURATION;
            obtain.arg1 = this.Qhi.Sf;
            this.Qhi.xyz.sendMessage(obtain);
        }
        if (this.Qhi.hm <= 0 || !this.Qhi.EBS.getAndSet(false)) {
            return;
        }
        Message obtain2 = Message.obtain();
        obtain2.what = 900;
        obtain2.arg1 = this.Qhi.hm;
        this.Qhi.xyz.sendMessage(obtain2);
    }

    public void MQ() {
        if (this.Qhi == null) {
            return;
        }
        this.Qhi.Qe = false;
        boolean z = this.Qhi.Qe;
        boolean z2 = this.Qhi.dIT;
        if (!this.Qhi.Gm.get()) {
            this.Qhi.bxS.WAv();
        }
        hpZ();
        this.Qhi.lG.tP();
        this.Qhi.CQU.iMK();
        this.Qhi.EBS.set(true);
        if (this.Qhi.WAv.get()) {
            this.Qhi.qMt.set(true);
        }
        if (this.Qhi.gga != null) {
            this.Qhi.gga.cJ();
        }
        this.Qhi.cJ();
    }

    public void qMt() {
        if (this.Qhi == null) {
            return;
        }
        if (this.Qhi.es != null) {
            this.Qhi.es.hpZ();
        }
        boolean z = this.Qhi.dIT;
        this.Qhi.lB.Qhi();
        DeviceUtils.ROR();
        this.Qhi.lG.kYc();
        if (this.Qhi.dIT) {
            this.Qhi.FQ.runOnUiThread(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.cJ.cJ.2
                @Override // java.lang.Runnable
                public void run() {
                    if (cJ.this.Qhi.lB.Qhi() > 0) {
                        cJ.this.Qhi.lB.Qhi(false);
                    }
                }
            });
        }
    }

    public void EBS() {
        if (this.Qhi.pM != null) {
            this.Qhi.pM.Tgh();
        }
        if (this.Qhi.es != null) {
            this.Qhi.es.iMK();
        }
        this.Qhi.bxS.CQU();
        if (!fl()) {
            this.Qhi.WAv.get();
        }
        this.Qhi.lG.iMK();
        this.Qhi.CQU.fl();
        this.Qhi.es.zc();
        this.Qhi.zn.ac();
        this.Qhi.Eh.cJ();
        if (this.Qhi.gga != null) {
            this.Qhi.gga.ac();
        }
    }

    public void bxS() {
        int tP;
        if (com.bytedance.sdk.openadsdk.core.HzH.CJ().qMt(String.valueOf(this.Qhi.Tgh)) == 1) {
            if (this.Qhi.CJ) {
                if (bxS.Gm(this.Qhi.cJ)) {
                    tP = com.bytedance.sdk.openadsdk.core.HzH.CJ().Qhi(String.valueOf(this.Qhi.Tgh), true);
                } else {
                    tP = com.bytedance.sdk.openadsdk.core.HzH.CJ().WAv(String.valueOf(this.Qhi.Tgh));
                }
            } else if (bxS.Gm(this.Qhi.cJ)) {
                tP = com.bytedance.sdk.openadsdk.core.HzH.CJ().Qhi(String.valueOf(this.Qhi.Tgh), false);
            } else {
                tP = com.bytedance.sdk.openadsdk.core.HzH.CJ().tP(String.valueOf(this.Qhi.Tgh));
            }
            if (this.Qhi.es != null && this.Qhi.es.hm()) {
                if (this.Qhi.es != null) {
                    this.Qhi.es.WAv().performClick();
                }
            } else if ((!this.Qhi.WAv.get() || bxS.Gm(this.Qhi.cJ)) && tP != -1) {
                if (((this.Qhi.bxS == null || this.Qhi.bxS.Sf() < tP * 1000) && (this.Qhi.CQU == null || this.Qhi.CQU.Gm() - this.Qhi.CQU.zc() < tP)) || this.Qhi.js == null) {
                    return;
                }
                this.Qhi.js.CJ();
            }
        }
    }

    public void Dww() {
        this.Qhi.js.ac();
        this.Qhi.js.fl(true);
    }

    public void CQU() {
        this.zc = this.Qhi.aP.ac();
    }

    public void pM() {
        if (!Tgh() && ((this instanceof Sf) || (this instanceof hm))) {
            this.Qhi.aP.cJ();
            return;
        }
        if (!this.hm.Qhi(this.fl.hm(), false)) {
            this.WAv.removeMessages(VastError.ERROR_CODE_GENERAL_WRAPPER);
            if (this.Qhi.VnT && (this.Qhi.Ura instanceof com.bytedance.sdk.openadsdk.activity.Qhi)) {
                ((com.bytedance.sdk.openadsdk.activity.Qhi) this.Qhi.Ura).qMt();
            } else {
                Qhi(cJ.C0214cJ.Qhi);
                this.fl.Qhi(!this.fl.Eh(), 4);
            }
        }
        if (this.Qhi == null || this.Qhi.cJ == null || this.Qhi.gga == null || !this.Qhi.cJ.Ewb()) {
            return;
        }
        this.Qhi.gga.Qhi(this.Qhi.bxS.MQ());
    }

    public void Qhi(int i) {
        this.fl.ABk();
        Qhi(false, true, false, i);
        if (this.Qhi.CJ) {
            this.hm.Qhi(10000);
        }
    }

    public void Qhi(com.bytedance.sdk.openadsdk.WAv.Tgh tgh) {
        this.pA = tgh;
        ac();
        if (!this.Qhi.cJ.IC() && aP()) {
            Eh();
        }
        if (aP()) {
            this.Qhi.zn.cJ();
        }
        if (HzH.ac(this.Qhi.cJ) || HzH.CJ(this.Qhi.cJ)) {
            this.WAv.sendEmptyMessageDelayed(500, 100L);
        }
        this.Qhi.es.Qhi(this.Qhi.Hf == 100.0f);
        CQU();
        ROR();
    }

    public final void Eh() {
        if (this.Qhi.FQ.isFinishing()) {
            return;
        }
        this.Qhi.lG.ABk();
        String str = this.Qhi.CJ ? "reward_endcard" : "fullscreen_endcard";
        this.Qhi.lG.Qhi(this.pA, str, this.Qhi.PAe);
        this.Qhi.CQU.Qhi(this.pA, this.Qhi.dIT);
        this.Qhi.lG.Qhi(str, this.Qhi.PAe);
        this.Qhi.lG.fl();
    }

    public void Qhi(Message message) {
        int i = message.what;
        int i2 = message.what;
        if (i2 == 1) {
            Dww();
        } else if (i2 == 300) {
            if (this.Qhi.VnT && (this.Qhi.Ura instanceof com.bytedance.sdk.openadsdk.activity.Qhi)) {
                ((com.bytedance.sdk.openadsdk.activity.Qhi) this.Qhi.Ura).qMt();
            } else {
                Qhi(cJ.C0214cJ.cJ);
                this.Qhi.bxS.Qhi(!this.Qhi.bxS.Eh(), 1 ^ this.Qhi.bxS.Eh());
            }
            if (this.Qhi.cJ.cJP() == null || this.Qhi.cJ.cJP().Qhi() == null) {
                return;
            }
            this.Qhi.cJ.cJP().Qhi().Qhi(com.bytedance.sdk.openadsdk.core.ROR.Qhi.Qhi.GENERAL_LINEAR_AD_ERROR);
        } else if (i2 == 400) {
            this.Qhi.bxS.ABk();
            Qhi(false, true, false, 3);
        } else if (i2 == 500) {
            if (!bxS.cJ(this.Qhi.cJ)) {
                this.Qhi.js.ac(false);
            }
            SSWebView Sf = this.Qhi.lG.Sf();
            if (Sf != null && Sf.getWebView() != null) {
                Sf.hm();
                Sf.getWebView().resumeTimers();
            }
            if (this.Qhi.lG.Sf() != null) {
                this.Qhi.lG.Qhi(1.0f);
                this.Qhi.es.Qhi(1.0f);
            }
            if (!this.Qhi.cJ.LpL() && this.Qhi.bxS.cJ() && this.Qhi.kYc.get()) {
                this.Qhi.bxS.ABk();
            }
        } else if (i2 == 600) {
            pA();
        } else if (i2 == 700) {
            int i3 = message.arg1;
            if (this.Qhi.qMt.get()) {
                return;
            }
            if (i3 > 0) {
                this.Qhi.js.cJ();
                this.Qhi.js.Qhi((i3 / 1000) + "s");
                this.Qhi.js.fl(false);
                Message obtain = Message.obtain();
                obtain.what = TypedValues.TransitionType.TYPE_DURATION;
                obtain.arg1 = i3 - 1000;
                com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi = this.Qhi;
                qhi.Sf -= 1000;
                this.WAv.sendMessageDelayed(obtain, 1000L);
                return;
            }
            this.WAv.removeMessages(TypedValues.TransitionType.TYPE_DURATION);
            if (bxS.ac(this.cJ)) {
                if (this.Qhi.CQU.HzH() || !this.Qhi.lG.hpZ()) {
                    pA();
                    return;
                } else {
                    Dww();
                    return;
                }
            }
            pA();
        } else if (i2 == 800) {
            if (!bxS.cJ(this.Qhi.cJ)) {
                this.Qhi.js.ac(false);
            }
            this.Qhi.es.Qhi(1.0f);
            if (!this.Qhi.cJ.LpL() && this.Qhi.bxS.cJ() && this.Qhi.kYc.get()) {
                this.Qhi.bxS.ABk();
            }
        } else if (i2 == 900 && !this.Qhi.EBS.get()) {
            int i4 = message.arg1;
            double aP = this.Qhi.bxS.aP();
            Qhi(i4, (long) (1000.0d * aP));
            if (i4 > 0) {
                this.Qhi.js.cJ();
                this.Qhi.js.Qhi((i4 / 1000) + "s");
                this.Qhi.js.fl(false);
                Message obtain2 = Message.obtain();
                obtain2.what = 900;
                obtain2.arg1 = i4 - 1000;
                this.Qhi.hm = obtain2.arg1;
                this.WAv.sendMessageDelayed(obtain2, 1000L);
                if (this.Qhi.VnT && (this.Qhi.Ura instanceof com.bytedance.sdk.openadsdk.activity.Qhi) && aP > 0.0d) {
                    ((com.bytedance.sdk.openadsdk.activity.Qhi) this.Qhi.Ura).Qhi((float) (1.0d - ((i4 / 1000.0f) / aP)));
                    return;
                }
                return;
            }
            this.WAv.removeMessages(900);
            pA();
            com.bytedance.sdk.openadsdk.activity.ROR ror = this.Qhi.Ura;
            if (this.Qhi.VnT && (ror instanceof com.bytedance.sdk.openadsdk.activity.Qhi)) {
                ror.bxS().Qhi(ror, new cJ.fl(5));
            }
        }
    }

    private void Qhi(long j, long j2) {
        if (this.Qhi.FQ instanceof TTRewardVideoActivity) {
            ((TTRewardVideoActivity) this.Qhi.FQ).Qhi(j2 - j, j2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void Qhi(FrameLayout frameLayout, final com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi) {
        String str;
        final PAGImageView pAGImageView;
        Context context = frameLayout.getContext();
        if (qhi.EGK) {
            PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(context);
            pAGFrameLayout.setId(iMK.WAv);
            frameLayout.addView(pAGFrameLayout, new FrameLayout.LayoutParams(-1, -1));
            FrameLayout Qhi2 = Qhi(context);
            com.bykv.vk.openvk.component.video.api.ac.cJ FQ = qhi.cJ.FQ();
            if (FQ != null) {
                str = FQ.WAv();
            } else {
                List<hpZ> cjC = qhi.cJ.cjC();
                if (cjC != null && !cjC.isEmpty()) {
                    str = cjC.get(0).Qhi();
                } else {
                    str = "";
                }
            }
            if (TextUtils.isEmpty(str)) {
                pAGImageView = null;
            } else {
                pAGImageView = new PAGImageView(context);
                pAGImageView.setId(iMK.gt);
                pAGImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                Qhi2.addView(pAGImageView);
            }
            pAGFrameLayout.addView(Qhi2);
            RFDownloadBarLayout rFDownloadBarLayout = new RFDownloadBarLayout(context);
            rFDownloadBarLayout.setId(iMK.zc);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 80;
            frameLayout.addView(rFDownloadBarLayout, layoutParams);
            rFDownloadBarLayout.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.cJ.cJ.3
                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                    int height = view.getHeight();
                    if (height <= 0) {
                        return;
                    }
                    View findViewById = com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi.this.yN.findViewById(520093757);
                    if (findViewById != null) {
                        ViewGroup.LayoutParams layoutParams2 = findViewById.getLayoutParams();
                        if (layoutParams2 instanceof FrameLayout.LayoutParams) {
                            ((FrameLayout.LayoutParams) layoutParams2).bottomMargin = height;
                        }
                    }
                    View findViewById2 = com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi.this.yN.findViewById(iMK.smJ);
                    if (findViewById2 != null) {
                        ViewGroup.LayoutParams layoutParams3 = findViewById2.getLayoutParams();
                        if (layoutParams3 instanceof FrameLayout.LayoutParams) {
                            ((FrameLayout.LayoutParams) layoutParams3).bottomMargin = height;
                        }
                    }
                    View findViewById3 = com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi.this.yN.findViewById(iMK.jN);
                    if (findViewById3 != null) {
                        ViewGroup.LayoutParams layoutParams4 = findViewById3.getLayoutParams();
                        if (layoutParams4 instanceof FrameLayout.LayoutParams) {
                            ((FrameLayout.LayoutParams) layoutParams4).bottomMargin = height;
                        }
                    }
                    PAGImageView pAGImageView2 = pAGImageView;
                    if (pAGImageView2 != null) {
                        ViewGroup.LayoutParams layoutParams5 = pAGImageView2.getLayoutParams();
                        if (layoutParams5 instanceof ViewGroup.MarginLayoutParams) {
                            ((ViewGroup.MarginLayoutParams) layoutParams5).bottomMargin = height;
                            pAGImageView.setLayoutParams(layoutParams5);
                        }
                    }
                }
            });
            PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
            pAGLinearLayout.setId(iMK.ABk);
            pAGLinearLayout.setOrientation(1);
            pAGLinearLayout.setVisibility(8);
            frameLayout.addView(pAGLinearLayout, new FrameLayout.LayoutParams(-1, -1));
        }
        if (qhi.jPH) {
            SSWebView sSWebView = new SSWebView(context, true);
            sSWebView.setId(iMK.iMK);
            sSWebView.setLayerType(2, null);
            sSWebView.setVisibility(4);
            frameLayout.addView(sSWebView, new FrameLayout.LayoutParams(-1, -1));
            FrameLayout frameLayout2 = new FrameLayout(context);
            frameLayout2.setId(iMK.pA);
            frameLayout2.setVisibility(4);
            frameLayout.addView(frameLayout2, new FrameLayout.LayoutParams(-1, -1));
        }
        SSWebView sSWebView2 = new SSWebView(context, true);
        sSWebView2.setId(iMK.hpZ);
        sSWebView2.setVisibility(8);
        frameLayout.addView(sSWebView2, new FrameLayout.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static FrameLayout Qhi(Context context) {
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(context);
        pAGFrameLayout.setId(iMK.Gm);
        pAGFrameLayout.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        pAGFrameLayout.setLayoutParams(layoutParams);
        return pAGFrameLayout;
    }
}
