package com.applovin.exoplayer2.ui;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.ui.k;
import com.applovin.sdk.R;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.ui.DefaultTimeBar;
import java.util.Collections;
import java.util.Formatter;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes.dex */
public class d extends View implements k {
    private int A;
    private long B;
    private int C;
    private Rect D;
    private ValueAnimator E;
    private float F;
    private boolean G;
    private boolean H;
    private long I;
    private long J;
    private long K;
    private long L;
    private int M;
    private long[] N;
    private boolean[] O;

    /* renamed from: a  reason: collision with root package name */
    private final Rect f4122a;

    /* renamed from: b  reason: collision with root package name */
    private final Rect f4123b;

    /* renamed from: c  reason: collision with root package name */
    private final Rect f4124c;

    /* renamed from: d  reason: collision with root package name */
    private final Rect f4125d;

    /* renamed from: e  reason: collision with root package name */
    private final Paint f4126e;

    /* renamed from: f  reason: collision with root package name */
    private final Paint f4127f;

    /* renamed from: g  reason: collision with root package name */
    private final Paint f4128g;

    /* renamed from: h  reason: collision with root package name */
    private final Paint f4129h;
    private final Paint i;
    private final Paint j;
    private final Drawable k;
    private final int l;
    private final int m;
    private final int n;
    private final int o;
    private final int p;
    private final int q;
    private final int r;
    private final int s;
    private final int t;
    private final StringBuilder u;
    private final Formatter v;
    private final Runnable w;
    private final CopyOnWriteArraySet<k.a> x;
    private final Point y;
    private final float z;

    public d(Context context, AttributeSet attributeSet, int i, AttributeSet attributeSet2) {
        this(context, attributeSet, i, attributeSet2, 0);
    }

