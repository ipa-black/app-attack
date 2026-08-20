package com.bytedance.adsdk.ugeno.swiper.indicator;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.MotionEvent;
import android.view.View;
import com.bytedance.adsdk.ugeno.viewpager.ViewPager;
/* loaded from: classes2.dex */
public class LinePageIndicator extends View implements com.bytedance.adsdk.ugeno.swiper.indicator.Qhi {
    private ViewPager.fl CJ;
    private int Gm;
    private final Paint Qhi;
    private float ROR;
    private float Sf;
    private boolean Tgh;
    private float WAv;
    private ViewPager ac;
    private final Paint cJ;
    private int fl;
    private int hm;
    private boolean zc;

    public void setCentered(boolean z) {
        this.Tgh = z;
        invalidate();
    }

    public void setUnselectedColor(int i) {
        this.Qhi.setColor(i);
        invalidate();
    }

    public int getUnselectedColor() {
        return this.Qhi.getColor();
    }

    public void setSelectedColor(int i) {
        this.cJ.setColor(i);
        invalidate();
    }

    public int getSelectedColor() {
        return this.cJ.getColor();
    }

    public void setLineWidth(float f2) {
        this.ROR = f2;
        invalidate();
    }

    public float getLineWidth() {
        return this.ROR;
    }

    public void setStrokeWidth(float f2) {
        this.cJ.setStrokeWidth(f2);
        this.Qhi.setStrokeWidth(f2);
        invalidate();
    }

    public float getStrokeWidth() {
        return this.cJ.getStrokeWidth();
    }

    public void setGapWidth(float f2) {
        this.Sf = f2;
        invalidate();
    }

