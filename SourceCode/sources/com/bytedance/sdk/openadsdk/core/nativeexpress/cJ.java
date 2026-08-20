package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.CQU;
import com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressBackupView;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.google.android.material.badge.BadgeDrawable;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: BrandBannerController.java */
/* loaded from: classes2.dex */
public class cJ {
    private com.bytedance.sdk.component.adexpress.cJ.hpZ CJ;
    tP Qhi;
    private int ROR;
    private ScheduledFuture<?> Sf;
    private int Tgh;
    private Qhi ac;
    private final Context cJ;
    private NativeExpressView fl;
    private int hm;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BrandBannerController.java */
    /* loaded from: classes2.dex */
    public interface ac {
        void Qhi();

        void Qhi(int i, int i2);

        void Qhi(String str);

        void cJ(String str);
    }

    public cJ(Context context, NativeExpressView nativeExpressView, tP tPVar, String str) {
        this.Qhi = tPVar;
        this.cJ = context;
        this.fl = nativeExpressView;
        Qhi(nativeExpressView);
        this.ac = new Qhi(context, tPVar, this.Tgh, this.ROR, str, this.hm);
    }

    private void Qhi(NativeExpressView nativeExpressView) {
        tP tPVar = this.Qhi;
        if (tPVar != null && tPVar.Ewb()) {
            this.Tgh = -1;
            this.ROR = -1;
            return;
        }
        iMK Qhi2 = BannerExpressBackupView.Qhi(nativeExpressView.getExpectExpressWidth(), nativeExpressView.getExpectExpressHeight());
        this.hm = Qhi2.Qhi;
        if (nativeExpressView.getExpectExpressWidth() > 0 && nativeExpressView.getExpectExpressHeight() > 0) {
            this.Tgh = zn.cJ(this.cJ, nativeExpressView.getExpectExpressWidth());
            this.ROR = zn.cJ(this.cJ, nativeExpressView.getExpectExpressHeight());
        } else {
            int ac2 = zn.ac(this.cJ);
            this.Tgh = ac2;
            this.ROR = Float.valueOf(ac2 / Qhi2.cJ).intValue();
        }
        int i = this.Tgh;
        if (i <= 0 || i <= zn.ac(this.cJ)) {
            return;
        }
        float ac3 = zn.ac(this.cJ) / this.Tgh;
        this.Tgh = zn.ac(this.cJ);
        this.ROR = Float.valueOf(this.ROR * ac3).intValue();
    }

    public void Qhi(com.bytedance.sdk.component.adexpress.cJ.hpZ hpz) {
        this.CJ = hpz;
    }