    public d(Context context, AttributeSet attributeSet, int i, AttributeSet attributeSet2, int i2) {
        super(context, attributeSet, i);
        int i3;
        int max;
        this.f4122a = new Rect();
        this.f4123b = new Rect();
        this.f4124c = new Rect();
        this.f4125d = new Rect();
        Paint paint = new Paint();
        this.f4126e = paint;
        Paint paint2 = new Paint();
        this.f4127f = paint2;
        Paint paint3 = new Paint();
        this.f4128g = paint3;
        Paint paint4 = new Paint();
        this.f4129h = paint4;
        Paint paint5 = new Paint();
        this.i = paint5;
        Paint paint6 = new Paint();
        this.j = paint6;
        paint6.setAntiAlias(true);
        this.x = new CopyOnWriteArraySet<>();
        this.y = new Point();
        float f2 = context.getResources().getDisplayMetrics().density;
        this.z = f2;
        this.t = a(f2, -50);
        int a2 = a(f2, 4);
        int a3 = a(f2, 26);
        int a4 = a(f2, 4);
        int a5 = a(f2, 12);
        int a6 = a(f2, 0);
        int a7 = a(f2, 16);
        if (attributeSet2 != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R.styleable.AppLovinDefaultTimeBar, i, i2);
            try {
                Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.AppLovinDefaultTimeBar_al_scrubber_drawable);
                this.k = drawable;
                if (drawable != null) {
                    a(drawable);
                    a3 = Math.max(drawable.getMinimumHeight(), a3);
                }
                this.l = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_bar_height, a2);
                this.m = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_touch_target_height, a3);
                this.n = obtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_bar_gravity, 0);
                this.o = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_ad_marker_width, a4);
                this.p = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_scrubber_enabled_size, a5);
                this.q = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_scrubber_disabled_size, a6);
                this.r = obtainStyledAttributes.getDimensionPixelSize(R.styleable.AppLovinDefaultTimeBar_al_scrubber_dragged_size, a7);
                int i4 = obtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_played_color, -1);
                int i5 = obtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_scrubber_color, -1);
                int i6 = obtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_buffered_color, DefaultTimeBar.DEFAULT_BUFFERED_COLOR);
                int i7 = obtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_unplayed_color, DefaultTimeBar.DEFAULT_UNPLAYED_COLOR);
                int i8 = obtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_ad_marker_color, DefaultTimeBar.DEFAULT_AD_MARKER_COLOR);
                int i9 = obtainStyledAttributes.getInt(R.styleable.AppLovinDefaultTimeBar_al_played_ad_marker_color, DefaultTimeBar.DEFAULT_PLAYED_AD_MARKER_COLOR);
                paint.setColor(i4);
                paint6.setColor(i5);
                paint2.setColor(i6);
                paint3.setColor(i7);
                paint4.setColor(i8);
                paint5.setColor(i9);
            } finally {
                obtainStyledAttributes.recycle();
            }
        } else {
            this.l = a2;
            this.m = a3;
            this.n = 0;
            this.o = a4;
            this.p = a5;
            this.q = a6;
            this.r = a7;
            paint.setColor(-1);
            paint6.setColor(-1);
            paint2.setColor(DefaultTimeBar.DEFAULT_BUFFERED_COLOR);
            paint3.setColor(DefaultTimeBar.DEFAULT_UNPLAYED_COLOR);
            paint4.setColor(DefaultTimeBar.DEFAULT_AD_MARKER_COLOR);
            paint5.setColor(DefaultTimeBar.DEFAULT_PLAYED_AD_MARKER_COLOR);
            this.k = null;
        }
        StringBuilder sb = new StringBuilder();
        this.u = sb;
        this.v = new Formatter(sb, Locale.getDefault());
        this.w = new Runnable() { // from class: com.applovin.exoplayer2.ui.d$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                d.this.c();
            }
        };
        Drawable drawable2 = this.k;
        if (drawable2 != null) {
            max = drawable2.getMinimumWidth();
            i3 = 1;
        } else {
            i3 = 1;
            max = Math.max(this.q, Math.max(this.p, this.r));
        }
        this.s = (max + i3) / 2;
        this.F = 1.0f;
        ValueAnimator valueAnimator = new ValueAnimator();
        this.E = valueAnimator;
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.applovin.exoplayer2.ui.d$$ExternalSyntheticLambda1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                d.this.a(valueAnimator2);
            }
        });
        this.J = C.TIME_UNSET;
        this.B = C.TIME_UNSET;
        this.A = 20;
        setFocusable(true);
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    private static int a(float f2, int i) {
        return (int) ((i * f2) + 0.5f);
    }

    private Point a(MotionEvent motionEvent) {
        this.y.set((int) motionEvent.getX(), (int) motionEvent.getY());
        return this.y;
    }

    private void a() {
        this.f4124c.set(this.f4123b);
        this.f4125d.set(this.f4123b);
        long j = this.H ? this.I : this.K;
        if (this.J > 0) {
            this.f4124c.right = Math.min(this.f4123b.left + ((int) ((this.f4123b.width() * this.L) / this.J)), this.f4123b.right);
            this.f4125d.right = Math.min(this.f4123b.left + ((int) ((this.f4123b.width() * j) / this.J)), this.f4123b.right);
        } else {
            this.f4124c.right = this.f4123b.left;
            this.f4125d.right = this.f4123b.left;
        }
        invalidate(this.f4122a);
    }

    private void a(float f2) {
        this.f4125d.right = ai.a((int) f2, this.f4123b.left, this.f4123b.right);
    }

    private void a(int i, int i2) {
        Rect rect = this.D;
        if (rect != null && rect.width() == i && this.D.height() == i2) {
            return;
        }
        Rect rect2 = new Rect(0, 0, i, i2);
        this.D = rect2;
        setSystemGestureExclusionRects(Collections.singletonList(rect2));
    }

    private void a(long j) {
        this.I = j;
        this.H = true;
        setPressed(true);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        Iterator<k.a> it = this.x.iterator();
        while (it.hasNext()) {
            it.next().a(this, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(ValueAnimator valueAnimator) {
        this.F = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        invalidate(this.f4122a);
    }

    private void a(Canvas canvas) {
        int min;
        int height = this.f4123b.height();
        int centerY = this.f4123b.centerY() - (height / 2);
        int i = height + centerY;
        if (this.J <= 0) {
            canvas.drawRect(this.f4123b.left, centerY, this.f4123b.right, i, this.f4128g);
            return;
        }
        int i2 = this.f4124c.left;
        int i3 = this.f4124c.right;
        int max = Math.max(Math.max(this.f4123b.left, i3), this.f4125d.right);
        if (max < this.f4123b.right) {
            canvas.drawRect(max, centerY, this.f4123b.right, i, this.f4128g);
        }
        int max2 = Math.max(i2, this.f4125d.right);
        if (i3 > max2) {
            canvas.drawRect(max2, centerY, i3, i, this.f4127f);
        }
        if (this.f4125d.width() > 0) {
            canvas.drawRect(this.f4125d.left, centerY, this.f4125d.right, i, this.f4126e);
        }
        if (this.M == 0) {
            return;
        }
        long[] jArr = (long[]) com.applovin.exoplayer2.l.a.b(this.N);
        boolean[] zArr = (boolean[]) com.applovin.exoplayer2.l.a.b(this.O);
        int i4 = this.o / 2;
        for (int i5 = 0; i5 < this.M; i5++) {
            canvas.drawRect(this.f4123b.left + Math.min(this.f4123b.width() - this.o, Math.max(0, ((int) ((this.f4123b.width() * ai.a(jArr[i5], 0L, this.J)) / this.J)) - i4)), centerY, min + this.o, i, zArr[i5] ? this.i : this.f4129h);
        }
    }

    private void a(boolean z) {
        removeCallbacks(this.w);
        this.H = false;
        setPressed(false);
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(false);
        }
        invalidate();
        Iterator<k.a> it = this.x.iterator();
        while (it.hasNext()) {
            it.next().a(this, this.I, z);
        }
    }

    private boolean a(float f2, float f3) {
        return this.f4122a.contains((int) f2, (int) f3);
    }

    private boolean a(Drawable drawable) {
        return ai.f3781a >= 23 && a(drawable, getLayoutDirection());
    }

    private static boolean a(Drawable drawable, int i) {
        return ai.f3781a >= 23 && drawable.setLayoutDirection(i);
    }

    private static int b(float f2, int i) {
        return (int) (i / f2);
    }

    private void b() {
        Drawable drawable = this.k;
        if (drawable != null && drawable.isStateful() && this.k.setState(getDrawableState())) {
            invalidate();
        }
    }

    private void b(long j) {
        if (this.I == j) {
            return;
        }
        this.I = j;
        Iterator<k.a> it = this.x.iterator();
        while (it.hasNext()) {
            it.next().b(this, j);
        }
    }

    private void b(Canvas canvas) {
        if (this.J <= 0) {
            return;
        }
        int a2 = ai.a(this.f4125d.right, this.f4125d.left, this.f4123b.right);
        int centerY = this.f4125d.centerY();
        Drawable drawable = this.k;
        if (drawable == null) {
            canvas.drawCircle(a2, centerY, (int) ((((this.H || isFocused()) ? this.r : isEnabled() ? this.p : this.q) * this.F) / 2.0f), this.j);
            return;
        }
        int intrinsicWidth = ((int) (drawable.getIntrinsicWidth() * this.F)) / 2;
        int intrinsicHeight = ((int) (this.k.getIntrinsicHeight() * this.F)) / 2;
        this.k.setBounds(a2 - intrinsicWidth, centerY - intrinsicHeight, a2 + intrinsicWidth, centerY + intrinsicHeight);
        this.k.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        a(false);
    }

    private boolean c(long j) {
        long j2 = this.J;
        if (j2 <= 0) {
            return false;
        }
        long j3 = this.H ? this.I : this.K;
        long a2 = ai.a(j3 + j, 0L, j2);
        if (a2 == j3) {
            return false;
        }
        if (this.H) {
            b(a2);
        } else {
            a(a2);
        }
        a();
        return true;
    }

    private long getPositionIncrement() {
        long j = this.B;
        if (j == C.TIME_UNSET) {
            long j2 = this.J;
            if (j2 == C.TIME_UNSET) {
                return 0L;
            }
            return j2 / this.A;
        }
        return j;
    }

    private String getProgressText() {
        return ai.a(this.u, this.v, this.K);
    }

    private long getScrubberPosition() {
        if (this.f4123b.width() <= 0 || this.J == C.TIME_UNSET) {
            return 0L;
        }
        return (this.f4125d.width() * this.J) / this.f4123b.width();
    }

    @Override // com.applovin.exoplayer2.ui.k
    public void a(k.a aVar) {
        com.applovin.exoplayer2.l.a.b(aVar);
        this.x.add(aVar);
    }

    @Override // com.applovin.exoplayer2.ui.k
    public void a(long[] jArr, boolean[] zArr, int i) {
        com.applovin.exoplayer2.l.a.a(i == 0 || !(jArr == null || zArr == null));
        this.M = i;
        this.N = jArr;
        this.O = zArr;
        a();
    }

    @Override // android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        b();
    }

    @Override // com.applovin.exoplayer2.ui.k
    public long getPreferredUpdateDelay() {
        int b2 = b(this.z, this.f4123b.width());
        if (b2 != 0) {
            long j = this.J;
            if (j != 0 && j != C.TIME_UNSET) {
                return j / b2;
            }
        }
        return Long.MAX_VALUE;
    }

    @Override // android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.k;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        canvas.save();
        a(canvas);
        b(canvas);
        canvas.restore();
    }

    @Override // android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (!this.H || z) {
            return;
        }
        a(false);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (accessibilityEvent.getEventType() == 4) {
            accessibilityEvent.getText().add(getProgressText());
        }
        accessibilityEvent.setClassName("android.widget.SeekBar");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.SeekBar");
        accessibilityNodeInfo.setContentDescription(getProgressText());
        if (this.J <= 0) {
            return;
        }
        if (ai.f3781a >= 21) {
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
            return;
        }
        accessibilityNodeInfo.addAction(4096);
        accessibilityNodeInfo.addAction(8192);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001a  */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onKeyDown(int r5, android.view.KeyEvent r6) {
        /*
            r4 = this;
            boolean r0 = r4.isEnabled()
            if (r0 == 0) goto L30
            long r0 = r4.getPositionIncrement()
            r2 = 66
            r3 = 1
            if (r5 == r2) goto L27
            switch(r5) {
                case 21: goto L13;
                case 22: goto L14;
                case 23: goto L27;
                default: goto L12;
            }
        L12:
            goto L30
        L13:
            long r0 = -r0
        L14:
            boolean r0 = r4.c(r0)
            if (r0 == 0) goto L30
            java.lang.Runnable r5 = r4.w
            r4.removeCallbacks(r5)
            java.lang.Runnable r5 = r4.w
            r0 = 1000(0x3e8, double:4.94E-321)
            r4.postDelayed(r5, r0)
            return r3
        L27:
            boolean r0 = r4.H
            if (r0 == 0) goto L30
            r5 = 0
            r4.a(r5)
            return r3
        L30:
            boolean r5 = super.onKeyDown(r5, r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.ui.d.onKeyDown(int, android.view.KeyEvent):boolean");
    }

    @Override // android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = i3 - i;
        int i8 = i4 - i2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = i7 - getPaddingRight();
        int i9 = this.G ? 0 : this.s;
        if (this.n == 1) {
            i5 = (i8 - getPaddingBottom()) - this.m;
            int i10 = this.l;
            i6 = ((i8 - getPaddingBottom()) - i10) - Math.max(i9 - (i10 / 2), 0);
        } else {
            i5 = (i8 - this.m) / 2;
            i6 = (i8 - this.l) / 2;
        }
        this.f4122a.set(paddingLeft, i5, paddingRight, this.m + i5);
        this.f4123b.set(this.f4122a.left + i9, i6, this.f4122a.right - i9, this.l + i6);
        if (ai.f3781a >= 29) {
            a(i7, i8);
        }
        a();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == 0) {
            size = this.m;
        } else if (mode != 1073741824) {
            size = Math.min(this.m, size);
        }
        setMeasuredDimension(View.MeasureSpec.getSize(i), size);
        b();
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        Drawable drawable = this.k;
        if (drawable == null || !a(drawable, i)) {
            return;
        }
        invalidate();
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0025, code lost:
        if (r3 != 3) goto L32;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            boolean r0 = r7.isEnabled()
            r1 = 0
            if (r0 == 0) goto L6d
            long r2 = r7.J
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 > 0) goto L10
            goto L6d
        L10:
            android.graphics.Point r0 = r7.a(r8)
            int r2 = r0.x
            int r0 = r0.y
            int r3 = r8.getAction()
            r4 = 1
            if (r3 == 0) goto L5a
            r5 = 3
            if (r3 == r4) goto L4b
            r6 = 2
            if (r3 == r6) goto L28
            if (r3 == r5) goto L4b
            goto L6d
        L28:
            boolean r8 = r7.H
            if (r8 == 0) goto L6d
            int r8 = r7.t
            if (r0 >= r8) goto L37
            int r8 = r7.C
            int r2 = r2 - r8
            int r2 = r2 / r5
            int r8 = r8 + r2
            float r8 = (float) r8
            goto L3a
        L37:
            r7.C = r2
            float r8 = (float) r2
        L3a:
            r7.a(r8)
            long r0 = r7.getScrubberPosition()
            r7.b(r0)
        L44:
            r7.a()
            r7.invalidate()
            return r4
        L4b:
            boolean r0 = r7.H
            if (r0 == 0) goto L6d
            int r8 = r8.getAction()
            if (r8 != r5) goto L56
            r1 = r4
        L56:
            r7.a(r1)
            return r4
        L5a:
            float r8 = (float) r2
            float r0 = (float) r0
            boolean r0 = r7.a(r8, r0)
            if (r0 == 0) goto L6d
            r7.a(r8)
            long r0 = r7.getScrubberPosition()
            r7.a(r0)
            goto L44
        L6d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.ui.d.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001f, code lost:
        if (c(-getPositionIncrement()) != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0021, code lost:
        a(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0031, code lost:
        if (c(getPositionIncrement()) != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0034, code lost:
        sendAccessibilityEvent(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0038, code lost:
        return true;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean performAccessibilityAction(int r6, android.os.Bundle r7) {
        /*
            r5 = this;
            boolean r7 = super.performAccessibilityAction(r6, r7)
            r0 = 1
            if (r7 == 0) goto L8
            return r0
        L8:
            long r1 = r5.J
            r3 = 0
            int r7 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            r1 = 0
            if (r7 > 0) goto L12
            return r1
        L12:
            r7 = 8192(0x2000, float:1.14794E-41)
            if (r6 != r7) goto L25
            long r6 = r5.getPositionIncrement()
            long r6 = -r6
            boolean r6 = r5.c(r6)
            if (r6 == 0) goto L34
        L21:
            r5.a(r1)
            goto L34
        L25:
            r7 = 4096(0x1000, float:5.74E-42)
            if (r6 != r7) goto L39
            long r6 = r5.getPositionIncrement()
            boolean r6 = r5.c(r6)
            if (r6 == 0) goto L34
            goto L21
        L34:
            r6 = 4
            r5.sendAccessibilityEvent(r6)
            return r0
        L39:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.exoplayer2.ui.d.performAccessibilityAction(int, android.os.Bundle):boolean");
    }

    public void setAdMarkerColor(int i) {
        this.f4129h.setColor(i);
        invalidate(this.f4122a);
    }

    public void setBufferedColor(int i) {
        this.f4127f.setColor(i);
        invalidate(this.f4122a);
    }

    @Override // com.applovin.exoplayer2.ui.k
    public void setBufferedPosition(long j) {
        if (this.L == j) {
            return;
        }
        this.L = j;
        a();
    }

    @Override // com.applovin.exoplayer2.ui.k
    public void setDuration(long j) {
        if (this.J == j) {
            return;
        }
        this.J = j;
        if (this.H && j == C.TIME_UNSET) {
            a(true);
        }
        a();
    }

    @Override // android.view.View, com.applovin.exoplayer2.ui.k
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (!this.H || z) {
            return;
        }
        a(true);
    }

    public void setKeyCountIncrement(int i) {
        com.applovin.exoplayer2.l.a.a(i > 0);
        this.A = i;
        this.B = C.TIME_UNSET;
    }

    public void setKeyTimeIncrement(long j) {
        com.applovin.exoplayer2.l.a.a(j > 0);
        this.A = -1;
        this.B = j;
    }

    public void setPlayedAdMarkerColor(int i) {
        this.i.setColor(i);
        invalidate(this.f4122a);
    }

    public void setPlayedColor(int i) {
        this.f4126e.setColor(i);
        invalidate(this.f4122a);
    }

    @Override // com.applovin.exoplayer2.ui.k
    public void setPosition(long j) {
        if (this.K == j) {
            return;
        }
        this.K = j;
        setContentDescription(getProgressText());
        a();
    }

    public void setScrubberColor(int i) {
        this.j.setColor(i);
        invalidate(this.f4122a);
    }

    public void setUnplayedColor(int i) {
        this.f4128g.setColor(i);
        invalidate(this.f4122a);
    }
}
