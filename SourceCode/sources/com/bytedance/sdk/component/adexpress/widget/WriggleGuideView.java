package com.bytedance.sdk.component.adexpress.widget;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import com.bytedance.sdk.component.utils.MQ;
/* loaded from: classes2.dex */
public class WriggleGuideView extends View {
    private Bitmap CJ;
    private int Qhi;
    private boolean ROR;
    private boolean Sf;
    private int Tgh;
    private Bitmap ac;
    private int cJ;
    private Paint fl;
    private Qhi hm;

    /* loaded from: classes2.dex */
    public interface Qhi {
    }

    private Bitmap Qhi(int i, int i2) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Bitmap decodeResource = BitmapFactory.decodeResource(getContext().getResources(), MQ.CJ(getContext(), "tt_wriggle_union"));
        if (decodeResource != null) {
            canvas.drawBitmap(decodeResource, (Rect) null, new RectF(0.0f, 0.0f, i, i2), this.fl);
        }
        return createBitmap;
    }

    private Bitmap cJ(int i, int i2) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(1);
        Bitmap decodeResource = BitmapFactory.decodeResource(getContext().getResources(), MQ.CJ(getContext(), "tt_wriggle_union_white"));
        if (decodeResource != null) {
            canvas.drawBitmap(decodeResource, (Rect) null, new RectF(0.0f, 0.0f, i, i2), paint);
        }
        return createBitmap;
    }

    private Bitmap ac(int i, int i2) {
        Bitmap createBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(1);
        paint.setColor(-1);
        canvas.drawCircle(i / 2, 10.0f, this.Tgh, paint);
        return createBitmap;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.ROR) {
            this.Qhi = getWidth();
            int height = getHeight();
            this.cJ = height;
            this.ac = Qhi(this.Qhi, height);
            this.CJ = cJ(this.Qhi, this.cJ);
            this.ROR = false;
        }
        Bitmap bitmap = this.ac;
        if (bitmap != null) {
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, this.fl);
        }
        int saveLayer = canvas.saveLayer(0.0f, 0.0f, getWidth(), getHeight(), null, 31);
        Bitmap bitmap2 = this.CJ;
        if (bitmap2 != null) {
            canvas.drawBitmap(bitmap2, 0.0f, 0.0f, this.fl);
        }
        this.fl.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        canvas.drawBitmap(ac(this.Qhi, this.cJ), 0.0f, 0.0f, this.fl);
        this.fl.setXfermode(null);
        canvas.restoreToCount(saveLayer);
        if (this.Sf) {
            this.Tgh += 5;
            invalidate();
            if (this.Tgh >= this.Qhi) {
                this.Sf = false;
            }
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.hm != null) {
            this.hm = null;
        }
    }
}
