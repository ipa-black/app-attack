package com.explorestack.iab.utils;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.core.view.ViewCompat;
/* loaded from: classes2.dex */
public class b extends Drawable implements Animatable {

    /* renamed from: g  reason: collision with root package name */
    public static final Interpolator f9411g = new LinearInterpolator();

    /* renamed from: h  reason: collision with root package name */
    public static final Interpolator f9412h = new a();
    public static final int[] i = {ViewCompat.MEASURED_STATE_MASK};

    /* renamed from: a  reason: collision with root package name */
    public final d f9413a;

    /* renamed from: b  reason: collision with root package name */
    public float f9414b;

    /* renamed from: c  reason: collision with root package name */
    public Resources f9415c;

    /* renamed from: d  reason: collision with root package name */
    public Animator f9416d;

    /* renamed from: e  reason: collision with root package name */
    public float f9417e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f9418f;

    /* loaded from: classes2.dex */
    public class a implements Interpolator {

        /* renamed from: a  reason: collision with root package name */
        public final float[] f9419a = {0.0f, 1.0E-4f, 2.0E-4f, 5.0E-4f, 9.0E-4f, 0.0014f, 0.002f, 0.0027f, 0.0036f, 0.0046f, 0.0058f, 0.0071f, 0.0085f, 0.0101f, 0.0118f, 0.0137f, 0.0158f, 0.018f, 0.0205f, 0.0231f, 0.0259f, 0.0289f, 0.0321f, 0.0355f, 0.0391f, 0.043f, 0.0471f, 0.0514f, 0.056f, 0.0608f, 0.066f, 0.0714f, 0.0771f, 0.083f, 0.0893f, 0.0959f, 0.1029f, 0.1101f, 0.1177f, 0.1257f, 0.1339f, 0.1426f, 0.1516f, 0.161f, 0.1707f, 0.1808f, 0.1913f, 0.2021f, 0.2133f, 0.2248f, 0.2366f, 0.2487f, 0.2611f, 0.2738f, 0.2867f, 0.2998f, 0.3131f, 0.3265f, 0.34f, 0.3536f, 0.3673f, 0.381f, 0.3946f, 0.4082f, 0.4217f, 0.4352f, 0.4485f, 0.4616f, 0.4746f, 0.4874f, 0.5f, 0.5124f, 0.5246f, 0.5365f, 0.5482f, 0.5597f, 0.571f, 0.582f, 0.5928f, 0.6033f, 0.6136f, 0.6237f, 0.6335f, 0.6431f, 0.6525f, 0.6616f, 0.6706f, 0.6793f, 0.6878f, 0.6961f, 0.7043f, 0.7122f, 0.7199f, 0.7275f, 0.7349f, 0.7421f, 0.7491f, 0.7559f, 0.7626f, 0.7692f, 0.7756f, 0.7818f, 0.7879f, 0.7938f, 0.7996f, 0.8053f, 0.8108f, 0.8162f, 0.8215f, 0.8266f, 0.8317f, 0.8366f, 0.8414f, 0.8461f, 0.8507f, 0.8551f, 0.8595f, 0.8638f, 0.8679f, 0.872f, 0.876f, 0.8798f, 0.8836f, 0.8873f, 0.8909f, 0.8945f, 0.8979f, 0.9013f, 0.9046f, 0.9078f, 0.9109f, 0.9139f, 0.9169f, 0.9198f, 0.9227f, 0.9254f, 0.9281f, 0.9307f, 0.9333f, 0.9358f, 0.9382f, 0.9406f, 0.9429f, 0.9452f, 0.9474f, 0.9495f, 0.9516f, 0.9536f, 0.9556f, 0.9575f, 0.9594f, 0.9612f, 0.9629f, 0.9646f, 0.9663f, 0.9679f, 0.9695f, 0.971f, 0.9725f, 0.9739f, 0.9753f, 0.9766f, 0.9779f, 0.9791f, 0.9803f, 0.9815f, 0.9826f, 0.9837f, 0.9848f, 0.9858f, 0.9867f, 0.9877f, 0.9885f, 0.9894f, 0.9902f, 0.991f, 0.9917f, 0.9924f, 0.9931f, 0.9937f, 0.9944f, 0.9949f, 0.9955f, 0.996f, 0.9964f, 0.9969f, 0.9973f, 0.9977f, 0.998f, 0.9984f, 0.9986f, 0.9989f, 0.9991f, 0.9993f, 0.9995f, 0.9997f, 0.9998f, 0.9999f, 0.9999f, 1.0f, 1.0f};

