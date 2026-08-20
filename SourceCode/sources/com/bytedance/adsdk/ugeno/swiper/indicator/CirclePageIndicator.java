package com.bytedance.adsdk.ugeno.swiper.indicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.adsdk.ugeno.viewpager.ViewPager;
/* loaded from: classes2.dex */
public class CirclePageIndicator extends View implements com.bytedance.adsdk.ugeno.swiper.indicator.Qhi {
    private boolean ABk;
    private final Paint CJ;
    private int Gm;
    private boolean HzH;
    private float Qhi;
    private int ROR;
    private int Sf;
    private ViewPager.fl Tgh;
    private int WAv;
    private final Paint ac;
    private final Paint cJ;
    private ViewPager fl;
    private float hm;
    private int hpZ;
    private int iMK;
    private float pA;
    private boolean zc;

    public void setCentered(boolean z) {
        this.zc = z;
        invalidate();
    }

    public void setPageColor(int i) {
        this.cJ.setColor(i);
        invalidate();
    }

    public int getPageColor() {
        return this.cJ.getColor();
    }

    public void setFillColor(int i) {
        this.CJ.setColor(i);
        invalidate();
    }

    public int getFillColor() {
        return this.CJ.getColor();
    }

    public void setOrientation(int i) {
        if (i == 0 || i == 1) {
            this.Gm = i;
            requestLayout();
            return;
        }
        throw new IllegalArgumentException("Orientation must be either HORIZONTAL or VERTICAL.");
    }

    public int getOrientation() {
        return this.Gm;
    }

    public void setStrokeColor(int i) {
        this.ac.setColor(i);
        invalidate();
    }

    public int getStrokeColor() {
        return this.ac.getColor();
    }

    public void setStrokeWidth(float f2) {
        this.ac.setStrokeWidth(f2);
        invalidate();
    }

    public float getStrokeWidth() {
        return this.ac.getStrokeWidth();
    }

    public void setRadius(float f2) {
        this.Qhi = f2;
        invalidate();
    }

    public float getRadius() {
        return this.Qhi;
    }

