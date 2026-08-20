package com.bytedance.sdk.openadsdk.component.view;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.adexpress.CJ.tP;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.widget.DSPAdChoice;
import com.bytedance.sdk.openadsdk.core.widget.PAGLogoView;
import com.bytedance.sdk.openadsdk.core.widget.TTRatingBar2;
import com.bytedance.sdk.openadsdk.core.widget.TTRoundRectImageView;
import com.bytedance.sdk.openadsdk.utils.hm;
import com.bytedance.sdk.openadsdk.utils.zn;
/* loaded from: classes2.dex */
public class PAGAppOpenDefaultNativeLayout extends PAGAppOpenBaseLayout {
    private final PAGFrameLayout ABk;
    private final PAGLinearLayout HzH;
    private final PAGImageView hpZ;
    private final TTRatingBar2 iMK;
    private final PAGTextView pA;

    public PAGAppOpenDefaultNativeLayout(Context context) {
        super(context);
        setId(520093753);
        setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        setBackgroundColor(0);
        int cJ = zn.cJ(context, 8.0f);
        int cJ2 = zn.cJ(context, 9.0f);
        int cJ3 = zn.cJ(context, 10.0f);
        int cJ4 = zn.cJ(context, 40.0f);
        this.zc = new DSPAdChoice(context);
        this.zc.setPadding(cJ2, 0, cJ2, 0);
        this.zc.setScaleType(ImageView.ScaleType.FIT_CENTER);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(zn.cJ(context, 32.0f), zn.cJ(context, 14.0f));
        layoutParams.addRule(12);
        layoutParams.addRule(11);
        layoutParams.setMargins(0, 0, cJ3, cJ3);
        this.zc.setLayoutParams(layoutParams);
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(context);
        this.ABk = pAGFrameLayout;
        pAGFrameLayout.setBackgroundColor(-1);
        pAGFrameLayout.setId(520093758);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, zn.cJ(context, 107.0f));
        layoutParams2.addRule(12);
        pAGFrameLayout.setLayoutParams(layoutParams2);
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(context);
        pAGLinearLayout.setOrientation(0);
        pAGLinearLayout.setGravity(16);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 17;
        pAGLinearLayout.setLayoutParams(layoutParams3);
        pAGFrameLayout.addView(pAGLinearLayout);
        this.Tgh = new TTRoundRectImageView(context);
        this.Tgh.setId(520093759);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(cJ4, cJ4);
        layoutParams4.rightMargin = cJ;
        layoutParams4.setMarginEnd(cJ);
        this.Tgh.setLayoutParams(layoutParams4);
        this.ROR = new PAGTextView(context);
        this.ROR.setId(520093761);
        this.ROR.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        this.ROR.setEllipsize(TextUtils.TruncateAt.END);
        this.ROR.setMaxLines(2);
        this.ROR.setTextColor(Color.parseColor("#161823"));
        this.ROR.setTextSize(30.0f);
        pAGLinearLayout.addView(this.Tgh);
        pAGLinearLayout.addView(this.ROR);
        PAGFrameLayout pAGFrameLayout2 = new PAGFrameLayout(context);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams5.addRule(2, pAGFrameLayout.getId());
        layoutParams5.addRule(10);
        pAGFrameLayout2.setLayoutParams(layoutParams5);
        this.Qhi = new PAGImageView(context);
        this.Qhi.setId(520093754);
        this.Qhi.setScaleType(ImageView.ScaleType.CENTER_CROP);
        pAGFrameLayout2.addView(this.Qhi, new FrameLayout.LayoutParams(-1, -1));
        this.cJ = new PAGFrameLayout(context);
        this.cJ.setId(520093755);
        FrameLayout.LayoutParams layoutParams6 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams6.gravity = 17;
        pAGFrameLayout2.addView(this.cJ, layoutParams6);
        this.ac = new PAGImageView(context);
        this.ac.setId(520093756);
        pAGFrameLayout2.addView(this.ac, new FrameLayout.LayoutParams(-1, -1));
        this.fl = new PAGTextView(context);
        this.fl.setId(520093717);
        this.fl.setBackground(hm.Qhi(context, Color.parseColor("#b3000000"), 24));
        this.fl.setEllipsize(TextUtils.TruncateAt.END);
        this.fl.setGravity(17);
        this.fl.setSingleLine(true);
        this.fl.setText(MQ.cJ(context, "tt_video_download_apk"));
        this.fl.setTextColor(-1);
        this.fl.setTextSize(1, 16.0f);
        this.fl.setTag("open_ad_click_button_tag");
        FrameLayout.LayoutParams layoutParams7 = new FrameLayout.LayoutParams(zn.cJ(context, 236.0f), zn.cJ(context, 48.0f));
        layoutParams7.gravity = 81;
        layoutParams7.bottomMargin = zn.cJ(context, 32.0f);
        pAGFrameLayout2.addView(this.fl, layoutParams7);
        PAGLinearLayout pAGLinearLayout2 = new PAGLinearLayout(context);
        this.HzH = pAGLinearLayout2;
        pAGLinearLayout2.setOrientation(0);
        pAGLinearLayout2.setGravity(16);
        pAGLinearLayout2.setBackground(new Qhi(context));
        pAGLinearLayout2.setPadding(zn.cJ(context, 16.0f), zn.cJ(context, 8.0f), zn.cJ(context, 16.0f), zn.cJ(context, 8.0f));
        RelativeLayout.LayoutParams layoutParams8 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams8.addRule(10);
        layoutParams8.topMargin = zn.cJ(context, 90.0f);
        pAGLinearLayout2.setLayoutParams(layoutParams8);
        TTRoundRectImageView tTRoundRectImageView = new TTRoundRectImageView(context);
        this.hpZ = tTRoundRectImageView;
        pAGLinearLayout2.addView(tTRoundRectImageView, new LinearLayout.LayoutParams(zn.cJ(context, 36.0f), zn.cJ(context, 36.0f)));
        PAGLinearLayout pAGLinearLayout3 = new PAGLinearLayout(context);
        pAGLinearLayout3.setOrientation(1);
        LinearLayout.LayoutParams layoutParams9 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams9.leftMargin = zn.cJ(context, 8.0f);
        pAGLinearLayout2.addView(pAGLinearLayout3, layoutParams9);
        PAGTextView pAGTextView = new PAGTextView(context);
        this.pA = pAGTextView;
        pAGTextView.setTextColor(-1);
        pAGLinearLayout3.addView(pAGTextView, new LinearLayout.LayoutParams(-2, -2));
        TTRatingBar2 tTRatingBar2 = new TTRatingBar2(context, true);
        this.iMK = tTRatingBar2;
        pAGLinearLayout3.addView(tTRatingBar2, new LinearLayout.LayoutParams(-2, -2));
        this.CJ = new PAGLogoView(context);
        this.CJ.setId(520093757);
        FrameLayout.LayoutParams layoutParams10 = new FrameLayout.LayoutParams(-2, zn.cJ(context, 14.0f));
        layoutParams10.gravity = 83;
        pAGFrameLayout2.addView(this.CJ, layoutParams10);
        addView(pAGFrameLayout2);
        addView(this.zc);
        addView(pAGFrameLayout);
        addView(this.Sf);
        addView(pAGLinearLayout2);
    }

    @Override // com.bytedance.sdk.openadsdk.component.view.PAGAppOpenBaseLayout
    public View getUserInfo() {
        return this.ABk;
    }

    @Override // com.bytedance.sdk.openadsdk.component.view.PAGAppOpenBaseLayout
    public PAGTextView getAdTitleTextView() {
        return this.pA;
    }

    @Override // com.bytedance.sdk.openadsdk.component.view.PAGAppOpenBaseLayout
    public PAGImageView getAdIconView() {
        return this.hpZ;
    }

    @Override // com.bytedance.sdk.openadsdk.component.view.PAGAppOpenBaseLayout
    public TTRatingBar2 getScoreBar() {
        return this.iMK;
    }

    /* loaded from: classes2.dex */
    private static final class Qhi extends Drawable {
        private final boolean CJ;
        private static final int fl = Color.parseColor("#b0000000");
        private static final int Tgh = Color.parseColor("#40000000");
        private final RectF Qhi = new RectF();
        private final Paint cJ = new Paint();
        private final Path ac = new Path();

        @Override // android.graphics.drawable.Drawable
        public int getOpacity() {
            return -3;
        }

        @Override // android.graphics.drawable.Drawable
        public void setAlpha(int i) {
        }

        @Override // android.graphics.drawable.Drawable
        public void setColorFilter(ColorFilter colorFilter) {
        }

        public Qhi(Context context) {
            this.CJ = tP.Qhi(context);
        }

        @Override // android.graphics.drawable.Drawable
        protected void onBoundsChange(Rect rect) {
            float[] fArr;
            super.onBoundsChange(rect);
            this.Qhi.set(rect);
            this.ac.reset();
            int height = rect.height() / 2;
            Path path = this.ac;
            RectF rectF = this.Qhi;
            if (this.CJ) {
                float f2 = height;
                fArr = new float[]{f2, f2, 0.0f, 0.0f, 0.0f, 0.0f, f2, f2};
            } else {
                float f3 = height;
                fArr = new float[]{0.0f, 0.0f, f3, f3, f3, f3, 0.0f, 0.0f};
            }
            path.addRoundRect(rectF, fArr, Path.Direction.CW);
            float f4 = rect.right;
            boolean z = this.CJ;
            this.cJ.setShader(new LinearGradient(0.0f, 0.0f, f4, 0.0f, new int[]{z ? Tgh : fl, z ? fl : Tgh}, (float[]) null, Shader.TileMode.CLAMP));
        }

        @Override // android.graphics.drawable.Drawable
        public void draw(Canvas canvas) {
            canvas.drawPath(this.ac, this.cJ);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.component.view.PAGAppOpenBaseLayout
    public PAGLinearLayout getOverlayLayout() {
        return this.HzH;
    }
}
