package com.bytedance.sdk.openadsdk.adapter;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.os.Build;
import android.util.AttributeSet;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.utils.zn;
/* loaded from: classes2.dex */
public class NiceImageView extends PAGImageView {
    private int ABk;
    private int CJ;
    private Path Dww;
    private final Paint EBS;
    private int Gm;
    private float HzH;
    private RectF MQ;
    private final Context Qhi;
    private int ROR;
    private int Sf;
    private int Tgh;
    private int WAv;
    private boolean ac;
    private final Path bxS;
    private boolean cJ;
    private int fl;
    private int hm;
    private int hpZ;
    private final Xfermode iMK;
    private final float[] kYc;
    private int pA;
    private final RectF qMt;
    private final float[] tP;
    private int zc;

    public NiceImageView(Context context) {
        this(context, null);
    }

    public NiceImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public NiceImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.fl = -1;
        this.ROR = -1;
        this.Qhi = context;
        this.Sf = zn.cJ(context, 10.0f);
        this.kYc = new float[8];
        this.tP = new float[8];
        this.qMt = new RectF();
        this.MQ = new RectF();
        this.EBS = new Paint();
        this.bxS = new Path();
        if (Build.VERSION.SDK_INT <= 27) {
            this.iMK = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        } else {
            this.iMK = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
            this.Dww = new Path();
        }
        ac();
        CJ();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.pA = i;
        this.hpZ = i2;
        Qhi();
        cJ();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        canvas.saveLayer(this.MQ, null, 31);
        if (!this.ac) {
            int i = this.pA;
            int i2 = this.CJ;
            int i3 = this.Tgh;
            int i4 = this.hpZ;
            canvas.scale((((i - (i2 * 2)) - (i3 * 2)) * 1.0f) / i, (((i4 - (i2 * 2)) - (i3 * 2)) * 1.0f) / i4, i / 2.0f, i4 / 2.0f);
        }
        super.onDraw(canvas);
        this.EBS.reset();
        this.bxS.reset();
        if (this.cJ) {
            this.bxS.addCircle(this.pA / 2.0f, this.hpZ / 2.0f, this.HzH, Path.Direction.CCW);
        } else {
            this.bxS.addRoundRect(this.MQ, this.tP, Path.Direction.CCW);
        }
        this.EBS.setAntiAlias(true);
        this.EBS.setStyle(Paint.Style.FILL);
        this.EBS.setXfermode(this.iMK);
        if (Build.VERSION.SDK_INT <= 27) {
            canvas.drawPath(this.bxS, this.EBS);
        } else {
            this.Dww.addRect(this.MQ, Path.Direction.CCW);
            this.Dww.op(this.bxS, Path.Op.DIFFERENCE);
            canvas.drawPath(this.Dww, this.EBS);
        }
        this.EBS.setXfermode(null);
        int i5 = this.ABk;
        if (i5 != 0) {
            this.EBS.setColor(i5);
            canvas.drawPath(this.bxS, this.EBS);
        }
        canvas.restore();
        Qhi(canvas);
    }

    private void Qhi(Canvas canvas) {
        if (this.cJ) {
            int i = this.CJ;
            if (i > 0) {
                Qhi(canvas, i, this.fl, this.HzH - (i / 2.0f));
            }
            int i2 = this.Tgh;
            if (i2 > 0) {
                Qhi(canvas, i2, this.ROR, (this.HzH - this.CJ) - (i2 / 2.0f));
                return;
            }
            return;
        }
        int i3 = this.CJ;
        if (i3 > 0) {
            Qhi(canvas, i3, this.fl, this.qMt, this.kYc);
        }
    }

    private void Qhi(Canvas canvas, int i, int i2, float f2) {
        Qhi(i, i2);
        this.bxS.addCircle(this.pA / 2.0f, this.hpZ / 2.0f, f2, Path.Direction.CCW);
        canvas.drawPath(this.bxS, this.EBS);
    }

    private void Qhi(Canvas canvas, int i, int i2, RectF rectF, float[] fArr) {
        Qhi(i, i2);
        this.bxS.addRoundRect(rectF, fArr, Path.Direction.CCW);
        canvas.drawPath(this.bxS, this.EBS);
    }

    private void Qhi(int i, int i2) {
        this.bxS.reset();
        this.EBS.setStrokeWidth(i);
        this.EBS.setColor(i2);
        this.EBS.setStyle(Paint.Style.STROKE);
    }

    private void Qhi() {
        if (this.cJ) {
            return;
        }
        RectF rectF = this.qMt;
        int i = this.CJ;
        rectF.set(i / 2.0f, i / 2.0f, this.pA - (i / 2.0f), this.hpZ - (i / 2.0f));
    }

    private void cJ() {
        if (this.cJ) {
            float min = Math.min(this.pA, this.hpZ) / 2.0f;
            this.HzH = min;
            RectF rectF = this.MQ;
            int i = this.pA;
            int i2 = this.hpZ;
            rectF.set((i / 2.0f) - min, (i2 / 2.0f) - min, (i / 2.0f) + min, (i2 / 2.0f) + min);
            return;
        }
        this.MQ.set(0.0f, 0.0f, this.pA, this.hpZ);
        if (this.ac) {
            this.MQ = this.qMt;
        }
    }

    private void ac() {
        if (this.cJ) {
            return;
        }
        int i = 0;
        if (this.Sf <= 0) {
            float[] fArr = this.kYc;
            int i2 = this.hm;
            float f2 = i2;
            fArr[1] = f2;
            fArr[0] = f2;
            int i3 = this.WAv;
            float f3 = i3;
            fArr[3] = f3;
            fArr[2] = f3;
            int i4 = this.zc;
            float f4 = i4;
            fArr[5] = f4;
            fArr[4] = f4;
            int i5 = this.Gm;
            float f5 = i5;
            fArr[7] = f5;
            fArr[6] = f5;
            float[] fArr2 = this.tP;
            int i6 = this.CJ;
            float f6 = i2 - (i6 / 2.0f);
            fArr2[1] = f6;
            fArr2[0] = f6;
            float f7 = i3 - (i6 / 2.0f);
            fArr2[3] = f7;
            fArr2[2] = f7;
            float f8 = i4 - (i6 / 2.0f);
            fArr2[5] = f8;
            fArr2[4] = f8;
            float f9 = i5 - (i6 / 2.0f);
            fArr2[7] = f9;
            fArr2[6] = f9;
            return;
        }
        while (true) {
            float[] fArr3 = this.kYc;
            if (i >= fArr3.length) {
                return;
            }
            int i7 = this.Sf;
            fArr3[i] = i7;
            this.tP[i] = i7 - (this.CJ / 2.0f);
            i++;
        }
    }

    private void Qhi(boolean z) {
        if (z) {
            this.Sf = 0;
        }
        ac();
        Qhi();
        invalidate();
    }

    private void CJ() {
        if (this.cJ) {
            return;
        }
        this.Tgh = 0;
    }

    public void isCoverSrc(boolean z) {
        this.ac = z;
        cJ();
        invalidate();
    }

    public void isCircle(boolean z) {
        this.cJ = z;
        CJ();
        cJ();
        invalidate();
    }

    public void setBorderWidth(int i) {
        this.CJ = zn.cJ(this.Qhi, i);
        Qhi(false);
    }

    public void setBorderColor(int i) {
        this.fl = i;
        invalidate();
    }

    public void setInnerBorderWidth(int i) {
        this.Tgh = zn.cJ(this.Qhi, i);
        CJ();
        invalidate();
    }

    public void setInnerBorderColor(int i) {
        this.ROR = i;
        invalidate();
    }

    public void setCornerRadius(int i) {
        this.Sf = zn.cJ(this.Qhi, i);
        Qhi(false);
    }

    public void setCornerTopLeftRadius(int i) {
        this.hm = zn.cJ(this.Qhi, i);
        Qhi(true);
    }

    public void setCornerTopRightRadius(int i) {
        this.WAv = zn.cJ(this.Qhi, i);
        Qhi(true);
    }

    public void setCornerBottomLeftRadius(int i) {
        this.Gm = zn.cJ(this.Qhi, i);
        Qhi(true);
    }

    public void setCornerBottomRightRadius(int i) {
        this.zc = zn.cJ(this.Qhi, i);
        Qhi(true);
    }

    public void setMaskColor(int i) {
        this.ABk = i;
        invalidate();
    }
}
