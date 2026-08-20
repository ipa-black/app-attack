package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.AnimationDrawable;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.fl;
import com.bytedance.sdk.component.utils.MQ;
/* loaded from: classes2.dex */
public class SlideUp3DView extends FrameLayout {
    private TextView CJ;
    private Context Qhi;
    private TextView ac;
    private ImageView cJ;
    private AnimationDrawable fl;

    public SlideUp3DView(Context context) {
        super(context);
        this.Qhi = context;
        Qhi();
    }

    public void Qhi() {
        this.cJ = new ImageView(this.Qhi);
        this.CJ = new TextView(this.Qhi);
        this.ac = new TextView(this.Qhi);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams((int) CQU.Qhi(this.Qhi, 200.0f), (int) CQU.Qhi(this.Qhi, 200.0f));
        layoutParams.gravity = 49;
        layoutParams.bottomMargin = (int) CQU.Qhi(this.Qhi, 70.0f);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 81;
        layoutParams2.bottomMargin = (int) CQU.Qhi(this.Qhi, 25.0f);
        this.CJ.setText(MQ.cJ(this.Qhi, "tt_slide_up_3d"));
        this.CJ.setTextColor(-1);
        this.CJ.setTextSize(24.0f);
        this.CJ.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#59000000"));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 81;
        this.ac.setShadowLayer(4.0f, 3.0f, 3.0f, Color.parseColor("#59000000"));
        this.ac.setTextColor(-1);
        this.ac.setTextSize(14.0f);
        addView(this.cJ, layoutParams);
        if (!fl.cJ()) {
            addView(this.CJ, layoutParams2);
        }
        addView(this.ac, layoutParams3);
    }

    public void setGuideText(String str) {
        this.ac.setText(str);
    }

    private void CJ() {
        this.fl = new AnimationDrawable();
        Qhi(100, "tt_slide_up_1");
        Qhi(100, "tt_slide_up_2");
        Qhi(100, "tt_slide_up_4");
        Qhi(100, "tt_slide_up_5");
        Qhi(100, "tt_slide_up_7");
        Qhi(100, "tt_slide_up_8");
        Qhi(100, "tt_slide_up_10");
        Qhi(120, "tt_slide_up_11");
        Qhi(120, "tt_slide_up_12");
        Qhi(120, "tt_slide_up_15");
        this.fl.setOneShot(false);
    }

    private void Qhi(int i, String str) {
        this.fl.addFrame(MQ.ac(this.Qhi, str), i);
    }

    public void cJ() {
        if (this.fl == null) {
            CJ();
        }
        this.cJ.setImageDrawable(this.fl);
        this.fl.start();
    }

    public void ac() {
        AnimationDrawable animationDrawable = this.fl;
        if (animationDrawable != null) {
            animationDrawable.stop();
            this.fl = null;
        }
    }
}
