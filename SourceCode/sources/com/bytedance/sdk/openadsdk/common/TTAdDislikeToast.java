package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.google.android.exoplayer2.ExoPlayer;
/* loaded from: classes2.dex */
public class TTAdDislikeToast extends PAGFrameLayout {
    private static String CJ;
    private static String ac;
    private static String fl;
    private final Handler Qhi;
    private TextView cJ;

    public TTAdDislikeToast(Context context) {
        this(context, null);
    }

    public TTAdDislikeToast(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTAdDislikeToast(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Qhi = new Handler(Looper.getMainLooper());
        setVisibility(8);
        setClickable(false);
        setFocusable(false);
        Qhi(context);
    }

    public static String getDislikeTip() {
        if (ac == null) {
            ac = MQ.Qhi(HzH.Qhi(), "tt_feedback_submit_text");
        }
        return ac;
    }

    public static String getSkipText() {
        if (CJ == null) {
            CJ = MQ.Qhi(HzH.Qhi(), "tt_reward_screen_skip_tx");
        }
        return CJ;
    }

    public static String getDislikeSendTip() {
        if (fl == null) {
            Context Qhi = HzH.Qhi();
            fl = MQ.Qhi(Qhi, "tt_feedback_thank_text") + "\n" + MQ.Qhi(Qhi, "tt_feedback_experience_text");
        }
        return fl;
    }

    public static void Qhi() {
        Context Qhi = HzH.Qhi();
        CJ = MQ.Qhi(Qhi, "tt_reward_screen_skip_tx");
        ac = MQ.Qhi(Qhi, "tt_feedback_submit_text");
        fl = MQ.Qhi(Qhi, "tt_feedback_thank_text") + "\n" + MQ.Qhi(Qhi, "tt_feedback_experience_text");
    }

    private void Qhi(Context context) {
        TextView textView = new TextView(context);
        this.cJ = textView;
        textView.setClickable(false);
        this.cJ.setFocusable(false);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        int cJ = zn.cJ(HzH.Qhi(), 20.0f);
        int cJ2 = zn.cJ(HzH.Qhi(), 12.0f);
        this.cJ.setPadding(cJ, cJ2, cJ, cJ2);
        this.cJ.setLayoutParams(layoutParams);
        this.cJ.setTextColor(-1);
        this.cJ.setTextSize(16.0f);
        this.cJ.setGravity(17);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(Color.parseColor("#CC000000"));
        gradientDrawable.setCornerRadius(zn.cJ(HzH.Qhi(), 6.0f));
        this.cJ.setBackgroundDrawable(gradientDrawable);
        addView(this.cJ);
    }

    public void Qhi(final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.Qhi.removeCallbacksAndMessages(null);
        this.Qhi.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.TTAdDislikeToast.1
            @Override // java.lang.Runnable
            public void run() {
                if (TTAdDislikeToast.this.cJ != null) {
                    TTAdDislikeToast.this.cJ.setText(String.valueOf(str));
                }
                TTAdDislikeToast.this.setVisibility(0);
            }
        });
        this.Qhi.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.TTAdDislikeToast.2
            @Override // java.lang.Runnable
            public void run() {
                TTAdDislikeToast.this.setVisibility(8);
            }
        }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    public void cJ() {
        setVisibility(8);
        this.Qhi.removeCallbacksAndMessages(null);
    }

    public void ac() {
        setVisibility(8);
        this.Qhi.removeCallbacksAndMessages(null);
    }
}
