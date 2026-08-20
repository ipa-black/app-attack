package com.applovin.exoplayer2.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.applovin.sdk.R;
/* loaded from: classes.dex */
public final class AspectRatioFrameLayout extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private final b f4089a;

    /* renamed from: b  reason: collision with root package name */
    private a f4090b;

    /* renamed from: c  reason: collision with root package name */
    private float f4091c;

    /* renamed from: d  reason: collision with root package name */
    private int f4092d;

    /* loaded from: classes.dex */
    public interface a {
        void a(float f2, float f3, boolean z);
    }

    /* loaded from: classes.dex */
    private final class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private float f4094b;

        /* renamed from: c  reason: collision with root package name */
        private float f4095c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f4096d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f4097e;

        private b() {
        }

        public void a(float f2, float f3, boolean z) {
            this.f4094b = f2;
            this.f4095c = f3;
            this.f4096d = z;
            if (this.f4097e) {
                return;
            }
            this.f4097e = true;
            AspectRatioFrameLayout.this.post(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4097e = false;
            if (AspectRatioFrameLayout.this.f4090b == null) {
                return;
            }
            AspectRatioFrameLayout.this.f4090b.a(this.f4094b, this.f4095c, this.f4096d);
        }
    }

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4092d = 0;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.AppLovinAspectRatioFrameLayout, 0, 0);
            try {
                this.f4092d = obtainStyledAttributes.getInt(R.styleable.AppLovinAspectRatioFrameLayout_al_resize_mode, 0);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
        this.f4089a = new b();
    }

    public int getResizeMode() {
        return this.f4092d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0041, code lost:
        if (r4 > 0.0f) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
        if (r4 > 0.0f) goto L21;
     */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void onMeasure(int r9, int r10) {
        /*
            r8 = this;
            super.onMeasure(r9, r10)
            float r9 = r8.f4091c
            r10 = 0
            int r9 = (r9 > r10 ? 1 : (r9 == r10 ? 0 : -1))
            if (r9 > 0) goto Lb
            return
        Lb:
            int r9 = r8.getMeasuredWidth()
            int r0 = r8.getMeasuredHeight()
            float r1 = (float) r9
            float r2 = (float) r0
            float r3 = r1 / r2
            float r4 = r8.f4091c
            float r4 = r4 / r3
            r5 = 1065353216(0x3f800000, float:1.0)
            float r4 = r4 - r5
            float r5 = java.lang.Math.abs(r4)
            r6 = 1008981770(0x3c23d70a, float:0.01)
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 > 0) goto L31
            com.applovin.exoplayer2.ui.AspectRatioFrameLayout$b r9 = r8.f4089a
            float r10 = r8.f4091c
            r0 = 0
            r9.a(r10, r3, r0)
            return
        L31:
            int r5 = r8.f4092d
            r6 = 1
            if (r5 == 0) goto L4d
            if (r5 == r6) goto L48
            r7 = 2
            if (r5 == r7) goto L43
            r7 = 4
            if (r5 == r7) goto L3f
            goto L52
        L3f:
            int r10 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r10 <= 0) goto L48
        L43:
            float r9 = r8.f4091c
            float r2 = r2 * r9
            int r9 = (int) r2
            goto L52
        L48:
            float r10 = r8.f4091c
            float r1 = r1 / r10
            int r0 = (int) r1
            goto L52
        L4d:
            int r10 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r10 <= 0) goto L43
            goto L48
        L52:
            com.applovin.exoplayer2.ui.AspectRatioFrameLayout$b r10 = r8.f4089a
            float r1 = r8.f4091c
            r10.a(r1, r3, r6)
            r10 = 1073741824(0x40000000, float:2.0)
            int r9 = android.view.View.MeasureSpec.makeMeasureSpec(r9, r10)
            int r10 = android.view.View.MeasureSpec.makeMeasureSpec(r0, r10)
            super.onMeasure(r9, r10)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.ui.AspectRatioFrameLayout.onMeasure(int, int):void");
    }

    public void setAspectRatio(float f2) {
        if (this.f4091c != f2) {
            this.f4091c = f2;
            requestLayout();
        }
    }

    public void setAspectRatioListener(a aVar) {
        this.f4090b = aVar;
    }

    public void setResizeMode(int i) {
        if (this.f4092d != i) {
            this.f4092d = i;
            requestLayout();
        }
    }
}
