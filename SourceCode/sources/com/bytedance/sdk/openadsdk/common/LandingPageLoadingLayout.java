package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.model.hpZ;
import com.bytedance.sdk.openadsdk.core.model.kYc;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.pM;
import com.bytedance.sdk.openadsdk.utils.zn;
/* loaded from: classes2.dex */
public class LandingPageLoadingLayout extends PAGFrameLayout {
    private Runnable CJ;
    protected Tgh Qhi;
    private int ROR;
    private PAGImageView Tgh;
    private long ac;
    private int cJ;
    private Runnable fl;

    public LandingPageLoadingLayout(Context context) {
        super(context);
        this.ac = 10L;
        this.ROR = 1;
        ac();
    }

    private void ac() {
        setBackgroundColor(Color.parseColor("#2E2E2E"));
        setVisibility(8);
    }

    public void Qhi(final tP tPVar) {
        kYc hm;
        if (tPVar != null && (hm = tPVar.hm()) != null) {
            this.ac = hm.Qhi();
        }
        Tgh tgh = new Tgh(getContext());
        this.Qhi = tgh;
        View Qhi = tgh.Qhi();
        if (Qhi.getParent() instanceof ViewGroup) {
            ((ViewGroup) Qhi.getParent()).removeView(Qhi);
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        Qhi.setLayoutParams(layoutParams);
        if (tPVar != null) {
            boolean jPH = tPVar.jPH();
            TTRoundRectImageView cJ = this.Qhi.cJ();
            if (cJ != null) {
                if (jPH) {
                    cJ.setVisibility(8);
                } else {
                    hpZ dIT = (tPVar.dIT() == null || TextUtils.isEmpty(tPVar.dIT().Qhi())) ? null : tPVar.dIT();
                    if (dIT != null && !TextUtils.isEmpty(dIT.Qhi())) {
                        try {
                            com.bytedance.sdk.openadsdk.ROR.fl.Qhi(dIT).Qhi(new com.bytedance.sdk.openadsdk.ROR.cJ(tPVar, dIT.Qhi(), new pM(cJ)));
                        } catch (Throwable unused) {
                        }
                    }
                    cJ.setVisibility(8);
                }
            }
            PAGTextView ac = this.Qhi.ac();
            if (ac != null) {
                if (jPH) {
                    ac.setText("Loading");
                } else if (!TextUtils.isEmpty(tPVar.dVA())) {
                    ac.setText(tPVar.dVA());
                } else {
                    ac.setVisibility(8);
                }
            }
        }
        addView(Qhi);
        PAGImageView pAGImageView = new PAGImageView(getContext());
        this.Tgh = pAGImageView;
        pAGImageView.setImageDrawable(MQ.ac(getContext(), "tt_ad_logo_big"));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(zn.cJ(getContext(), 64.0f), zn.cJ(getContext(), 24.0f));
        layoutParams2.bottomMargin = zn.cJ(getContext(), 60.0f);
        layoutParams2.gravity = 81;
        this.Tgh.setLayoutParams(layoutParams2);
        addView(this.Tgh);
        this.Tgh.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.LandingPageLoadingLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Context context = LandingPageLoadingLayout.this.getContext();
                tP tPVar2 = tPVar;
                TTWebsiteActivity.Qhi(context, tPVar2, js.Qhi(tPVar2));
            }
        });
        ac(getResources().getConfiguration().orientation);
    }

    public void Qhi() {
        post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.LandingPageLoadingLayout.2
            @Override // java.lang.Runnable
            public void run() {
                if (LandingPageLoadingLayout.this.Qhi != null) {
                    LandingPageLoadingLayout.this.setVisibility(0);
                }
            }
        });
        if (this.CJ == null) {
            this.CJ = new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.LandingPageLoadingLayout.3
                @Override // java.lang.Runnable
                public void run() {
                    LandingPageLoadingLayout.this.cJ();
                }
            };
        }
        postDelayed(this.CJ, this.ac * 1000);
    }

    public void Qhi(int i) {
        if (i == 100 || Math.abs(i - this.cJ) >= 7) {
            this.cJ = i;
            if (com.bykv.vk.openvk.component.video.Qhi.ac.Qhi.cJ()) {
                cJ(this.cJ);
                return;
            }
            if (this.fl == null) {
                this.fl = new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.LandingPageLoadingLayout.4
                    @Override // java.lang.Runnable
                    public void run() {
                        LandingPageLoadingLayout landingPageLoadingLayout = LandingPageLoadingLayout.this;
                        landingPageLoadingLayout.cJ(landingPageLoadingLayout.cJ);
                    }
                };
            }
            post(this.fl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(int i) {
        Tgh tgh = this.Qhi;
        if (tgh != null) {
            tgh.Qhi(i);
        }
        if (i == 100) {
            cJ();
        }
    }

    public void cJ() {
        this.cJ = 0;
        Tgh tgh = this.Qhi;
        if (tgh != null) {
            removeView(tgh.Qhi);
            this.Qhi.CJ();
        }
        setVisibility(8);
        this.Qhi = null;
        Runnable runnable = this.CJ;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
        Runnable runnable2 = this.fl;
        if (runnable2 != null) {
            removeCallbacks(runnable2);
        }
        this.fl = null;
        this.CJ = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Runnable runnable = this.CJ;
        if (runnable != null) {
            removeCallbacks(runnable);
            this.CJ = null;
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ac(configuration.orientation);
    }

    private void ac(int i) {
        if (this.ROR != i) {
            this.ROR = i;
            PAGImageView pAGImageView = this.Tgh;
            if (pAGImageView != null) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) pAGImageView.getLayoutParams();
                if (this.ROR == 1) {
                    marginLayoutParams.width = zn.cJ(getContext(), 64.0f);
                    marginLayoutParams.height = zn.cJ(getContext(), 24.0f);
                    marginLayoutParams.bottomMargin = zn.cJ(getContext(), 60.0f);
                } else {
                    marginLayoutParams.width = zn.cJ(getContext(), 41.0f);
                    marginLayoutParams.height = zn.cJ(getContext(), 15.0f);
                    marginLayoutParams.bottomMargin = zn.cJ(getContext(), 24.0f);
                }
                this.Tgh.setLayoutParams(marginLayoutParams);
            }
        }
    }
}
