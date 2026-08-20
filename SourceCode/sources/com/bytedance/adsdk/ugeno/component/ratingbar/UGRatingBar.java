package com.bytedance.adsdk.ugeno.component.ratingbar;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.view.GravityCompat;
import com.bytedance.adsdk.ugeno.ac;
import com.bytedance.adsdk.ugeno.cJ.fl;
import com.bytedance.adsdk.ugeno.cJ.hm;
/* loaded from: classes2.dex */
public class UGRatingBar extends FrameLayout {
    private Drawable CJ;
    private float Qhi;
    private LinearLayout ROR;
    private LinearLayout Sf;
    private float Tgh;
    private ac WAv;
    private Drawable ac;
    private float cJ;
    private double fl;
    private Context hm;

    public UGRatingBar(Context context) {
        super(context);
        this.hm = context;
        this.ROR = new LinearLayout(context);
        this.Sf = new LinearLayout(context);
        this.ROR.setOrientation(0);
        this.ROR.setGravity(GravityCompat.START);
        this.Sf.setOrientation(0);
        this.Sf.setGravity(GravityCompat.START);
        this.ac = fl.Qhi(context, "tt_star_thick");
        this.CJ = fl.Qhi(context, "tt_star");
    }

    public Drawable getStarEmptyDrawable() {
        return this.ac;
    }

    public Drawable getStarFillDrawable() {
        return this.CJ;
    }

    public void Qhi(double d2, int i, int i2, int i3) {
        removeAllViews();
        this.ROR.removeAllViews();
        this.Sf.removeAllViews();
        float f2 = i2;
        this.Qhi = (int) hm.Qhi(this.hm, f2);
        this.cJ = (int) hm.Qhi(this.hm, f2);
        this.fl = d2;
        this.Tgh = i3;
        for (int i4 = 0; i4 < 5; i4++) {
            ImageView starImageView = getStarImageView();
            starImageView.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView.setColorFilter(i, PorterDuff.Mode.SRC_IN);
            starImageView.setImageDrawable(getStarFillDrawable());
            this.Sf.addView(starImageView);
        }
        for (int i5 = 0; i5 < 5; i5++) {
            ImageView starImageView2 = getStarImageView();
            starImageView2.setScaleType(ImageView.ScaleType.FIT_XY);
            starImageView2.setImageDrawable(getStarEmptyDrawable());
            this.ROR.addView(starImageView2);
        }
        addView(this.ROR);
        addView(this.Sf);
        requestLayout();
    }

    private ImageView getStarImageView() {
        ImageView imageView = new ImageView(getContext());
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams((int) this.Qhi, (int) this.cJ);
        layoutParams.leftMargin = 1;
        layoutParams.topMargin = 0;
        layoutParams.rightMargin = 1;
        layoutParams.bottomMargin = 1;
        imageView.setLayoutParams(layoutParams);
        return imageView;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        ac acVar = this.WAv;
        if (acVar != null) {
            acVar.Qhi(i, i2);
        }
        super.onMeasure(i, i2);
        this.ROR.measure(i, i2);
        double floor = Math.floor(this.fl);
        float f2 = this.Qhi;
        this.Sf.measure(View.MeasureSpec.makeMeasureSpec((int) (((2.0f + f2) * floor) + 1.0d + ((this.fl - floor) * f2)), 1073741824), View.MeasureSpec.makeMeasureSpec(this.ROR.getMeasuredHeight(), 1073741824));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        ac acVar = this.WAv;
        if (acVar != null) {
            acVar.Qhi(i, i2, i3, i4);
        }
        super.onLayout(z, i, i2, i3, i4);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ac acVar = this.WAv;
        if (acVar != null) {
            acVar.Tgh();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ac acVar = this.WAv;
        if (acVar != null) {
            acVar.ROR();
        }
    }

    public void Qhi(ac acVar) {
        this.WAv = acVar;
    }
}
