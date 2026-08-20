package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class PAGLoadingBar extends View {
    private static final int[] Qhi = {Color.parseColor("#1AFFFFFF"), Color.parseColor("#4DFFFFFF"), Color.parseColor("#99FFFFFF")};
    private final ArrayList<Qhi> CJ;
    private int ROR;
    private int Sf;
    private final Paint Tgh;
    private final RectF ac;
    private final RectF cJ;
    private final Paint fl;
    private int hm;

    public PAGLoadingBar(Context context) {
        super(context);
        this.cJ = new RectF();
        this.ac = new RectF();
        this.CJ = new ArrayList<>();
        this.Tgh = new Paint();
        Paint paint = new Paint();
        this.fl = paint;
        paint.setColor(Color.parseColor("#D9D9D9"));
    }

    public void setProgress(int i) {
        int i2 = this.Sf;
        if (i2 == i) {
            return;
        }
        if (i < 0) {
            i = 0;
        } else if (i > 100) {
            i = 100;
        }
        if (i2 == i) {
            return;
        }
        this.Sf = i;
        Qhi();
    }

    private void Qhi() {
        if (this.ROR <= 0) {
            return;
        }
        int width = (int) (((this.Sf * 1.0f) / 100.0f) * getWidth());
        this.ac.right = Math.max(this.hm, width);
        invalidate();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        int[] iArr;
        super.onSizeChanged(i, i2, i3, i4);
        int i5 = i2 / 2;
        this.ROR = i5;
        this.hm = i5 * 5;
        float f2 = i;
        float f3 = i2;
        this.cJ.set(0.0f, 0.0f, f2, f3);
        this.ac.set(0.0f, 0.0f, 0.0f, f3);
        this.Tgh.setShader(new LinearGradient(0.0f, 0.0f, f2, f3, new int[]{Color.parseColor("#90C0FF"), Color.parseColor("#196BE4")}, (float[]) null, Shader.TileMode.CLAMP));
        this.CJ.clear();
        float f4 = this.ROR / 4.0f;
        for (int i6 : Qhi) {
            Paint paint = new Paint();
            paint.setColor(i6);
            this.CJ.add(new Qhi(paint, this.ROR / 2.0f, f4, f3 / 2.0f));
            f4 += (this.ROR / 2.0f) * 3.0f;
        }
        Qhi();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        RectF rectF = this.cJ;
        int i = this.ROR;
        canvas.drawRoundRect(rectF, i, i, this.fl);
        RectF rectF2 = this.ac;
        int i2 = this.ROR;
        canvas.drawRoundRect(rectF2, i2, i2, this.Tgh);
        int save = canvas.save();
        canvas.translate(this.ac.right - this.hm, 0.0f);
        Iterator<Qhi> it = this.CJ.iterator();
        while (it.hasNext()) {
            Qhi next = it.next();
            canvas.drawCircle(next.ac, next.CJ, next.cJ, next.Qhi);
        }
        canvas.restoreToCount(save);
    }

    /* loaded from: classes2.dex */
    private static final class Qhi {
        float CJ;
        public Paint Qhi;
        float ac;
        public float cJ;

        public Qhi(Paint paint, float f2, float f3, float f4) {
            this.Qhi = paint;
            this.cJ = f2;
            this.ac = f3;
            this.CJ = f4;
        }
    }
}
