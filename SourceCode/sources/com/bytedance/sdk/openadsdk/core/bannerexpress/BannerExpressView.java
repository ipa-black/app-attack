package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.api.banner.PAGBannerAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.hm;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.utils.zn;
/* loaded from: classes2.dex */
public class BannerExpressView extends PAGFrameLayout {
    protected tP CJ;
    protected final Context Qhi;
    protected int ROR;
    protected boolean Sf;
    protected PAGBannerAdWrapperListener Tgh;
    protected NativeExpressView ac;
    protected NativeExpressView cJ;
    protected AdSlot fl;
    protected String hm;

    public BannerExpressView(Context context, tP tPVar, AdSlot adSlot) {
        super(context);
        this.hm = "banner_ad";
        this.Qhi = context;
        this.CJ = tPVar;
        this.fl = adSlot;
        Qhi();
        AdSlot adSlot2 = this.fl;
        if (adSlot2 != null) {
            Qhi(adSlot2.getExpressViewAcceptedWidth(), this.fl.getExpressViewAcceptedHeight());
        }
    }

    protected void Qhi() {
        NativeExpressView nativeExpressView = new NativeExpressView(this.Qhi, this.CJ, this.fl, this.hm);
        this.cJ = nativeExpressView;
        addView(nativeExpressView, new ViewGroup.LayoutParams(-1, -1));
        PAGBannerAdWrapperListener pAGBannerAdWrapperListener = this.Tgh;
        if (pAGBannerAdWrapperListener != null) {
            setExpressInteractionListener(pAGBannerAdWrapperListener);
        }
    }

    public void Qhi(tP tPVar, AdSlot adSlot) {
        NativeExpressView nativeExpressView = new NativeExpressView(this.Qhi, tPVar, adSlot, this.hm);
        this.ac = nativeExpressView;
        nativeExpressView.setExpressInteractionListener(new PAGExpressAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressView.1
            @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
            public void onAdClicked() {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onAdDismissed() {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onAdShow(View view, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onRenderFail(View view, String str, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onRenderSuccess(View view, float f2, float f3) {
                BannerExpressView.this.Qhi(f2, f3);
                if (BannerExpressView.this.ac != null) {
                    BannerExpressView.this.ac.setSoundMute(true);
                }
                BannerExpressView.this.fl();
            }
        });
        zn.Qhi((View) this.ac, 8);
        addView(this.ac, new ViewGroup.LayoutParams(-1, -1));
    }

    public void setExpressInteractionListener(PAGBannerAdWrapperListener pAGBannerAdWrapperListener) {
        this.Tgh = pAGBannerAdWrapperListener;
        NativeExpressView nativeExpressView = this.cJ;
        if (nativeExpressView != null) {
            nativeExpressView.setJsbLandingPageOpenListener(new com.bytedance.sdk.openadsdk.core.widget.ac() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressView.2
                @Override // com.bytedance.sdk.openadsdk.core.widget.ac
                public void Qhi() {
                    BannerExpressView.this.Tgh.onAdClicked();
                }
            });
            this.cJ.setExpressInteractionListener(new PAGExpressAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressView.3
                @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
                public void onAdClicked() {
                }

                @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
                public void onAdDismissed() {
                }

                @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
                public void onAdShow(View view, int i) {
                }

                @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
                public void onRenderFail(View view, String str, int i) {
                    if (BannerExpressView.this.Tgh != null) {
                        BannerExpressView.this.Tgh.onRenderFail(BannerExpressView.this, str, i);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
                public void onRenderSuccess(View view, float f2, float f3) {
                    if (BannerExpressView.this.cJ != null) {
                        BannerExpressView.this.cJ.setSoundMute(true);
                    }
                    BannerExpressView.this.Qhi(f2, f3);
                    if (BannerExpressView.this.Tgh != null) {
                        BannerExpressView.this.Tgh.onRenderSuccess(BannerExpressView.this, f2, f3);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void Qhi(float f2, float f3) {
        int cJ = zn.cJ(this.Qhi, f2);
        int cJ2 = zn.cJ(this.Qhi, f3);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(cJ, cJ2);
        }
        layoutParams.width = cJ;
        layoutParams.height = cJ2;
        setLayoutParams(layoutParams);
    }

    public void cJ() {
        NativeExpressView nativeExpressView = this.cJ;
        if (nativeExpressView != null) {
            nativeExpressView.hm();
        }
    }

    public void ac() {
        if (this.cJ != null) {
            hm.cJ().Tgh(this.cJ.getClosedListenerKey());
            removeView(this.cJ);
            this.cJ.Gm();
            this.cJ = null;
        }
        if (this.ac != null) {
            hm.cJ().Tgh(this.ac.getClosedListenerKey());
            removeView(this.ac);
            this.ac.Gm();
            this.ac = null;
        }
        hm.cJ().qMt();
    }

    public NativeExpressView getCurView() {
        return this.cJ;
    }

    public NativeExpressView getNextView() {
        return this.ac;
    }

    public void setDuration(int i) {
        this.ROR = i;
    }

    private ObjectAnimator Qhi(NativeExpressView nativeExpressView) {
        return ObjectAnimator.ofFloat(nativeExpressView, "translationX", 0.0f, -getWidth());
    }

    private ObjectAnimator cJ(NativeExpressView nativeExpressView) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(nativeExpressView, "translationX", getWidth(), 0.0f);
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressView.4
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                BannerExpressView.this.Sf = false;
                BannerExpressView.this.ROR();
            }
        });
        return ofFloat;
    }

    public void CJ() {
        NativeExpressView nativeExpressView = this.ac;
        if (nativeExpressView != null) {
            nativeExpressView.hm();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void fl() {
        try {
            if (this.Sf || this.ac == null) {
                return;
            }
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.play(Qhi(this.cJ)).with(cJ(this.ac));
            animatorSet.setDuration(this.ROR).start();
            zn.Qhi((View) this.ac, 0);
            this.Sf = true;
        } catch (Throwable th) {
            ABk.Qhi("BannerExpressView", th.getMessage());
        }
    }

    public boolean Tgh() {
        return this.ac != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ROR() {
        NativeExpressView nativeExpressView = this.cJ;
        this.cJ = this.ac;
        this.ac = nativeExpressView;
        if (nativeExpressView != null) {
            removeView(nativeExpressView);
            this.ac.Gm();
            this.ac = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.cJ == null) {
            Qhi();
        }
        com.bytedance.sdk.openadsdk.utils.ac.Qhi(this, this.CJ);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}
