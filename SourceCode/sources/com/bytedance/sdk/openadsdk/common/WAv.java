package com.bytedance.sdk.openadsdk.common;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.customview.PAGProgressBar;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.iMK;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: TTTitleNewStyleManager.java */
/* loaded from: classes2.dex */
public class WAv {
    TTAdDislikeDialog Qhi;
    private final Context ROR;
    private ImageView Sf;
    private final tP Tgh;
    private PAGProgressBar WAv;
    TTAdDislikeToast cJ;
    private final RelativeLayout fl;
    private TextView hm;
    private boolean zc;
    final AtomicBoolean ac = new AtomicBoolean(false);
    final AtomicBoolean CJ = new AtomicBoolean(false);
    private final int Gm = zn.cJ(HzH.Qhi(), 44.0f);

    public WAv(Context context, RelativeLayout relativeLayout, tP tPVar) {
        this.ROR = context;
        this.fl = relativeLayout;
        this.Tgh = tPVar;
        fl();
    }

    private void fl() {
        this.Sf = (ImageView) this.fl.findViewById(iMK.ReL);
        this.hm = (TextView) this.fl.findViewById(iMK.EGK);
        ImageView imageView = (ImageView) this.fl.findViewById(iMK.gga);
        this.WAv = (PAGProgressBar) this.fl.findViewById(iMK.VnT);
        tP tPVar = this.Tgh;
        if (tPVar != null) {
            this.hm.setText(TextUtils.isEmpty(tPVar.dVA()) ? MQ.Qhi(this.ROR, "tt_web_title_default") : this.Tgh.dVA());
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.WAv.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                WAv.this.CJ();
            }
        });
    }

    public void Qhi(int i) {
        if (i == 100) {
            this.WAv.setVisibility(8);
            return;
        }
        this.WAv.setVisibility(0);
        this.WAv.setProgress(i);
    }

    public void Qhi() {
        try {
            final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.fl.getLayoutParams();
            if (this.zc) {
                return;
            }
            int i = marginLayoutParams.topMargin;
            int i2 = this.Gm;
            if (i == (-i2)) {
                ValueAnimator ofInt = ValueAnimator.ofInt(-i2, 0);
                ofInt.setDuration(300L);
                ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.common.WAv.2
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public void onAnimationUpdate(ValueAnimator valueAnimator) {
                        marginLayoutParams.topMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                        WAv.this.fl.setLayoutParams(marginLayoutParams);
                    }
                });
                ofInt.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.common.WAv.3
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        WAv.this.zc = true;
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        WAv.this.zc = false;
                    }
                });
                ofInt.start();
            }
        } catch (Throwable unused) {
        }
    }

    public void cJ() {
        try {
            final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.fl.getLayoutParams();
            if (this.zc || marginLayoutParams.topMargin != 0) {
                return;
            }
            ValueAnimator ofInt = ValueAnimator.ofInt(0, -this.Gm);
            ofInt.setDuration(300L);
            ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.bytedance.sdk.openadsdk.common.WAv.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    marginLayoutParams.topMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                    WAv.this.fl.setLayoutParams(marginLayoutParams);
                }
            });
            ofInt.addListener(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.common.WAv.5
                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animator) {
                    WAv.this.zc = true;
                }

                @Override // android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    WAv.this.zc = false;
                }
            });
            ofInt.start();
        } catch (Throwable unused) {
        }
    }

    public ImageView ac() {
        return this.Sf;
    }

    protected void CJ() {
        if (this.CJ.get()) {
            ROR();
            return;
        }
        if (this.Qhi == null) {
            Tgh();
        }
        TTAdDislikeDialog tTAdDislikeDialog = this.Qhi;
        if (tTAdDislikeDialog != null) {
            tTAdDislikeDialog.Qhi();
        }
    }

    private void Tgh() {
        try {
            if (this.Qhi == null) {
                TTAdDislikeDialog tTAdDislikeDialog = new TTAdDislikeDialog(this.ROR, this.Tgh);
                this.Qhi = tTAdDislikeDialog;
                tTAdDislikeDialog.setDislikeSource("landing_page");
                this.Qhi.setCallback(new TTAdDislikeDialog.Qhi() { // from class: com.bytedance.sdk.openadsdk.common.WAv.6
                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.Qhi
                    public void Qhi(View view) {
                        WAv.this.ac.set(true);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.Qhi
                    public void cJ(View view) {
                        WAv.this.ac.set(false);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.Qhi
                    public void Qhi(int i, FilterWord filterWord) {
                        if (WAv.this.CJ.get() || filterWord == null || filterWord.hasSecondOptions()) {
                            return;
                        }
                        WAv.this.CJ.set(true);
                    }
                });
            }
            FrameLayout frameLayout = (FrameLayout) this.fl.getRootView().findViewById(16908290);
            frameLayout.addView(this.Qhi);
            if (this.cJ == null) {
                TTAdDislikeToast tTAdDislikeToast = new TTAdDislikeToast(this.ROR);
                this.cJ = tTAdDislikeToast;
                frameLayout.addView(tTAdDislikeToast);
            }
        } catch (Throwable th) {
            ApmHelper.reportCustomError("initDislike error", "TTTitleNewStyleManager", th);
        }
    }

    private void ROR() {
        this.cJ.Qhi(TTAdDislikeToast.getDislikeTip());
    }
}
