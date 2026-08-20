package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.dynamic.CJ.ABk;
import com.bytedance.sdk.component.utils.MQ;
/* loaded from: classes2.dex */
public class TTRatingBar2 extends FrameLayout {
    private float CJ;
    LinearLayout Qhi;
    private double ROR;
    private float Sf;
    private Drawable Tgh;
    private float ac;
    LinearLayout cJ;
    private Drawable fl;
    private static final int hm = (ABk.cJ("", 0.0f, true)[1] / 2) + 1;
    private static final int WAv = (ABk.cJ("", 0.0f, true)[1] / 2) + 3;

    public TTRatingBar2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.Qhi = new LinearLayout(getContext());
        this.cJ = new LinearLayout(getContext());
        this.Qhi.setOrientation(0);
        this.Qhi.setGravity(GravityCompat.START);
        this.cJ.setOrientation(0);
        this.cJ.setGravity(GravityCompat.START);
        this.fl = MQ.ac(context, "tt_star_thick");
        this.Tgh = MQ.ac(context, "tt_star");
    }

    public Drawable getStarEmptyDrawable() {
        return this.fl;
    }

    public Drawable getStarFillDrawable() {
        return this.Tgh;
    }

    public void Qhi(double d2, int i, int i2, int i3) {
        float f2 = i2;
        this.ac = (int) CQU.ac(getContext(), f2);
        this.CJ = (int) CQU.ac(getContext(), f2);
        this.ROR = d2;
        this.Sf = i3;
        removeAllViews();
        for (int i4 = 0; i4 < 5; i4++) {
            ImageView starImageView = getStarImageView();
            starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView.setColorFilter(i, PorterDuff.Mode.SRC_IN);
            starImageView.setImageDrawable(getStarFillDrawable());
            this.cJ.addView(starImageView);
        }
        for (int i5 = 0; i5 < 5; i5++) {
            ImageView starImageView2 = getStarImageView();
            starImageView2.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView2.setImageDrawable(getStarEmptyDrawable());
            this.Qhi.addView(starImageView2);
        }
        addView(this.Qhi);
        addView(this.cJ);
        requestLayout();
    }

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        imageView.setLayoutParams(new ViewGroup.LayoutParams((int) this.ac, (int) this.CJ));
        imageView.setPadding(1, hm, 1, WAv);
        return imageView;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.Qhi.measure(i, i2);
        double d2 = this.ROR;
        float f2 = this.ac;
        this.cJ.measure(View.MeasureSpec.makeMeasureSpec((int) ((((int) d2) * f2) + 1.0f + ((f2 - 2.0f) * (d2 - ((int) d2)))), 1073741824), View.MeasureSpec.makeMeasureSpec(this.Qhi.getMeasuredHeight(), 1073741824));
        if (this.Sf > 0.0f) {
            LinearLayout linearLayout = this.Qhi;
            linearLayout.setPadding(0, ((int) (linearLayout.getMeasuredHeight() - this.Sf)) / 2, 0, 0);
            this.cJ.setPadding(0, ((int) (this.Qhi.getMeasuredHeight() - this.Sf)) / 2, 0, 0);
        }
    }
}