        /* renamed from: b  reason: collision with root package name */
        public final float f9420b = 1.0f / 200;

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f2) {
            if (f2 >= 1.0f) {
                return 1.0f;
            }
            if (f2 <= 0.0f) {
                return 0.0f;
            }
            float[] fArr = this.f9419a;
            int min = Math.min((int) ((fArr.length - 1) * f2), fArr.length - 2);
            float f3 = this.f9420b;
            float f4 = (f2 - (min * f3)) / f3;
            float[] fArr2 = this.f9419a;
            float f5 = fArr2[min];
            return f5 + (f4 * (fArr2[min + 1] - f5));
        }
    }

    /* renamed from: com.explorestack.iab.utils.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0259b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ d f9421a;

        public C0259b(d dVar) {
            this.f9421a = dVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            b.this.b(floatValue, this.f9421a);
            b.this.a(floatValue, this.f9421a, false);
            b.this.invalidateSelf();
        }
    }

    /* loaded from: classes2.dex */
    public class c implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ d f9423a;

        public c(d dVar) {
            this.f9423a = dVar;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            b.this.a(1.0f, this.f9423a, true);
            this.f9423a.l();
            this.f9423a.j();
            if (!b.this.f9418f) {
                b.this.f9417e += 1.0f;
                return;
            }
            b.this.f9418f = false;
            animator.cancel();
            animator.setDuration(1332L);
            animator.start();
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            b.this.f9417e = 0.0f;
        }
    }

    /* loaded from: classes2.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        public final RectF f9425a = new RectF();

        /* renamed from: b  reason: collision with root package name */
        public final Paint f9426b;

        /* renamed from: c  reason: collision with root package name */
        public final Paint f9427c;

        /* renamed from: d  reason: collision with root package name */
        public final Paint f9428d;

        /* renamed from: e  reason: collision with root package name */
        public final Paint f9429e;

        /* renamed from: f  reason: collision with root package name */
        public float f9430f;

        /* renamed from: g  reason: collision with root package name */
        public float f9431g;

        /* renamed from: h  reason: collision with root package name */
        public float f9432h;
        public float i;
        public int[] j;
        public int k;
        public float l;
        public float m;
        public float n;
        public float o;
        public int p;
        public int q;

        public d() {
            Paint paint = new Paint();
            this.f9426b = paint;
            Paint paint2 = new Paint();
            this.f9427c = paint2;
            Paint paint3 = new Paint();
            this.f9428d = paint3;
            Paint paint4 = new Paint();
            this.f9429e = paint4;
            this.f9430f = 0.0f;
            this.f9431g = 0.0f;
            this.f9432h = 0.0f;
            this.i = 5.0f;
            this.p = 255;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
            paint4.setColor(0);
        }

        public int a() {
            return this.p;
        }

        public void a(float f2) {
            this.o = f2;
        }

        public void a(int i) {
            this.p = i;
        }

        public void a(Canvas canvas, Rect rect) {
            RectF rectF = this.f9425a;
            float f2 = this.o;
            float f3 = (this.i / 2.0f) + f2;
            if (f2 <= 0.0f) {
                f3 = (Math.min(rect.width(), rect.height()) / 2.0f) - (this.i / 2.0f);
            }
            rectF.set(rect.centerX() - f3, rect.centerY() - f3, rect.centerX() + f3, rect.centerY() + f3);
            float f4 = this.f9430f;
            float f5 = this.f9432h;
            float f6 = (f4 + f5) * 360.0f;
            this.f9426b.setColor(this.q);
            this.f9426b.setAlpha(this.p);
            float f7 = this.i / 2.0f;
            rectF.inset(f7, f7);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f9428d);
            float f8 = -f7;
            rectF.inset(f8, f8);
            canvas.drawArc(rectF, f6, ((this.f9431g + f5) * 360.0f) - f6, false, this.f9426b);
        }

        public void a(ColorFilter colorFilter) {
            this.f9426b.setColorFilter(colorFilter);
        }

        public void a(Paint.Cap cap) {
            this.f9426b.setStrokeCap(cap);
        }

        public void a(int[] iArr) {
            this.j = iArr;
            c(0);
        }

        public float b() {
            return this.f9431g;
        }

        public void b(float f2) {
            this.f9431g = f2;
        }

        public void b(int i) {
            this.q = i;
        }

        public int c() {
            return this.j[d()];
        }

        public void c(float f2) {
            this.f9432h = f2;
        }

        public void c(int i) {
            this.k = i;
            this.q = this.j[i];
        }

        public int d() {
            return (this.k + 1) % this.j.length;
        }

        public void d(float f2) {
            this.f9430f = f2;
        }

        public float e() {
            return this.f9430f;
        }

        public void e(float f2) {
            this.i = f2;
            this.f9426b.setStrokeWidth(f2);
        }

        public int f() {
            return this.j[this.k];
        }

        public float g() {
            return this.m;
        }

        public float h() {
            return this.n;
        }

        public float i() {
            return this.l;
        }

        public void j() {
            c(d());
        }

        public void k() {
            this.l = 0.0f;
            this.m = 0.0f;
            this.n = 0.0f;
            d(0.0f);
            b(0.0f);
            c(0.0f);
        }

        public void l() {
            this.l = this.f9430f;
            this.m = this.f9431g;
            this.n = this.f9432h;
        }
    }

    public b(Context context) {
        this.f9415c = context.getResources();
        d dVar = new d();
        this.f9413a = dVar;
        dVar.a(i);
        c(2.5f);
        b();
    }

    public float a() {
        return this.f9413a.i;
    }

    public final int a(float f2, int i2, int i3) {
        int i4 = (i2 >> 24) & 255;
        int i5 = (i2 >> 16) & 255;
        int i6 = (i2 >> 8) & 255;
        int i7 = i2 & 255;
        return ((i4 + ((int) ((((i3 >> 24) & 255) - i4) * f2))) << 24) | ((i5 + ((int) ((((i3 >> 16) & 255) - i5) * f2))) << 16) | ((i6 + ((int) ((((i3 >> 8) & 255) - i6) * f2))) << 8) | (i7 + ((int) (f2 * ((i3 & 255) - i7))));
    }

    public void a(float f2) {
        this.f9413a.a(f2);
        invalidateSelf();
    }

    public final void a(float f2, d dVar) {
        b(f2, dVar);
        dVar.d(dVar.i() + (((dVar.g() - 0.01f) - dVar.i()) * f2));
        dVar.b(dVar.g());
        dVar.c(dVar.h() + ((((float) (Math.floor(dVar.h() / 0.8f) + 1.0d)) - dVar.h()) * f2));
    }

    public final void a(float f2, d dVar, boolean z) {
        float interpolation;
        float f3;
        if (this.f9418f) {
            a(f2, dVar);
        } else if (f2 != 1.0f || z) {
            float h2 = dVar.h();
            if (f2 < 0.5f) {
                interpolation = dVar.i();
                f3 = (f9412h.getInterpolation(f2 / 0.5f) * 0.79f) + interpolation + 0.01f;
            } else {
                float i2 = dVar.i() + 0.79f;
                interpolation = i2 - (((1.0f - f9412h.getInterpolation((f2 - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                f3 = i2;
            }
            dVar.d(interpolation);
            dVar.b(f3);
            dVar.c(h2 + (0.20999998f * f2));
            b((f2 + this.f9417e) * 216.0f);
        }
    }

    public void a(Paint.Cap cap) {
        this.f9413a.a(cap);
        invalidateSelf();
    }

    public void a(int... iArr) {
        this.f9413a.a(iArr);
        this.f9413a.c(0);
        invalidateSelf();
    }

    public final void b() {
        d dVar = this.f9413a;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new C0259b(dVar));
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f9411g);
        ofFloat.addListener(new c(dVar));
        this.f9416d = ofFloat;
    }

    public final void b(float f2) {
        this.f9414b = f2;
    }

    public final void b(float f2, d dVar) {
        dVar.b(f2 > 0.75f ? a((f2 - 0.75f) / 0.25f, dVar.f(), dVar.c()) : dVar.f());
    }

    public void c(float f2) {
        this.f9413a.e(f2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f9414b, bounds.exactCenterX(), bounds.exactCenterY());
        this.f9413a.a(canvas, bounds);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f9413a.a();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f9416d.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f9413a.a(i2);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f9413a.a(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        Animator animator;
        long j;
        this.f9416d.cancel();
        this.f9413a.l();
        if (this.f9413a.b() != this.f9413a.e()) {
            this.f9418f = true;
            animator = this.f9416d;
            j = 666;
        } else {
            this.f9413a.c(0);
            this.f9413a.k();
            animator = this.f9416d;
            j = 1332;
        }
        animator.setDuration(j);
        this.f9416d.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f9416d.cancel();
        b(0.0f);
        this.f9413a.c(0);
        this.f9413a.k();
        invalidateSelf();
    }
}