    public void setSnap(boolean z) {
        this.ABk = z;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int Qhi2;
        int height;
        int paddingTop;
        int paddingBottom;
        int paddingLeft;
        float f2;
        float f3;
        super.onDraw(canvas);
        ViewPager viewPager = this.fl;
        if (viewPager == null || (Qhi2 = viewPager.getAdapter().Qhi()) == 0) {
            return;
        }
        if (this.ROR >= Qhi2) {
            setCurrentItem(Qhi2 - 1);
            return;
        }
        if (this.Gm == 0) {
            height = getWidth();
            paddingTop = getPaddingLeft();
            paddingBottom = getPaddingRight();
            paddingLeft = getPaddingTop();
        } else {
            height = getHeight();
            paddingTop = getPaddingTop();
            paddingBottom = getPaddingBottom();
            paddingLeft = getPaddingLeft();
        }
        float f4 = this.Qhi;
        float f5 = 3.0f * f4;
        float f6 = paddingLeft + f4;
        float f7 = paddingTop + f4;
        if (this.zc) {
            f7 += (((height - paddingTop) - paddingBottom) / 2.0f) - ((Qhi2 * f5) / 2.0f);
        }
        if (this.ac.getStrokeWidth() > 0.0f) {
            f4 -= this.ac.getStrokeWidth() / 2.0f;
        }
        for (int i = 0; i < Qhi2; i++) {
            float f8 = (i * f5) + f7;
            if (this.Gm == 0) {
                f3 = f6;
            } else {
                f3 = f8;
                f8 = f6;
            }
            if (this.cJ.getAlpha() > 0) {
                canvas.drawCircle(f8, f3, f4, this.cJ);
            }
            float f9 = this.Qhi;
            if (f4 != f9) {
                canvas.drawCircle(f8, f3, f9, this.ac);
            }
        }
        boolean z = this.ABk;
        float f10 = (z ? this.Sf : this.ROR) * f5;
        if (!z) {
            f10 += this.hm * f5;
        }
        if (this.Gm == 0) {
            float f11 = f7 + f10;
            f2 = f6;
            f6 = f11;
        } else {
            f2 = f7 + f10;
        }
        canvas.drawCircle(f6, f2, this.Qhi, this.CJ);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        ViewPager viewPager = this.fl;
        if (viewPager == null || viewPager.getAdapter().Qhi() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.hpZ = motionEvent.getPointerId(0);
            this.pA = motionEvent.getX();
        } else {
            if (action != 1) {
                if (action == 2) {
                    float x = motionEvent.getX(motionEvent.findPointerIndex(this.hpZ));
                    float f2 = x - this.pA;
                    if (!this.HzH && Math.abs(f2) > this.iMK) {
                        this.HzH = true;
                    }
                    if (this.HzH) {
                        this.pA = x;
                        if (this.fl.Tgh() || this.fl.CJ()) {
                            this.fl.cJ(f2);
                        }
                    }
                } else if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        this.pA = motionEvent.getX(actionIndex);
                        this.hpZ = motionEvent.getPointerId(actionIndex);
                    } else if (action == 6) {
                        int actionIndex2 = motionEvent.getActionIndex();
                        if (motionEvent.getPointerId(actionIndex2) == this.hpZ) {
                            this.hpZ = motionEvent.getPointerId(actionIndex2 == 0 ? 1 : 0);
                        }
                        this.pA = motionEvent.getX(motionEvent.findPointerIndex(this.hpZ));
                    }
                }
            }
            if (!this.HzH) {
                int Qhi2 = this.fl.getAdapter().Qhi();
                float width = getWidth();
                float f3 = width / 2.0f;
                float f4 = width / 6.0f;
                if (this.ROR > 0 && motionEvent.getX() < f3 - f4) {
                    if (action != 3) {
                        this.fl.setCurrentItem(this.ROR - 1);
                    }
                    return true;
                } else if (this.ROR < Qhi2 - 1 && motionEvent.getX() > f3 + f4) {
                    if (action != 3) {
                        this.fl.setCurrentItem(this.ROR + 1);
                    }
                    return true;
                }
            }
            this.HzH = false;
            this.hpZ = -1;
            if (this.fl.Tgh()) {
                this.fl.fl();
            }
        }
        return true;
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.fl;
        if (viewPager2 == viewPager) {
            return;
        }
        if (viewPager2 != null) {
            viewPager2.setOnPageChangeListener(null);
        }
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        this.fl = viewPager;
        viewPager.setOnPageChangeListener(this);
        invalidate();
    }

    public void setCurrentItem(int i) {
        ViewPager viewPager = this.fl;
        if (viewPager == null) {
            throw new IllegalStateException("ViewPager has not been bound.");
        }
        viewPager.setCurrentItem(i);
        this.ROR = i;
        invalidate();
    }

    @Override // com.bytedance.adsdk.ugeno.viewpager.ViewPager.fl
    public void hm(int i) {
        this.WAv = i;
        ViewPager.fl flVar = this.Tgh;
        if (flVar != null) {
            flVar.hm(i);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.viewpager.ViewPager.fl
    public void Qhi(int i, float f2, int i2) {
        this.ROR = i;
        this.hm = f2;
        invalidate();
        ViewPager.fl flVar = this.Tgh;
        if (flVar != null) {
            flVar.Qhi(i, f2, i2);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.viewpager.ViewPager.fl
    public void Sf(int i) {
        if (this.ABk || this.WAv == 0) {
            this.ROR = i;
            this.Sf = i;
            invalidate();
        }
        ViewPager.fl flVar = this.Tgh;
        if (flVar != null) {
            flVar.Sf(i);
        }
    }

    public void setOnPageChangeListener(ViewPager.fl flVar) {
        this.Tgh = flVar;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.Gm == 0) {
            setMeasuredDimension(Qhi(i), cJ(i2));
        } else {
            setMeasuredDimension(cJ(i), Qhi(i2));
        }
    }

    private int Qhi(int i) {
        ViewPager viewPager;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824 || (viewPager = this.fl) == null) {
            return size;
        }
        int Qhi2 = viewPager.getAdapter().Qhi();
        float f2 = this.Qhi;
        int paddingLeft = (int) (getPaddingLeft() + getPaddingRight() + (Qhi2 * 2 * f2) + ((Qhi2 - 1) * f2) + 1.0f);
        return mode == Integer.MIN_VALUE ? Math.min(paddingLeft, size) : paddingLeft;
    }

    private int cJ(int i) {
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            return size;
        }
        int paddingTop = (int) ((this.Qhi * 2.0f) + getPaddingTop() + getPaddingBottom() + 1.0f);
        return mode == Integer.MIN_VALUE ? Math.min(paddingTop, size) : paddingTop;
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Qhi qhi = (Qhi) parcelable;
        super.onRestoreInstanceState(qhi.getSuperState());
        this.ROR = qhi.Qhi;
        this.Sf = qhi.Qhi;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Qhi qhi = new Qhi(super.onSaveInstanceState());
        qhi.Qhi = this.ROR;
        return qhi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Qhi extends View.BaseSavedState {
        public static final Parcelable.Creator<Qhi> CREATOR = new Parcelable.Creator<Qhi>() { // from class: com.bytedance.adsdk.ugeno.swiper.indicator.CirclePageIndicator.Qhi.1
            @Override // android.os.Parcelable.Creator
            /* renamed from: Qhi */
            public Qhi createFromParcel(Parcel parcel) {
                return new Qhi(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: Qhi */
            public Qhi[] newArray(int i) {
                return new Qhi[i];
            }
        };
        int Qhi;

        public Qhi(Parcelable parcelable) {
            super(parcelable);
        }

        private Qhi(Parcel parcel) {
            super(parcel);
            this.Qhi = parcel.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.Qhi);
        }
    }
}
