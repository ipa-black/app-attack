package com.applovin.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.core.view.ViewCompat;
import com.applovin.exoplayer2.l.ai;
/* loaded from: classes.dex */
final class i {
    private int A;
    private int B;
    private int C;
    private int D;
    private StaticLayout E;
    private StaticLayout F;
    private int G;
    private int H;
    private int I;
    private Rect J;

    /* renamed from: a  reason: collision with root package name */
    private final float f4161a;

    /* renamed from: b  reason: collision with root package name */
    private final float f4162b;

    /* renamed from: c  reason: collision with root package name */
    private final float f4163c;

    /* renamed from: d  reason: collision with root package name */
    private final float f4164d;

    /* renamed from: e  reason: collision with root package name */
    private final float f4165e;

    /* renamed from: f  reason: collision with root package name */
    private final TextPaint f4166f;

    /* renamed from: g  reason: collision with root package name */
    private final Paint f4167g;

    /* renamed from: h  reason: collision with root package name */
    private final Paint f4168h;
    private CharSequence i;
    private Layout.Alignment j;
    private Bitmap k;
    private float l;
    private int m;
    private int n;
    private float o;
    private int p;
    private float q;
    private float r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private float x;
    private float y;
    private float z;

    public i(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, new int[]{16843287, 16843288}, 0, 0);
        this.f4165e = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f4164d = obtainStyledAttributes.getFloat(1, 1.0f);
        obtainStyledAttributes.recycle();
        float round = Math.round((context.getResources().getDisplayMetrics().densityDpi * 2.0f) / 160.0f);
        this.f4161a = round;
        this.f4162b = round;
        this.f4163c = round;
        TextPaint textPaint = new TextPaint();
        this.f4166f = textPaint;
        textPaint.setAntiAlias(true);
        textPaint.setSubpixelText(true);
        Paint paint = new Paint();
        this.f4167g = paint;
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f4168h = paint2;
        paint2.setAntiAlias(true);
        paint2.setFilterBitmap(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a() {
        /*
            Method dump skipped, instructions count: 487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.ui.i.a():void");
    }

    private void a(Canvas canvas) {
        StaticLayout staticLayout = this.E;
        StaticLayout staticLayout2 = this.F;
        if (staticLayout == null || staticLayout2 == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(this.G, this.H);
        if (Color.alpha(this.u) > 0) {
            this.f4167g.setColor(this.u);
            canvas.drawRect(-this.I, 0.0f, staticLayout.getWidth() + this.I, staticLayout.getHeight(), this.f4167g);
        }
        int i = this.w;
        if (i == 1) {
            this.f4166f.setStrokeJoin(Paint.Join.ROUND);
            this.f4166f.setStrokeWidth(this.f4161a);
            this.f4166f.setColor(this.v);
            this.f4166f.setStyle(Paint.Style.FILL_AND_STROKE);
            staticLayout2.draw(canvas);
        } else if (i == 2) {
            TextPaint textPaint = this.f4166f;
            float f2 = this.f4162b;
            float f3 = this.f4163c;
            textPaint.setShadowLayer(f2, f3, f3, this.v);
        } else if (i == 3 || i == 4) {
            boolean z = i == 3;
            int i2 = z ? -1 : this.v;
            int i3 = z ? this.v : -1;
            float f4 = this.f4162b / 2.0f;
            this.f4166f.setColor(this.s);
            this.f4166f.setStyle(Paint.Style.FILL);
            float f5 = -f4;
            this.f4166f.setShadowLayer(this.f4162b, f5, f5, i2);
            staticLayout2.draw(canvas);
            this.f4166f.setShadowLayer(this.f4162b, f4, f4, i3);
        }
        this.f4166f.setColor(this.s);
        this.f4166f.setStyle(Paint.Style.FILL);
        staticLayout.draw(canvas);
        this.f4166f.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        canvas.restoreToCount(save);
    }

    private void a(Canvas canvas, boolean z) {
        if (z) {
            a(canvas);
            return;
        }
        com.applovin.exoplayer2.l.a.b(this.J);
        com.applovin.exoplayer2.l.a.b(this.k);
        b(canvas);
    }

    private static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        return charSequence == charSequence2 || (charSequence != null && charSequence.equals(charSequence2));
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void b() {
        /*
            r7 = this;
            android.graphics.Bitmap r0 = r7.k
            int r1 = r7.C
            int r2 = r7.A
            int r1 = r1 - r2
            int r3 = r7.D
            int r4 = r7.B
            int r3 = r3 - r4
            float r2 = (float) r2
            float r1 = (float) r1
            float r5 = r7.o
            float r5 = r5 * r1
            float r2 = r2 + r5
            float r4 = (float) r4
            float r3 = (float) r3
            float r5 = r7.l
            float r5 = r5 * r3
            float r4 = r4 + r5
            float r5 = r7.q
            float r1 = r1 * r5
            int r1 = java.lang.Math.round(r1)
            float r5 = r7.r
            r6 = -8388609(0xffffffffff7fffff, float:-3.4028235E38)
            int r6 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r6 == 0) goto L29
            goto L35
        L29:
            float r3 = (float) r1
            int r5 = r0.getHeight()
            float r5 = (float) r5
            int r0 = r0.getWidth()
            float r0 = (float) r0
            float r5 = r5 / r0
        L35:
            float r3 = r3 * r5
            int r0 = java.lang.Math.round(r3)
            int r3 = r7.p
            r5 = 1
            r6 = 2
            if (r3 != r6) goto L43
            float r3 = (float) r1
        L41:
            float r2 = r2 - r3
            goto L49
        L43:
            if (r3 != r5) goto L49
            int r3 = r1 / 2
            float r3 = (float) r3
            goto L41
        L49:
            int r2 = java.lang.Math.round(r2)
            int r3 = r7.n
            if (r3 != r6) goto L54
            float r3 = (float) r0
        L52:
            float r4 = r4 - r3
            goto L5a
        L54:
            if (r3 != r5) goto L5a
            int r3 = r0 / 2
            float r3 = (float) r3
            goto L52
        L5a:
            int r3 = java.lang.Math.round(r4)
            android.graphics.Rect r4 = new android.graphics.Rect
            int r1 = r1 + r2
            int r0 = r0 + r3
            r4.<init>(r2, r3, r1, r0)
            r7.J = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.ui.i.b():void");
    }

    private void b(Canvas canvas) {
        canvas.drawBitmap(this.k, (Rect) null, this.J, this.f4168h);
    }

    public void a(com.applovin.exoplayer2.i.a aVar, c cVar, float f2, float f3, float f4, Canvas canvas, int i, int i2, int i3, int i4) {
        int i5;
        boolean z = aVar.f3167e == null;
        if (!z) {
            i5 = ViewCompat.MEASURED_STATE_MASK;
        } else if (TextUtils.isEmpty(aVar.f3164b)) {
            return;
        } else {
            i5 = aVar.m ? aVar.n : cVar.f4118d;
        }
        if (a(this.i, aVar.f3164b) && ai.a(this.j, aVar.f3165c) && this.k == aVar.f3167e && this.l == aVar.f3168f && this.m == aVar.f3169g && ai.a(Integer.valueOf(this.n), Integer.valueOf(aVar.f3170h)) && this.o == aVar.i && ai.a(Integer.valueOf(this.p), Integer.valueOf(aVar.j)) && this.q == aVar.k && this.r == aVar.l && this.s == cVar.f4116b && this.t == cVar.f4117c && this.u == i5 && this.w == cVar.f4119e && this.v == cVar.f4120f && ai.a(this.f4166f.getTypeface(), cVar.f4121g) && this.x == f2 && this.y == f3 && this.z == f4 && this.A == i && this.B == i2 && this.C == i3 && this.D == i4) {
            a(canvas, z);
            return;
        }
        this.i = aVar.f3164b;
        this.j = aVar.f3165c;
        this.k = aVar.f3167e;
        this.l = aVar.f3168f;
        this.m = aVar.f3169g;
        this.n = aVar.f3170h;
        this.o = aVar.i;
        this.p = aVar.j;
        this.q = aVar.k;
        this.r = aVar.l;
        this.s = cVar.f4116b;
        this.t = cVar.f4117c;
        this.u = i5;
        this.w = cVar.f4119e;
        this.v = cVar.f4120f;
        this.f4166f.setTypeface(cVar.f4121g);
        this.x = f2;
        this.y = f3;
        this.z = f4;
        this.A = i;
        this.B = i2;
        this.C = i3;
        this.D = i4;
        if (z) {
            com.applovin.exoplayer2.l.a.b(this.i);
            a();
        } else {
            com.applovin.exoplayer2.l.a.b(this.k);
            b();
        }
        a(canvas, z);
    }
}
