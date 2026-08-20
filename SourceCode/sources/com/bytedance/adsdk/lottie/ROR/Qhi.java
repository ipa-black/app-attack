package com.bytedance.adsdk.lottie.ROR;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.bytedance.adsdk.lottie.ROR;
/* compiled from: Keyframe.java */
/* loaded from: classes2.dex */
public class Qhi<T> {
    private int ABk;
    public final Interpolator CJ;
    private float Gm;
    public final T Qhi;
    public Float ROR;
    public PointF Sf;
    public final float Tgh;
    private final ROR WAv;
    public final Interpolator ac;
    public T cJ;
    public final Interpolator fl;
    public PointF hm;
    private float hpZ;
    private int iMK;
    private float pA;
    private float zc;

    public Qhi(ROR ror, T t, T t2, Interpolator interpolator, float f2, Float f3) {
        this.Gm = -3987645.8f;
        this.zc = -3987645.8f;
        this.ABk = 784923401;
        this.iMK = 784923401;
        this.pA = Float.MIN_VALUE;
        this.hpZ = Float.MIN_VALUE;
        this.Sf = null;
        this.hm = null;
        this.WAv = ror;
        this.Qhi = t;
        this.cJ = t2;
        this.ac = interpolator;
        this.CJ = null;
        this.fl = null;
        this.Tgh = f2;
        this.ROR = f3;
    }

    public Qhi(ROR ror, T t, T t2, Interpolator interpolator, Interpolator interpolator2, float f2, Float f3) {
        this.Gm = -3987645.8f;
        this.zc = -3987645.8f;
        this.ABk = 784923401;
        this.iMK = 784923401;
        this.pA = Float.MIN_VALUE;
        this.hpZ = Float.MIN_VALUE;
        this.Sf = null;
        this.hm = null;
        this.WAv = ror;
        this.Qhi = t;
        this.cJ = t2;
        this.ac = null;
        this.CJ = interpolator;
        this.fl = interpolator2;
        this.Tgh = f2;
        this.ROR = f3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Qhi(ROR ror, T t, T t2, Interpolator interpolator, Interpolator interpolator2, Interpolator interpolator3, float f2, Float f3) {
        this.Gm = -3987645.8f;
        this.zc = -3987645.8f;
        this.ABk = 784923401;
        this.iMK = 784923401;
        this.pA = Float.MIN_VALUE;
        this.hpZ = Float.MIN_VALUE;
        this.Sf = null;
        this.hm = null;
        this.WAv = ror;
        this.Qhi = t;
        this.cJ = t2;
        this.ac = interpolator;
        this.CJ = interpolator2;
        this.fl = interpolator3;
        this.Tgh = f2;
        this.ROR = f3;
    }

    public Qhi(T t) {
        this.Gm = -3987645.8f;
        this.zc = -3987645.8f;
        this.ABk = 784923401;
        this.iMK = 784923401;
        this.pA = Float.MIN_VALUE;
        this.hpZ = Float.MIN_VALUE;
        this.Sf = null;
        this.hm = null;
        this.WAv = null;
        this.Qhi = t;
        this.cJ = t;
        this.ac = null;
        this.CJ = null;
        this.fl = null;
        this.Tgh = Float.MIN_VALUE;
        this.ROR = Float.valueOf(Float.MAX_VALUE);
    }

    private Qhi(T t, T t2) {
        this.Gm = -3987645.8f;
        this.zc = -3987645.8f;
        this.ABk = 784923401;
        this.iMK = 784923401;
        this.pA = Float.MIN_VALUE;
        this.hpZ = Float.MIN_VALUE;
        this.Sf = null;
        this.hm = null;
        this.WAv = null;
        this.Qhi = t;
        this.cJ = t2;
        this.ac = null;
        this.CJ = null;
        this.fl = null;
        this.Tgh = Float.MIN_VALUE;
        this.ROR = Float.valueOf(Float.MAX_VALUE);
    }

    public Qhi<T> Qhi(T t, T t2) {
        return new Qhi<>(t, t2);
    }

    public float ac() {
        ROR ror = this.WAv;
        if (ror == null) {
            return 0.0f;
        }
        if (this.pA == Float.MIN_VALUE) {
            this.pA = (this.Tgh - ror.Tgh()) / this.WAv.ABk();
        }
        return this.pA;
    }

    public float CJ() {
        if (this.WAv == null) {
            return 1.0f;
        }
        if (this.hpZ == Float.MIN_VALUE) {
            if (this.ROR == null) {
                this.hpZ = 1.0f;
            } else {
                this.hpZ = ac() + ((this.ROR.floatValue() - this.Tgh) / this.WAv.ABk());
            }
        }
        return this.hpZ;
    }

    public boolean fl() {
        return this.ac == null && this.CJ == null && this.fl == null;
    }

    public boolean Qhi(float f2) {
        return f2 >= ac() && f2 < CJ();
    }

    public float Tgh() {
        if (this.Gm == -3987645.8f) {
            this.Gm = ((Float) this.Qhi).floatValue();
        }
        return this.Gm;
    }

    public float ROR() {
        if (this.zc == -3987645.8f) {
            this.zc = ((Float) this.cJ).floatValue();
        }
        return this.zc;
    }

    public int Sf() {
        if (this.ABk == 784923401) {
            this.ABk = ((Integer) this.Qhi).intValue();
        }
        return this.ABk;
    }

    public int hm() {
        if (this.iMK == 784923401) {
            this.iMK = ((Integer) this.cJ).intValue();
        }
        return this.iMK;
    }

    public String toString() {
        return "Keyframe{startValue=" + this.Qhi + ", endValue=" + this.cJ + ", startFrame=" + this.Tgh + ", endFrame=" + this.ROR + ", interpolator=" + this.ac + '}';
    }
}
