package com.bytedance.sdk.component.adexpress.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.text.TextUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import android.widget.TextView;
import com.bytedance.sdk.component.adexpress.ac.Qhi;
import com.google.android.exoplayer2.ExoPlayer;
/* loaded from: classes2.dex */
public class ClickSlideUpView2 extends SlideUpView {
    private ImageView CJ;
    private TextView Qhi;
    private AnimatorSet Tgh;
    private ImageView ac;
    private ImageView cJ;
    private int fl;

    @Override // com.bytedance.sdk.component.adexpress.widget.SlideUpView
    protected void Qhi(Context context) {
    }

    public ClickSlideUpView2(Context context) {
        super(context);
        this.Tgh = new AnimatorSet();
        cJ(context);
    }

    private void cJ(Context context) {
        addView(Qhi.cJ(context));
        this.cJ = (ImageView) findViewById(2097610751);
        this.ac = (ImageView) findViewById(2097610750);
        this.CJ = (ImageView) findViewById(2097610749);
        this.Qhi = (TextView) findViewById(2097610748);
    }

    public void setButtonText(String str) {
        if (this.Qhi == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.Qhi.setText(str);
    }

    private void CJ() {
        ObjectAnimator ofInt = ObjectAnimator.ofInt(this, "alphaColor", 0, 60);
        ofInt.setInterpolator(new LinearInterpolator());
        ofInt.setDuration(ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        ofInt.setRepeatCount(-1);
        ofInt.start();
    }

    public float getAlphaColor() {
        return this.fl;
    }

    public void setAlphaColor(int i) {
        if (i < 0 || i > 60) {
            return;
        }
        int i2 = i + 195;
        this.CJ.setColorFilter(Color.rgb(i2, i2, i2), PorterDuff.Mode.SRC_IN);
        int i3 = ((i + 20) % 60) + 195;
        this.ac.setColorFilter(Color.rgb(i3, i3, i3), PorterDuff.Mode.SRC_IN);
        int i4 = ((i + 40) % 60) + 195;
        this.cJ.setColorFilter(Color.rgb(i4, i4, i4), PorterDuff.Mode.SRC_IN);
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.SlideUpView
    public void Qhi() {
        CJ();
    }

    @Override // com.bytedance.sdk.component.adexpress.widget.SlideUpView
    public void cJ() {
        this.Tgh.cancel();
    }
}
