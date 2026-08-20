package com.bytedance.sdk.openadsdk.component.view;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Shader;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
/* loaded from: classes2.dex */
public class ButtonFlash extends TextView {
    private LinearGradient CJ;
    private int Qhi;
    private boolean ROR;
    private Matrix Tgh;
    private Paint ac;
    private int cJ;
    private RectF fl;

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.Qhi = i;
        this.cJ = i2;
        LinearGradient linearGradient = new LinearGradient(0.0f, 0.0f, this.Qhi / 2.0f, this.cJ, new int[]{ViewCompat.MEASURED_SIZE_MASK, 1358954495, ViewCompat.MEASURED_SIZE_MASK}, new float[]{0.1f, 0.3f, 0.5f}, Shader.TileMode.CLAMP);
        this.CJ = linearGradient;
        this.ac.setShader(linearGradient);
        this.ac.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.LIGHTEN));
        Matrix matrix = new Matrix();
        this.Tgh = matrix;
        matrix.setTranslate(-this.Qhi, this.cJ);
        this.CJ.setLocalMatrix(this.Tgh);
        this.fl.set(0.0f, 0.0f, this.Qhi, this.cJ);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.Tgh != null) {
            canvas.drawRoundRect(this.fl, 100.0f, 100.0f, this.ac);
        }
    }

    public void setAutoRun(boolean z) {
        this.ROR = z;
    }
}