    public void Qhi() {
        tP tPVar = this.Qhi;
        if (tPVar != null && tPVar.Ewb()) {
            this.Sf = lG.Qhi().schedule(new RunnableC0227cJ(this.ac.zc), com.bytedance.sdk.openadsdk.core.HzH.CJ().aP(), TimeUnit.MILLISECONDS);
        }
        Qhi qhi = this.ac;
        if (qhi != null) {
            qhi.Qhi(new com.bytedance.sdk.component.adexpress.cJ.Sf() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.cJ.1
                @Override // com.bytedance.sdk.component.adexpress.cJ.Sf
                public void Qhi(View view, com.bytedance.sdk.component.adexpress.cJ.pA pAVar) {
                    if (cJ.this.fl == null || view == null) {
                        if (cJ.this.CJ != null) {
                            cJ.this.CJ.a_(106);
                        }
                    } else if (cJ.this.CJ != null) {
                        cJ.this.CJ.Qhi(cJ.this.ac, pAVar);
                    }
                    cJ.this.ac();
                }

                @Override // com.bytedance.sdk.component.adexpress.cJ.Sf
                public void Qhi(int i, String str) {
                    if (cJ.this.CJ != null) {
                        cJ.this.CJ.a_(106);
                    }
                    cJ.this.ac();
                }
            });
            View fl = this.ac.fl();
            this.fl.removeView(fl);
            if (fl.getParent() != null) {
                ((ViewGroup) fl.getParent()).removeView(fl);
            }
            this.fl.addView(fl, new ViewGroup.LayoutParams(-1, -1));
            return;
        }
        com.bytedance.sdk.component.adexpress.cJ.hpZ hpz = this.CJ;
        if (hpz != null) {
            hpz.a_(106);
        }
    }

    public void cJ() {
        Qhi qhi = this.ac;
        if (qhi != null) {
            qhi.CJ();
            this.ac = null;
        }
        ac();
        this.CJ = null;
        this.fl = null;
    }

    public void Qhi(CQU cqu) {
        Qhi qhi = this.ac;
        if (qhi != null) {
            qhi.Qhi(cqu);
        }
    }

    public void Qhi(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        Qhi qhi = this.ac;
        if (qhi != null) {
            qhi.Qhi(tTDislikeDialogAbstract);
        }
    }

    public void Qhi(String str) {
        Qhi qhi = this.ac;
        if (qhi != null) {
            qhi.Qhi(str);
        }
    }

    public void Qhi(PAGExpressAdWrapperListener pAGExpressAdWrapperListener) {
        Qhi qhi = this.ac;
        if (qhi != null) {
            qhi.Qhi(pAGExpressAdWrapperListener);
        }
    }

    /* compiled from: BrandBannerController.java */
    /* loaded from: classes2.dex */
    public static class Qhi implements com.bytedance.sdk.component.adexpress.cJ.fl<View>, DspHtmlWebView.cJ {
        private int ABk;
        private String CJ;
        private String Gm;
        AtomicBoolean Qhi = new AtomicBoolean(false);
        private final int ROR;
        private FrameLayout Sf;
        private final int Tgh;
        private final int WAv;
        private TTDislikeDialogAbstract ac;
        private com.bytedance.sdk.openadsdk.dislike.cJ cJ;
        private final Context fl;
        private tP hm;
        private com.bytedance.sdk.component.adexpress.cJ.Sf iMK;
        private PAGExpressAdWrapperListener pA;
        private DspHtmlWebView zc;

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.cJ
        public View Qhi() {
            return null;
        }

        @Override // com.bytedance.sdk.component.adexpress.cJ.fl
        public int ac() {
            return 5;
        }

        public Qhi(Context context, tP tPVar, int i, int i2, String str, int i3) {
            this.Gm = str;
            if (tPVar != null && tPVar.Ewb()) {
                this.Gm = "fullscreen_interstitial_ad";
            }
            this.fl = context;
            this.Tgh = i;
            this.ROR = i2;
            this.hm = tPVar;
            this.WAv = zn.cJ(context, 3.0f);
            this.ABk = i3;
            Tgh();
        }

        private void Tgh() {
            FrameLayout frameLayout = new FrameLayout(this.fl);
            this.Sf = frameLayout;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
            if (layoutParams == null) {
                layoutParams = new FrameLayout.LayoutParams(this.Tgh, this.ROR);
            }
            layoutParams.width = this.Tgh;
            layoutParams.height = this.ROR;
            layoutParams.gravity = 17;
            this.Sf.setLayoutParams(layoutParams);
            DspHtmlWebView Sf = Sf();
            this.Sf.addView(Sf);
            View ROR = ROR();
            this.Sf.addView(ROR);
            tP tPVar = this.hm;
            if (tPVar != null && tPVar.Ewb()) {
                Sf.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
                Sf.Qhi(((Activity) this.fl).findViewById(com.bytedance.sdk.openadsdk.utils.iMK.cBj), FriendlyObstructionPurpose.OTHER);
            }
            Sf.Qhi(ROR, FriendlyObstructionPurpose.OTHER);
        }

        @Override // com.bytedance.sdk.component.adexpress.cJ.fl
        public void Qhi(com.bytedance.sdk.component.adexpress.cJ.Sf sf) {
            tP tPVar;
            if (this.Qhi.get()) {
                return;
            }
            if (this.fl == null || (tPVar = this.hm) == null) {
                sf.Qhi(106, "material null");
                return;
            }
            this.iMK = sf;
            if (TextUtils.isEmpty(tPVar.bM())) {
                sf.Qhi(106, "dsp data is null");
            } else {
                this.zc.hpZ();
            }
        }

        private View ROR() {
            PAGLogoView pAGLogoView = new PAGLogoView(this.fl);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            tP tPVar = this.hm;
            if (tPVar != null && tPVar.Ewb()) {
                layoutParams.leftMargin = zn.cJ(this.fl, 20.0f);
                layoutParams.bottomMargin = zn.cJ(this.fl, 20.0f);
                layoutParams.gravity = BadgeDrawable.BOTTOM_START;
            } else {
                layoutParams.topMargin = this.WAv;
                layoutParams.leftMargin = this.WAv;
            }
            pAGLogoView.setLayoutParams(layoutParams);
            pAGLogoView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.cJ.Qhi.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTWebsiteActivity.Qhi(Qhi.this.fl, Qhi.this.hm, Qhi.this.Gm);
                }
            });
            return pAGLogoView;
        }

        private DspHtmlWebView Sf() {
            DspHtmlWebView cJ = com.bytedance.sdk.openadsdk.core.nativeexpress.ac.Qhi().cJ();
            this.zc = cJ;
            if (cJ == null) {
                this.zc = new DspHtmlWebView(this.fl);
            }
            com.bytedance.sdk.openadsdk.core.nativeexpress.ac.Qhi().ac(this.zc);
            this.zc.Qhi(this.hm, this, this.Gm);
            this.zc.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            return this.zc;
        }

        @Override // com.bytedance.sdk.component.adexpress.cJ.fl
        public View fl() {
            return this.Sf;
        }

        public void CJ() {
            this.Sf = null;
            this.cJ = null;
            this.ac = null;
            this.iMK = null;
            this.hm = null;
            DspHtmlWebView dspHtmlWebView = this.zc;
            if (dspHtmlWebView != null) {
                dspHtmlWebView.zc();
                com.bytedance.sdk.openadsdk.core.nativeexpress.ac.Qhi().Qhi(this.zc);
            }
            this.Qhi.set(true);
        }

        public void Qhi(CQU cqu) {
            if (cqu instanceof com.bytedance.sdk.openadsdk.dislike.cJ) {
                this.cJ = (com.bytedance.sdk.openadsdk.dislike.cJ) cqu;
            }
        }

        public void Qhi(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
            tP tPVar;
            if (tTDislikeDialogAbstract != null && (tPVar = this.hm) != null) {
                tTDislikeDialogAbstract.setMaterialMeta(tPVar.EGK(), this.hm.VnT());
            }
            this.ac = tTDislikeDialogAbstract;
        }

        public void Qhi(String str) {
            this.CJ = str;
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.cJ
        public View cJ() {
            FrameLayout frameLayout = this.Sf;
            if (frameLayout == null) {
                return null;
            }
            return (View) frameLayout.getParent();
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.cJ
        public void Qhi(View view, int i) {
            PAGExpressAdWrapperListener pAGExpressAdWrapperListener = this.pA;
            if (pAGExpressAdWrapperListener != null) {
                pAGExpressAdWrapperListener.onAdClicked();
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.cJ
        public void f_() {
            if (this.iMK != null) {
                com.bytedance.sdk.component.adexpress.cJ.pA pAVar = new com.bytedance.sdk.component.adexpress.cJ.pA();
                pAVar.Qhi(true);
                pAVar.Qhi(zn.ac(this.fl, this.Tgh));
                pAVar.cJ(zn.ac(this.fl, this.ROR));
                this.iMK.Qhi(this.Sf, pAVar);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.cJ
        public void Qhi(int i, int i2) {
            com.bytedance.sdk.component.adexpress.cJ.Sf sf = this.iMK;
            if (sf != null) {
                sf.Qhi(i, "render fail");
            }
        }

        public void Qhi(PAGExpressAdWrapperListener pAGExpressAdWrapperListener) {
            this.pA = pAGExpressAdWrapperListener;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BrandBannerController.java */
    /* renamed from: com.bytedance.sdk.openadsdk.core.nativeexpress.cJ$cJ  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class RunnableC0227cJ implements Runnable {
        ac Qhi;

        public RunnableC0227cJ(ac acVar) {
            this.Qhi = acVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            ac acVar = this.Qhi;
            if (acVar != null) {
                acVar.Qhi(107, 107);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ac() {
        try {
            ScheduledFuture<?> scheduledFuture = this.Sf;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            this.Sf.cancel(false);
            this.Sf = null;
        } catch (Throwable unused) {
        }
    }
}
