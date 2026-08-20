package com.bytedance.sdk.openadsdk.component.reward.top;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.widget.PAGCloseButton;
import com.bytedance.sdk.openadsdk.utils.hm;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.google.android.material.badge.BadgeDrawable;
/* loaded from: classes2.dex */
public class TopLayoutDislike2 extends PAGLinearLayout implements Qhi<TopLayoutDislike2> {
    private boolean ABk;
    private TextView CJ;
    private boolean Gm;
    private View Qhi;
    private boolean ROR;
    private boolean Sf;
    private int Tgh;
    private boolean WAv;
    private ImageView ac;
    private ImageView cJ;
    private int fl;
    private cJ hm;
    private PAGImageView iMK;
    private CharSequence zc;

    public TopLayoutDislike2(Context context) {
        this(context, null);
    }

    public TopLayoutDislike2(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TopLayoutDislike2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.zc = "";
        setOrientation(0);
    }

    public void setShouldShowSkipTime(boolean z) {
        this.WAv = z;
    }

    public TopLayoutDislike2 Qhi(tP tPVar) {
        ROR();
        this.Qhi.setVisibility(0);
        ((ImageView) this.Qhi).setImageResource(MQ.CJ(HzH.Qhi(), "tt_reward_full_feedback"));
        this.cJ.setImageResource(MQ.CJ(HzH.Qhi(), "tt_skip_btn"));
        if (this.cJ.getDrawable() != null) {
            this.cJ.getDrawable().setAutoMirrored(true);
        }
        this.cJ.setVisibility(8);
        this.fl = tPVar.FQ() == null ? 0 : ((int) tPVar.FQ().Tgh()) * tPVar.FQ().EBS();
        if (com.bytedance.sdk.openadsdk.core.model.HzH.ac(tPVar) && tPVar.hm() != null) {
            this.fl = (int) tPVar.hm().cJ();
        } else if (com.bytedance.sdk.openadsdk.core.model.HzH.CJ(tPVar) && tPVar.hm() != null) {
            this.fl = (int) tPVar.hm().CJ();
        }
        if (this.fl <= 0) {
            this.fl = 10;
        }
        if (tPVar.sqa() == 8 && tPVar.lB() != null) {
            this.Tgh = HzH.CJ().tP(tPVar.lB().getCodeId());
        } else {
            this.Tgh = HzH.CJ().WAv(tPVar.lB().getCodeId());
        }
        if (bxS.Gm(tPVar)) {
            this.Tgh = HzH.CJ().Qhi(String.valueOf(tPVar.Hy()), tPVar.LpL());
            this.fl = tPVar.TKG();
        }
        int i = this.Tgh;
        this.WAv = i == -1 || i >= this.fl;
        if (tPVar.IC()) {
            this.Qhi.setVisibility(8);
            this.ROR = true;
        }
        this.CJ.setVisibility(4);
        this.CJ.setText("");
        this.CJ.setEnabled(false);
        this.CJ.setClickable(false);
        Sf();
        return this;
    }

    private ImageView getCommonRingBGImageView() {
        PAGImageView pAGImageView = new PAGImageView(getContext());
        int cJ = zn.cJ(getContext(), 5.0f);
        pAGImageView.setPadding(cJ, cJ, cJ, cJ);
        pAGImageView.setScaleType(ImageView.ScaleType.CENTER);
        pAGImageView.setBackground(com.bytedance.sdk.openadsdk.core.widget.cJ.Qhi());
        return pAGImageView;
    }

