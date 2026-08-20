package com.bytedance.sdk.openadsdk.component.reward.view;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.component.reward.Qhi.iMK;
import com.bytedance.sdk.openadsdk.core.customview.PAGProgressBar;
import com.bytedance.sdk.openadsdk.core.model.HzH;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.hm;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: RewardFullVideoLayout.java */
/* loaded from: classes2.dex */
public class Tgh {
    final tP CJ;
    private RFDownloadBarLayout EBS;
    RelativeLayout Gm;
    private int MQ;
    View ROR;
    View Sf;
    FrameLayout Tgh;
    ImageView WAv;
    protected final com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi ac;
    final Activity cJ;
    ImageView fl;
    PAGLogoView hm;
    PAGProgressBar hpZ;
    private final boolean kYc;
    public HzH pA;
    private boolean qMt;
    private final String tP;
    iMK zc;
    int Qhi = 3;
    protected int ABk = 0;
    protected final AtomicBoolean iMK = new AtomicBoolean(false);
    Runnable HzH = new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.Tgh.2
        @Override // java.lang.Runnable
        public void run() {
            try {
                if ((Tgh.this.CJ == null || !Tgh.this.CJ.Ewb()) && Tgh.this.fl != null) {
                    int[] iArr = new int[2];
                    Tgh.this.fl.getLocationOnScreen(iArr);
                    Tgh.this.ac.js.Qhi(iArr[0]);
                }
            } catch (Exception unused) {
            }
        }
    };

    protected boolean Qhi() {
        return true;
    }

    public Tgh(com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi) {
        this.ac = qhi;
        this.cJ = qhi.FQ;
        this.CJ = qhi.cJ;
        this.tP = qhi.fl;
        this.kYc = qhi.CJ;
    }

    public void cJ() {
        if (this.qMt) {
            return;
        }
        this.qMt = true;
        this.MQ = this.ac.Dq;
        if (Qhi()) {
            iMK imk = new iMK(this.ac);
            this.zc = imk;
            imk.Qhi();
        }
        kYc();
        HzH hzH = new HzH(this.cJ, this.CJ, this.tP, this.Tgh, this.ac.PAe, this.ac.yN);
        this.pA = hzH;
        hzH.Qhi();
    }

    private void kYc() {
        RelativeLayout relativeLayout;
        RFDownloadBarLayout rFDownloadBarLayout = (RFDownloadBarLayout) this.ac.yN.findViewById(com.bytedance.sdk.openadsdk.utils.iMK.zc);
        this.EBS = rFDownloadBarLayout;
        rFDownloadBarLayout.Qhi(this.ac);
        this.hm = (PAGLogoView) this.ac.yN.findViewById(520093757);
        this.WAv = (ImageView) this.ac.yN.findViewById(com.bytedance.sdk.openadsdk.utils.iMK.smJ);
        this.fl = (ImageView) this.ac.yN.findViewById(520093708);
        this.Tgh = (FrameLayout) this.ac.yN.findViewById(com.bytedance.sdk.openadsdk.utils.iMK.Gm);
        this.ROR = this.ac.yN.findViewById(com.bytedance.sdk.openadsdk.utils.iMK.HzH);
        this.Sf = this.ac.yN.findViewById(com.bytedance.sdk.openadsdk.utils.iMK.mZ);
        this.Gm = (RelativeLayout) this.ac.yN.findViewById(com.bytedance.sdk.openadsdk.utils.iMK.nR);
        iMK imk = this.zc;
        if (imk == null || imk.CJ() == null || (relativeLayout = this.Gm) == null) {
            return;
        }
        relativeLayout.addView(this.zc.CJ(), new LinearLayout.LayoutParams(-1, -1));
        this.zc.cJ();
    }

    public void ac() {
        this.Tgh.removeAllViews();
    }

    public void Qhi(boolean z) {
        int i = 8;
        zn.Qhi((View) this.hm, bxS.Gm(this.CJ) ? 8 : 0);
        ImageView imageView = this.WAv;
        if (this.CJ.IC() && this.CJ.Sf()) {
            i = 0;
        }
        zn.Qhi((View) imageView, i);
        cJ(z);
        if (this.kYc) {
            fl();
        }
    }

    public void Qhi(int i) {
        if (this.hpZ == null) {
            this.hpZ = new PAGProgressBar(this.ac.FQ);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(120, 120);
            layoutParams.gravity = 17;
            this.hpZ.setLayoutParams(layoutParams);
            this.hpZ.setIndeterminateDrawable(hm.Qhi(this.ac.FQ, "tt_video_loading_progress_bar"));
            this.ac.es.Tgh().addView(this.hpZ);
        }
        this.hpZ.setVisibility(i);
    }

    public void Qhi(int i, int i2) {
        FrameLayout frameLayout;
        if (this.CJ.NFd() == 1 && (frameLayout = this.Tgh) != null && (frameLayout.getLayoutParams() instanceof RelativeLayout.LayoutParams)) {
            int ac = zn.ac((Context) this.cJ);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.Tgh.getLayoutParams();
            layoutParams.width = ac;
            int i3 = (ac * 9) / 16;
            layoutParams.height = i3;
            this.Tgh.setLayoutParams(layoutParams);
            this.ABk = (zn.CJ((Context) this.cJ) - i3) / 2;
            ABk.Qhi("TTAD.RFullVideoLayout", "NonContentAreaHeight:" + this.ABk);
        }
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.cJ.ac acVar, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        View view;
        View view2;
        tP tPVar;
        if (this.Tgh != null && (tPVar = this.CJ) != null && tPVar.sDy() != null) {
            if (this.CJ.sDy().Tgh && !HzH.cJ(this.CJ)) {
                Qhi((View.OnClickListener) acVar);
                Qhi(acVar);
            } else {
                Qhi(onClickListener);
            }
        }
        tP tPVar2 = this.CJ;
        if (tPVar2 != null && tPVar2.NFd() == 1) {
            if (this.CJ.sDy() != null && (view2 = this.ROR) != null) {
                zn.Qhi(view2, 0);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.ROR.getLayoutParams();
                layoutParams.height = this.ABk;
                this.ROR.setLayoutParams(layoutParams);
                if (this.CJ.sDy().cJ) {
                    this.ROR.setOnClickListener(acVar);
                    this.ROR.setOnTouchListener(onTouchListener);
                } else {
                    this.ROR.setOnClickListener(onClickListener);
                }
            }
            if (this.CJ.sDy() != null && (view = this.Sf) != null) {
                zn.Qhi(view, 0);
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.Sf.getLayoutParams();
                layoutParams2.height = this.ABk;
                this.Sf.setLayoutParams(layoutParams2);
                if (this.CJ.sDy().CJ) {
                    this.Sf.setOnClickListener(acVar);
                    this.Sf.setOnTouchListener(onTouchListener);
                } else {
                    this.Sf.setOnClickListener(onClickListener);
                }
            }
        }
        PAGLogoView pAGLogoView = this.hm;
        if (pAGLogoView != null) {
            pAGLogoView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.Tgh.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view3) {
                    try {
                        TTWebsiteActivity.Qhi(Tgh.this.cJ, Tgh.this.CJ, Tgh.this.tP);
                    } catch (Throwable th) {
                        ABk.Qhi("TTAD.RFullVideoLayout", th.getMessage());
                    }
                }
            });
        }
        ImageView imageView = this.WAv;
        if (imageView != null) {
            imageView.setClickable(true);
            com.bytedance.sdk.openadsdk.iMK.ac.Qhi().Qhi((int) zn.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi(), 14.0f, true), this.WAv, this.ac.cJ);
        }
    }

    public void CJ() {
        zn.Qhi((View) this.Tgh, 8);
        zn.Qhi(this.ROR, 8);
        zn.Qhi(this.Sf, 8);
        cJ(8);
        zn.Qhi((View) this.fl, 8);
        zn.Qhi((View) this.hm, 8);
        zn.Qhi((View) this.Gm, 8);
        zn.Qhi((View) this.WAv, 8);
    }

    void fl() {
        int lG = this.CJ.lG();
        this.Qhi = lG;
        if (lG == -200) {
            this.Qhi = com.bytedance.sdk.openadsdk.core.HzH.CJ().pA(String.valueOf(this.CJ.Hy()));
        }
        if (this.Qhi != -1 || Qhi() || (this.ac.ReL instanceof com.bytedance.sdk.openadsdk.component.reward.cJ.ac)) {
            return;
        }
        cJ(0);
    }

    void cJ(boolean z) {
        ImageView imageView;
        int Qhi;
        if (this.MQ != 1 && (imageView = this.fl) != null && z) {
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            if ((layoutParams instanceof ViewGroup.MarginLayoutParams) && (Qhi = Qhi("navigation_bar_height")) > 0) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                if (Qhi > marginLayoutParams.rightMargin) {
                    marginLayoutParams.rightMargin = Qhi;
                }
            }
        }
        if (this.ac.ReL instanceof com.bytedance.sdk.openadsdk.component.reward.cJ.ac) {
            return;
        }
        cJ(0);
    }

    private int Qhi(String str) {
        Resources resources = this.cJ.getResources();
        if (resources != null) {
            return resources.getDimensionPixelSize(resources.getIdentifier(str, "dimen", MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID));
        }
        return 0;
    }

    public void cJ(int i) {
        tP tPVar = this.CJ;
        if (tPVar != null && tPVar.IC() && com.bytedance.sdk.openadsdk.core.model.iMK.Qhi(this.CJ)) {
            zn.Qhi((View) this.EBS, 8);
        } else {
            zn.Qhi((View) this.EBS, i);
        }
    }

    public FrameLayout Tgh() {
        return this.Tgh;
    }

    public void ac(int i) {
        zn.Qhi((View) this.hm, i);
    }

    public void ROR() {
        if (this.WAv.getVisibility() == 0) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.WAv.getLayoutParams();
            marginLayoutParams.setMargins(0, 0, 11, 16);
            marginLayoutParams.setMarginStart(0);
            marginLayoutParams.setMarginEnd(11);
            this.WAv.setLayoutParams(marginLayoutParams);
        }
    }

    public void CJ(int i) {
        int i2 = this.Qhi;
        if (i2 == -1 || i != i2 || this.iMK.get()) {
            return;
        }
        cJ(0);
        this.iMK.set(true);
        Sf();
    }

    protected void Sf() {
        RFDownloadBarLayout rFDownloadBarLayout = this.EBS;
        if (rFDownloadBarLayout == null) {
            return;
        }
        rFDownloadBarLayout.Qhi();
    }

    public void fl(int i) {
        zn.Qhi((View) this.fl, i);
        if (i == 0 && !this.ac.WAv.get() && bxS.cJ(this.ac.cJ)) {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(this.ac.cJ, this.ac.fl, "show_close_button", (JSONObject) null, System.currentTimeMillis() - this.ac.HLI);
        }
    }

    public boolean hm() {
        ImageView imageView = this.fl;
        return imageView != null && imageView.getVisibility() == 0;
    }

    public void Qhi(View.OnClickListener onClickListener) {
        zn.Qhi(this.Tgh, onClickListener, "TTBaseVideoActivity#mVideoNativeFrame");
    }

    private void Qhi(com.bytedance.sdk.openadsdk.core.cJ.ac acVar) {
        zn.Qhi((View) this.Tgh, (View.OnTouchListener) acVar, "TTBaseVideoActivity#mVideoNativeFrame");
    }

    public View WAv() {
        return this.fl;
    }

    public View Gm() {
        return this.EBS;
    }

    public void Qhi(float f2) {
        zn.Qhi(this.fl, f2);
    }

    public void Qhi(Animation animation) {
        RelativeLayout relativeLayout = this.Gm;
        if (relativeLayout != null) {
            relativeLayout.startAnimation(animation);
        }
    }

    public void zc() {
        try {
            iMK imk = this.zc;
            if (imk != null) {
                imk.ac();
            }
            RelativeLayout relativeLayout = this.Gm;
            if (relativeLayout != null) {
                relativeLayout.removeAllViews();
            }
        } catch (Throwable unused) {
            RelativeLayout relativeLayout2 = this.Gm;
            if (relativeLayout2 != null) {
                relativeLayout2.setAlpha(0.0f);
            }
        }
    }

    public void ABk() {
        try {
            Animation loadAnimation = AnimationUtils.loadAnimation(this.ac.FQ, MQ.hm(this.ac.FQ, "tt_fade_out"));
            if (loadAnimation != null) {
                loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.view.Tgh.3
                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationRepeat(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationStart(Animation animation) {
                    }

                    @Override // android.view.animation.Animation.AnimationListener
                    public void onAnimationEnd(Animation animation) {
                        Tgh.this.ac.es.zc();
                    }
                });
                this.ac.es.Qhi(loadAnimation);
                return;
            }
            this.ac.es.zc();
        } catch (Throwable unused) {
            this.ac.es.zc();
        }
    }

    public void iMK() {
        HzH hzH = this.pA;
        if (hzH != null) {
            hzH.fl();
        }
        ImageView imageView = this.fl;
        if (imageView != null) {
            imageView.removeCallbacks(this.HzH);
        }
    }

    public void pA() {
        HzH hzH = this.pA;
        if (hzH != null) {
            hzH.Tgh();
        }
    }

    public void hpZ() {
        HzH hzH = this.pA;
        if (hzH != null) {
            hzH.ROR();
        }
    }

    public void HzH() {
        com.bytedance.sdk.openadsdk.core.cJ.Tgh fl = this.ac.aP.fl();
        View view = this.EBS;
        if (view == null) {
            view = this.ac.yN;
        }
        fl.onClick(view);
    }
}
