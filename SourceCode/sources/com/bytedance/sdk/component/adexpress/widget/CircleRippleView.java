package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class CircleRippleView extends View {
    private float ABk;
    private int CJ;
    private Paint Gm;
    private int Qhi;
    private boolean ROR;
    private List<Integer> Sf;
    private int Tgh;
    private Paint WAv;
    private float ac;
    private int cJ;
    private float fl;
    private List<Integer> hm;
    private int iMK;
    private float zc;

    public CircleRippleView(Context context) {
        this(context, null);
    }

    public CircleRippleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public CircleRippleView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.Qhi = -1;
        this.cJ = SupportMenu.CATEGORY_MASK;
        this.ac = 18.0f;
        this.CJ = 3;
        this.fl = 50.0f;
        this.Tgh = 2;
        this.ROR = false;
        this.Sf = new ArrayList();
        this.hm = new ArrayList();
        this.iMK = 24;
        ac();
    }

    private void ac() {
        Paint paint = new Paint();
        this.WAv = paint;
        paint.setAntiAlias(true);
        this.WAv.setStrokeWidth(this.iMK);
        this.Sf.add(255);
        this.hm.add(0);
        Paint paint2 = new Paint();
        this.Gm = paint2;
        paint2.setAntiAlias(true);
        this.Gm.setColor(Color.parseColor("#0FFFFFFF"));
        this.Gm.setStyle(Paint.Style.FILL);
    }

    @Override // android.view.View
    public void invalidate() {
        if (hasWindowFocus()) {
            super.invalidate();
        }
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            invalidate();
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float f2 = i / 2.0f;
        this.zc = f2;
        this.ABk = i2 / 2.0f;
        float f3 = f2 - (this.iMK / 2.0f);
        this.fl = f3;
        this.ac = f3 / 4.0f;
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        setMeasuredDimension(Math.min(size, size2), Math.min(size, size2));
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        this.WAv.setShader(new LinearGradient(this.zc, 0.0f, this.ABk, getMeasuredHeight(), -1, (int) ViewCompat.MEASURED_SIZE_MASK, Shader.TileMode.CLAMP));
        int i = 0;
        while (true) {
            if (i >= this.Sf.size()) {
                break;
            }
            Integer num = this.Sf.get(i);
            this.WAv.setAlpha(num.intValue());
            Integer num2 = this.hm.get(i);
            if (this.ac + num2.intValue() < this.fl) {
                canvas.drawCircle(this.zc, this.ABk, this.ac + num2.intValue(), this.WAv);
            }
            if (num.intValue() > 0 && num2.intValue() < this.fl) {
                this.Sf.set(i, Integer.valueOf(num.intValue() - this.Tgh > 0 ? num.intValue() - (this.Tgh * 3) : 1));
                this.hm.set(i, Integer.valueOf(num2.intValue() + this.Tgh));
            }
            i++;
        }
        List<Integer> list = this.hm;
        if (list.get(list.size() - 1).intValue() >= this.fl / this.CJ) {
            this.Sf.add(255);
            this.hm.add(0);
        }
        if (this.hm.size() >= 3) {
            this.hm.remove(0);
            this.Sf.remove(0);
        }
        this.WAv.setAlpha(255);
        this.WAv.setColor(this.cJ);
        canvas.drawCircle(this.zc, this.ABk, this.ac, this.Gm);
        if (this.ROR) {
            invalidate();
        }
    }

    public void Qhi() {
        this.ROR = true;
        invalidate();
    }

    public void cJ() {
        this.ROR = false;
        this.hm.clear();
        this.Sf.clear();
        this.Sf.add(255);
        this.hm.add(0);
        invalidate();
    }

    public void setColor(int i) {
        this.Qhi = i;
    }

    public void setCoreColor(int i) {
        this.cJ = i;
    }

    public void setCoreRadius(int i) {
        this.ac = i;
    }

    public void setDiffuseWidth(int i) {
        this.CJ = i;
    }

    public void setMaxWidth(int i) {
        this.fl = i;
    }

    public void setDiffuseSpeed(int i) {
        this.Tgh = i;
    }
}