    private void ROR() {
        int cJ = zn.cJ(getContext(), 16.0f);
        int cJ2 = zn.cJ(getContext(), 20.0f);
        int cJ3 = zn.cJ(getContext(), 28.0f);
        this.ac = getCommonRingBGImageView();
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(cJ3, cJ3);
        layoutParams.leftMargin = cJ;
        layoutParams.topMargin = cJ2;
        this.ac.setLayoutParams(layoutParams);
        ImageView commonRingBGImageView = getCommonRingBGImageView();
        this.Qhi = commonRingBGImageView;
        commonRingBGImageView.setId(520093713);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(cJ3, cJ3);
        layoutParams2.topMargin = cJ2;
        layoutParams2.leftMargin = cJ;
        this.Qhi.setLayoutParams(layoutParams2);
        View view = new View(getContext());
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(0, 0);
        layoutParams3.weight = 1.0f;
        view.setLayoutParams(layoutParams3);
        PAGTextView pAGTextView = new PAGTextView(getContext());
        this.CJ = pAGTextView;
        pAGTextView.setBackground(com.bytedance.sdk.openadsdk.core.widget.cJ.cJ());
        this.CJ.setId(520093714);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, zn.cJ(getContext(), 28.0f));
        layoutParams4.topMargin = zn.cJ(getContext(), 20.0f);
        int cJ4 = zn.cJ(getContext(), 16.0f);
        layoutParams2.rightMargin = cJ4;
        layoutParams4.rightMargin = cJ4;
        int cJ5 = zn.cJ(getContext(), 12.0f);
        zn.cJ(getContext(), 5.0f);
        this.CJ.setPadding(cJ5, 0, cJ5, 0);
        this.CJ.setLayoutParams(layoutParams4);
        this.CJ.setGravity(17);
        this.CJ.setTextColor(-1);
        this.CJ.setTextSize(14.0f);
        this.CJ.setVisibility(8);
        this.cJ = getCommonRingBGImageView();
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(cJ3, cJ3);
        layoutParams5.topMargin = cJ2;
        layoutParams5.rightMargin = cJ;
        this.cJ.setLayoutParams(layoutParams5);
        this.cJ.setScaleType(ImageView.ScaleType.CENTER_CROP);
        PAGImageView cJ6 = PAGCloseButton.cJ(getContext());
        this.iMK = cJ6;
        cJ6.setId(520093708);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams6.gravity = BadgeDrawable.TOP_END;
        layoutParams6.topMargin = zn.cJ(getContext(), 20.0f);
        layoutParams6.rightMargin = zn.cJ(getContext(), 24.0f);
        this.iMK.setLayoutParams(layoutParams6);
        this.iMK.setContentDescription(MQ.Qhi(getContext(), "tt_ad_close_text"));
        this.iMK.setVisibility(8);
        addView(this.ac);
        addView(this.Qhi);
        addView(view);
        addView(this.CJ);
        addView(this.cJ);
        addView(this.iMK);
    }

    private void Sf() {
        View view = this.Qhi;
        if (view != null) {
            view.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.hm != null) {
                        TopLayoutDislike2.this.hm.ac(view2);
                    }
                }
            });
        }
        ImageView imageView = this.ac;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    Drawable Qhi;
                    TopLayoutDislike2 topLayoutDislike2 = TopLayoutDislike2.this;
                    topLayoutDislike2.Sf = !topLayoutDislike2.Sf;
                    if (TopLayoutDislike2.this.cJ != null) {
                        Qhi = TopLayoutDislike2.this.Sf ? MQ.ac(TopLayoutDislike2.this.getContext(), "tt_reward_full_mute") : MQ.ac(TopLayoutDislike2.this.getContext(), "tt_reward_full_unmute");
                    } else {
                        Qhi = TopLayoutDislike2.this.Sf ? hm.Qhi(TopLayoutDislike2.this.getContext(), "tt_mute_wrapper") : hm.Qhi(TopLayoutDislike2.this.getContext(), "tt_unmute_wrapper");
                    }
                    TopLayoutDislike2.this.ac.setImageDrawable(Qhi);
                    if (TopLayoutDislike2.this.ac.getDrawable() != null) {
                        TopLayoutDislike2.this.ac.getDrawable().setAutoMirrored(true);
                    }
                    if (TopLayoutDislike2.this.hm != null) {
                        TopLayoutDislike2.this.hm.cJ(view2);
                    }
                }
            });
        }
        ImageView imageView2 = this.cJ;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.hm != null) {
                        TopLayoutDislike2.this.hm.Qhi(view2);
                    }
                }
            });
        } else {
            TextView textView = this.CJ;
            if (textView != null) {
                textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view2) {
                        if (TopLayoutDislike2.this.hm != null) {
                            TopLayoutDislike2.this.hm.Qhi(view2);
                        }
                    }
                });
            }
        }
        PAGImageView pAGImageView = this.iMK;
        if (pAGImageView != null) {
            pAGImageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.top.TopLayoutDislike2.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view2) {
                    if (TopLayoutDislike2.this.hm != null) {
                        TopLayoutDislike2.this.hm.CJ(view2);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void setShowSkip(boolean z) {
        TextView textView = this.CJ;
        if (textView == null) {
            return;
        }
        if (!z) {
            textView.setText("");
        }
        if (this.cJ.getVisibility() == 4) {
            return;
        }
        this.Gm = !z;
        this.cJ.setVisibility((z && this.ABk) ? 0 : 8);
        this.CJ.setVisibility(z & (TextUtils.isEmpty(this.CJ.getText()) ^ true) ? 0 : 8);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void setSkipEnable(boolean z) {
        ImageView imageView = this.cJ;
        if (imageView != null) {
            imageView.setEnabled(z);
            this.cJ.setClickable(z);
            return;
        }
        TextView textView = this.CJ;
        if (textView != null) {
            textView.setEnabled(z);
            this.CJ.setClickable(z);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void setShowSound(boolean z) {
        ImageView imageView = this.ac;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void setSoundMute(boolean z) {
        Drawable Qhi;
        this.Sf = z;
        if (this.cJ != null) {
            if (z) {
                Qhi = MQ.ac(getContext(), "tt_reward_full_mute");
            } else {
                Qhi = MQ.ac(getContext(), "tt_reward_full_unmute");
            }
        } else if (z) {
            Qhi = hm.Qhi(getContext(), "tt_mute_wrapper");
        } else {
            Qhi = hm.Qhi(getContext(), "tt_unmute_wrapper");
        }
        this.ac.setImageDrawable(Qhi);
        if (this.ac.getDrawable() != null) {
            this.ac.getDrawable().setAutoMirrored(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void Qhi(CharSequence charSequence, CharSequence charSequence2) {
        int parseInt;
        if (!TextUtils.isEmpty(charSequence)) {
            this.zc = charSequence;
        }
        if (this.cJ == null) {
            return;
        }
        this.ABk = true;
        if (this.WAv) {
            this.CJ.setText(((Object) this.zc) + "s");
            Qhi(false);
            return;
        }
        String str = (String) this.zc;
        try {
            int i = this.Tgh;
            if (i == 0) {
                parseInt = Integer.parseInt(str);
            } else {
                parseInt = i - (this.fl - Integer.parseInt(str));
            }
            if (parseInt > 0) {
                if (this.Tgh == 0) {
                    Qhi(false);
                    return;
                }
                this.CJ.setText(parseInt + "s");
                Qhi(true);
                return;
            }
            this.CJ.setText(((Object) this.zc) + "s");
            Qhi(false);
        } catch (Exception unused) {
        }
    }

    private void Qhi(boolean z) {
        if (this.Gm) {
            return;
        }
        if (this.WAv) {
            this.cJ.setVisibility(8);
            this.CJ.setVisibility(0);
        } else if (z) {
            this.CJ.setVisibility(0);
            this.cJ.setVisibility(8);
        } else {
            this.CJ.setVisibility(8);
            this.cJ.setVisibility(0);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void setSkipText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        this.CJ.setText(charSequence);
        if (this.CJ.getVisibility() != 0) {
            this.CJ.setVisibility(0);
        }
        ImageView imageView = this.cJ;
        if (imageView != null) {
            imageView.setVisibility(8);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void setShowDislike(boolean z) {
        View view = this.Qhi;
        if (view == null || this.ROR) {
            return;
        }
        view.setVisibility(z ? 0 : 8);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void setListener(cJ cJVar) {
        this.hm = cJVar;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void Qhi() {
        ImageView imageView = this.cJ;
        if (imageView != null) {
            imageView.performClick();
        }
        TextView textView = this.CJ;
        if (textView != null) {
            textView.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void cJ() {
        ImageView imageView = this.ac;
        if (imageView != null) {
            imageView.performClick();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void CJ() {
        this.CJ.setVisibility(0);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void fl() {
        ImageView imageView = this.cJ;
        if (imageView != null) {
            imageView.setVisibility(0);
        }
        this.CJ.setVisibility(8);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void Tgh() {
        ac();
        this.cJ.setVisibility(8);
        this.iMK.setVisibility(0);
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public View getCloseButton() {
        return this.iMK;
    }

    @Override // com.bytedance.sdk.openadsdk.component.reward.top.Qhi
    public void ac() {
        this.CJ.setWidth(20);
        this.CJ.setVisibility(4);
        this.cJ.setVisibility(4);
        this.Gm = true;
    }
}
