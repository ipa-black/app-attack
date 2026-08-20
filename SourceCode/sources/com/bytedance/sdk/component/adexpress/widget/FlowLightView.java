package com.bytedance.sdk.component.adexpress.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Xfermode;
import android.view.View;
import com.bytedance.sdk.component.utils.MQ;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class FlowLightView extends View {
    private PorterDuff.Mode ABk;
    private int CJ;
    private Paint Gm;
    Rect Qhi;
    private int ROR;
    private int Sf;
    private int Tgh;
    private Bitmap WAv;
    private int ac;
    Rect cJ;
    private int fl;
    private int[] hm;
    private LinearGradient iMK;
    private final List<Qhi> pA;
    private Xfermode zc;

    public FlowLightView(Context context) {
        super(context);
        this.ABk = PorterDuff.Mode.DST_IN;
        this.pA = new ArrayList();
        Qhi();
    }

    private void Qhi() {
        this.ac = MQ.CJ(getContext(), "tt_splash_unlock_image_arrow");
        this.CJ = Color.parseColor("#00ffffff");
        this.fl = Color.parseColor("#ffffffff");
        int parseColor = Color.parseColor("#00ffffff");
        this.Tgh = parseColor;
        this.ROR = 10;
        this.Sf = 40;
        this.hm = new int[]{this.CJ, this.fl, parseColor};
        setLayerType(1, null);
        this.Gm = new Paint(1);
        this.WAv = BitmapFactory.decodeResource(getResources(), this.ac);
        this.zc = new PorterDuffXfermode(this.ABk);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawBitmap(this.WAv, this.Qhi, this.cJ, this.Gm);
        canvas.save();
        Iterator<Qhi> it = this.pA.iterator();
        while (it.hasNext()) {
            Qhi next = it.next();
            this.iMK = new LinearGradient(next.cJ, 0.0f, next.cJ + this.Sf, this.ROR, this.hm, (float[]) null, Shader.TileMode.CLAMP);
            this.Gm.setColor(-1);
            this.Gm.setShader(this.iMK);
            canvas.drawRect(0.0f, 0.0f, getWidth(), getHeight(), this.Gm);
            this.Gm.setShader(null);
            next.Qhi();
            if (next.cJ > getWidth()) {
                it.remove();
            }
        }
        this.Gm.setXfermode(this.zc);
        canvas.drawBitmap(this.WAv, this.Qhi, this.cJ, this.Gm);
        this.Gm.setXfermode(null);
        canvas.restore();
        invalidate();
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (this.WAv == null) {
            return;
        }
        this.Qhi = new Rect(0, 0, this.WAv.getWidth(), this.WAv.getHeight());
        this.cJ = new Rect(0, 0, getWidth(), getHeight());
    }

    public void Qhi(int i) {
        this.pA.add(new Qhi(i));
        postInvalidate();
    }

    /* loaded from: classes2.dex */
    public static class Qhi {
        private final int Qhi;
        private int cJ = 0;

        public Qhi(int i) {
            this.Qhi = i;
        }

        public void Qhi() {
            this.cJ += this.Qhi;
        }
    }
}
