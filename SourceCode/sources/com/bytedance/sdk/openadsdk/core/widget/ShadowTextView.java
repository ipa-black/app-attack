package com.bytedance.sdk.openadsdk.core.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
/* loaded from: classes2.dex */
public class ShadowTextView extends PAGTextView {
    private Paint Qhi;
    private int ac;
    private RectF cJ;

    public ShadowTextView(Context context) {
        this(context, null);
    }

    public ShadowTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ShadowTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.ac = 0;
        Qhi();
    }

    private void Qhi() {
        setTextColor(-1);
        Paint paint = new Paint();
        this.Qhi = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.Qhi.setColor(Color.parseColor("#99333333"));
        this.Qhi.setAntiAlias(true);
        this.Qhi.setStrokeWidth(0.0f);
        this.cJ = new RectF();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.core.customview.PAGTextView, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (measuredWidth > 0 && measuredHeight > 0) {
            int measureText = (int) getPaint().measureText("00");
            this.ac = measureText;
            if (measuredWidth < measureText) {
                measuredWidth = measureText;
            }
            int i3 = measuredWidth + ((measuredHeight / 2) * 2);
            setMeasuredDimension(i3, measuredHeight);
            this.cJ.set(0.0f, 0.0f, i3, measuredHeight);
            return;
        }
        this.cJ.set(0.0f, 0.0f, 0.0f, 0.0f);
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        RectF rectF = this.cJ;
        canvas.drawRoundRect(rectF, rectF.bottom / 2.0f, this.cJ.bottom / 2.0f, this.Qhi);
        canvas.translate((this.cJ.right / 2.0f) - (getPaint().measureText(getText().toString()) / 2.0f), 0.0f);
        super.onDraw(canvas);
    }
}
