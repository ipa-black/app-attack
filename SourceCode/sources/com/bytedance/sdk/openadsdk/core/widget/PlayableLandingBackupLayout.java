package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.hm;
import com.bytedance.sdk.openadsdk.utils.iMK;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.google.android.material.badge.BadgeDrawable;
/* loaded from: classes2.dex */
public class PlayableLandingBackupLayout extends FrameLayout {
    private TTRatingBar2 CJ;
    private boolean Qhi;
    private PAGTextView ROR;
    private tP Sf;
    private PAGLogoView Tgh;
    private com.bytedance.sdk.openadsdk.core.cJ.Qhi WAv;
    private TextView ac;
    private TTRoundRectImageView cJ;
    private TextView fl;
    private String hm;

    public PlayableLandingBackupLayout(Context context) {
        super(context);
        setVisibility(8);
        setId(iMK.rB);
    }

    public void Qhi(tP tPVar, String str, com.bytedance.sdk.openadsdk.core.cJ.Qhi qhi) {
        this.Sf = tPVar;
        this.hm = str;
        this.WAv = qhi;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 0) {
            Qhi();
        }
    }

    private void Qhi() {
        if (this.Qhi) {
            return;
        }
        this.Qhi = true;
        cJ();
        this.fl.setOnClickListener(this.WAv);
        this.fl.setOnTouchListener(this.WAv);
        String ots = this.Sf.ots();
        if (!TextUtils.isEmpty(ots)) {
            this.fl.setText(ots);
        }
        if (this.cJ != null && this.Sf.dIT() != null && !TextUtils.isEmpty(this.Sf.dIT().Qhi())) {
            com.bytedance.sdk.openadsdk.iMK.ac.Qhi().Qhi(this.Sf.dIT(), this.cJ, this.Sf);
        }
        TTRatingBar2 tTRatingBar2 = this.CJ;
        if (tTRatingBar2 != null) {
            zn.Qhi((TextView) null, tTRatingBar2, this.Sf);
            if (this.Sf.pv() != null) {
                this.CJ.setVisibility(0);
            }
        }
        if (this.ac != null) {
            if (this.Sf.pv() != null && !TextUtils.isEmpty(this.Sf.pv().cJ())) {
                this.ac.setText(this.Sf.pv().cJ());
            } else if (!TextUtils.isEmpty(this.Sf.PAe())) {
                this.ac.setText(this.Sf.PAe());
            } else {
                this.ac.setVisibility(8);
            }
        }
        if (this.ROR != null) {
            String dVA = this.Sf.dVA();
            if (!TextUtils.isEmpty(dVA)) {
                this.ROR.setText(dVA);
            } else {
                this.ROR.setVisibility(8);
            }
        }
        this.Tgh.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.PlayableLandingBackupLayout.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    TTWebsiteActivity.Qhi(PlayableLandingBackupLayout.this.getContext(), PlayableLandingBackupLayout.this.Sf, PlayableLandingBackupLayout.this.hm);
                } catch (Throwable unused) {
                }
            }
        });
    }

    private void cJ() {
        FrameLayout.LayoutParams layoutParams;
        Context context = getContext();
        boolean z = this.Sf.SL() == 1;
        setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setGravity(1);
        pAGLinearLayout.setOrientation(1);
        if (z) {
            layoutParams = new FrameLayout.LayoutParams(-1, -2);
        } else {
            layoutParams = new FrameLayout.LayoutParams(zn.cJ(context, 327.0f), -2);
        }
        layoutParams.gravity = 17;
        int cJ = zn.cJ(context, 24.0f);
        layoutParams.rightMargin = cJ;
        layoutParams.leftMargin = cJ;
        addView(pAGLinearLayout, layoutParams);
        TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(context);
        this.cJ = tTRoundRectImageView;
        tTRoundRectImageView.setBackgroundColor(0);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(zn.cJ(context, 80.0f), zn.cJ(context, 80.0f));
        layoutParams2.bottomMargin = zn.cJ(context, 12.0f);
        pAGLinearLayout.addView(this.cJ, layoutParams2);
        PAGTextView pAGTextView = new PAGTextView(context);
        this.ac = pAGTextView;
        pAGTextView.setEllipsize(TextUtils.TruncateAt.END);
        this.ac.setGravity(17);
        this.ac.setMaxLines(2);
        this.ac.setMaxWidth(zn.cJ(context, 180.0f));
        this.ac.setTextColor(-1);
        this.ac.setTextSize(2, 24.0f);
        pAGLinearLayout.addView(this.ac, new LinearLayout.LayoutParams(-1, -2));
        PAGTextView pAGTextView2 = new PAGTextView(context);
        this.ROR = pAGTextView2;
        pAGTextView2.setEllipsize(TextUtils.TruncateAt.END);
        this.ROR.setGravity(17);
        this.ROR.setMaxLines(2);
        this.ROR.setTextColor(Color.parseColor("#BFFFFFFF"));
        this.ROR.setTextSize(2, 16.0f);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams3.topMargin = zn.cJ(context, 8.0f);
        pAGLinearLayout.addView(this.ROR, layoutParams3);
        this.CJ = new TTRatingBar2(context, true);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, zn.cJ(context, 16.0f));
        layoutParams4.topMargin = zn.cJ(context, 12.0f);
        this.CJ.setVisibility(8);
        pAGLinearLayout.addView(this.CJ, layoutParams4);
        PAGTextView pAGTextView3 = new PAGTextView(context);
        this.fl = pAGTextView3;
        pAGTextView3.setId(520093707);
        this.fl.setGravity(17);
        this.fl.setText(MQ.cJ(context, "tt_video_download_apk"));
        this.fl.setTextColor(-1);
        this.fl.setTextSize(2, 16.0f);
        this.fl.setBackground(hm.Qhi(context, "tt_reward_full_video_backup_btn_bg"));
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, zn.cJ(context, 44.0f));
        layoutParams5.topMargin = zn.cJ(context, 54.0f);
        pAGLinearLayout.addView(this.fl, layoutParams5);
        this.Tgh = new PAGLogoView(context);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, zn.cJ(context, 14.0f));
        layoutParams6.gravity = BadgeDrawable.BOTTOM_START;
        layoutParams6.leftMargin = zn.cJ(context, 18.0f);
        if (z) {
            layoutParams6.bottomMargin = zn.cJ(context, 61.0f);
        } else {
            layoutParams6.bottomMargin = zn.cJ(context, 24.0f);
        }
        addView(this.Tgh, layoutParams6);
    }
}