    public float getGapWidth() {
        return this.Sf;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        int Qhi2;
        super.onDraw(canvas);
        ViewPager viewPager = this.ac;
        if (viewPager == null || (Qhi2 = viewPager.getAdapter().Qhi()) == 0) {
            return;
        }
        if (this.fl >= Qhi2) {
            setCurrentItem(Qhi2 - 1);
            return;
        }
        float f2 = this.ROR;
        float f3 = this.Sf;
        float f4 = f2 + f3;
        float f5 = (Qhi2 * f4) - f3;
        float paddingTop = getPaddingTop();
        float paddingLeft = getPaddingLeft();
        float paddingRight = getPaddingRight();
        float height = paddingTop + (((getHeight() - paddingTop) - getPaddingBottom()) / 2.0f);
        if (this.Tgh) {
            paddingLeft += (((getWidth() - paddingLeft) - paddingRight) / 2.0f) - (f5 / 2.0f);
        }
        int i = 0;
        while (i < Qhi2) {
            float f6 = paddingLeft + (i * f4);
            canvas.drawLine(f6, height, f6 + this.ROR, height, i == this.fl ? this.cJ : this.Qhi);
            i++;
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (super.onTouchEvent(motionEvent)) {
            return true;
        }
        ViewPager viewPager = this.ac;
        if (viewPager == null || viewPager.getAdapter().Qhi() == 0) {
            return false;
        }
        int action = motionEvent.getAction() & 255;
        if (action == 0) {
            this.Gm = motionEvent.getPointerId(0);
            this.WAv = motionEvent.getX();
        } else {
            if (action != 1) {
                if (action == 2) {
                    float x = motionEvent.getX(motionEvent.findPointerIndex(this.Gm));
                    float f2 = x - this.WAv;
                    if (!this.zc && Math.abs(f2) > this.hm) {
                        this.zc = true;
                    }
                    if (this.zc) {
                        this.WAv = x;
                        if (this.ac.Tgh() || this.ac.CJ()) {
                            this.ac.cJ(f2);
                        }
                    }
                } else if (action != 3) {
                    if (action == 5) {
                        int actionIndex = motionEvent.getActionIndex();
                        this.WAv = motionEvent.getX(actionIndex);
                        this.Gm = motionEvent.getPointerId(actionIndex);
                    } else if (action == 6) {
                        int actionIndex2 = motionEvent.getActionIndex();
                        if (motionEvent.getPointerId(actionIndex2) == this.Gm) {
                            this.Gm = motionEvent.getPointerId(actionIndex2 == 0 ? 1 : 0);
                        }
                        this.WAv = motionEvent.getX(motionEvent.findPointerIndex(this.Gm));
                    }
                }
            }
            if (!this.zc) {
                int Qhi2 = this.ac.getAdapter().Qhi();
                float width = getWidth();
                float f3 = width / 2.0f;
                float f4 = width / 6.0f;
                if (this.fl > 0 && motionEvent.getX() < f3 - f4) {
                    if (action != 3) {
                        this.ac.setCurrentItem(this.fl - 1);
                    }
                    return true;
                } else if (this.fl < Qhi2 - 1 && motionEvent.getX() > f3 + f4) {
                    if (action != 3) {
                        this.ac.setCurrentItem(this.fl + 1);
                    }
                    return true;
                }
            }
            this.zc = false;
            this.Gm = -1;
            if (this.ac.Tgh()) {
                this.ac.fl();
            }
        }
        return true;
    }

    public void setViewPager(ViewPager viewPager) {
        ViewPager viewPager2 = this.ac;
        if (viewPager2 == viewPager) {
            return;
        }
        if (viewPager2 != null) {
            viewPager2.Qhi((ViewPager.fl) null);
        }
        if (viewPager.getAdapter() == null) {
            throw new IllegalStateException("ViewPager does not have adapter instance.");
        }
        this.ac = viewPager;
        viewPager.Qhi((ViewPager.fl) this);
        invalidate();
    }

    public void setCurrentItem(int i) {
        ViewPager viewPager = this.ac;
        if (viewPager == null) {
            throw new IllegalStateException("ViewPager has not been bound.");
        }
        viewPager.setCurrentItem(i);
        this.fl = i;
        invalidate();
    }

    @Override // com.bytedance.adsdk.ugeno.viewpager.ViewPager.fl
    public void hm(int i) {
        ViewPager.fl flVar = this.CJ;
        if (flVar != null) {
            flVar.hm(i);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.viewpager.ViewPager.fl
    public void Qhi(int i, float f2, int i2) {
        ViewPager.fl flVar = this.CJ;
        if (flVar != null) {
            flVar.Qhi(i, f2, i2);
        }
    }

    @Override // com.bytedance.adsdk.ugeno.viewpager.ViewPager.fl
    public void Sf(int i) {
        this.fl = i;
        invalidate();
        ViewPager.fl flVar = this.CJ;
        if (flVar != null) {
            flVar.Sf(i);
        }
    }

    public void setOnPageChangeListener(ViewPager.fl flVar) {
        this.CJ = flVar;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(Qhi(i), cJ(i2));
    }

    private int Qhi(int i) {
        float f2;
        ViewPager viewPager;
        int Qhi2;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824 || (viewPager = this.ac) == null) {
            f2 = size;
        } else {
            f2 = getPaddingLeft() + getPaddingRight() + (viewPager.getAdapter().Qhi() * this.ROR) + ((Qhi2 - 1) * this.Sf);
            if (mode == Integer.MIN_VALUE) {
                f2 = Math.min(f2, size);
            }
        }
        return (int) Math.ceil(f2);
    }

    private int cJ(int i) {
        float min;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        if (mode == 1073741824) {
            min = size;
        } else {
            float strokeWidth = this.cJ.getStrokeWidth() + getPaddingTop() + getPaddingBottom();
            min = mode == Integer.MIN_VALUE ? Math.min(strokeWidth, size) : strokeWidth;
        }
        return (int) Math.ceil(min);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        Qhi qhi = (Qhi) parcelable;
        super.onRestoreInstanceState(qhi.getSuperState());
        this.fl = qhi.Qhi;
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        Qhi qhi = new Qhi(super.onSaveInstanceState());
        qhi.Qhi = this.fl;
        return qhi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Qhi extends View.BaseSavedState {
        public static final Parcelable.Creator<Qhi> CREATOR = new Parcelable.Creator<Qhi>() { // from class: com.bytedance.adsdk.ugeno.swiper.indicator.LinePageIndicator.Qhi.1
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
