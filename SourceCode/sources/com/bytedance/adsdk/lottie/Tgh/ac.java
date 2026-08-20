package com.bytedance.adsdk.lottie.Tgh;

import android.view.Choreographer;
/* compiled from: LottieValueAnimator.java */
/* loaded from: classes2.dex */
public class ac extends Qhi implements Choreographer.FrameCallback {
    private com.bytedance.adsdk.lottie.ROR WAv;
    private float cJ = 1.0f;
    private boolean ac = false;
    private long CJ = 0;
    private float fl = 0.0f;
    private float Tgh = 0.0f;
    private int ROR = 0;
    private float Sf = -2.14748365E9f;
    private float hm = 2.14748365E9f;
    protected boolean Qhi = false;
    private boolean Gm = false;

    @Override // android.animation.ValueAnimator
    public Object getAnimatedValue() {
        return Float.valueOf(Tgh());
    }

    public float Tgh() {
        com.bytedance.adsdk.lottie.ROR ror = this.WAv;
        if (ror == null) {
            return 0.0f;
        }
        return (this.Tgh - ror.Tgh()) / (this.WAv.ROR() - this.WAv.Tgh());
    }

    @Override // android.animation.ValueAnimator
    public float getAnimatedFraction() {
        float pA;
        float hpZ;
        float pA2;
        if (this.WAv == null) {
            return 0.0f;
        }
        if (MQ()) {
            pA = hpZ() - this.Tgh;
            hpZ = hpZ();
            pA2 = pA();
        } else {
            pA = this.Tgh - pA();
            hpZ = hpZ();
            pA2 = pA();
        }
        return pA / (hpZ - pA2);
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public long getDuration() {
        com.bytedance.adsdk.lottie.ROR ror = this.WAv;
        if (ror == null) {
            return 0L;
        }
        return ror.fl();
    }

    public float ROR() {
        return this.Tgh;
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public boolean isRunning() {
        return this.Qhi;
    }

    public void ac(boolean z) {
        this.Gm = z;
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j) {
        HzH();
        if (this.WAv == null || !isRunning()) {
            return;
        }
        com.bytedance.adsdk.lottie.Tgh.Qhi("LottieValueAnimator#doFrame");
        long j2 = this.CJ;
        float tP = ((float) (j2 != 0 ? j - j2 : 0L)) / tP();
        float f2 = this.fl;
        if (MQ()) {
            tP = -tP;
        }
        float f3 = f2 + tP;
        boolean z = !Tgh.ac(f3, pA(), hpZ());
        float f4 = this.fl;
        float cJ = Tgh.cJ(f3, pA(), hpZ());
        this.fl = cJ;
        if (this.Gm) {
            cJ = (float) Math.floor(cJ);
        }
        this.Tgh = cJ;
        this.CJ = j;
        if (!this.Gm || this.fl != f4) {
            ac();
        }
        if (z) {
            if (getRepeatCount() != -1 && this.ROR >= getRepeatCount()) {
                float pA = this.cJ < 0.0f ? pA() : hpZ();
                this.fl = pA;
                this.Tgh = pA;
                kYc();
                cJ(MQ());
            } else {
                Qhi();
                this.ROR++;
                if (getRepeatMode() == 2) {
                    this.ac = !this.ac;
                    hm();
                } else {
                    float hpZ = MQ() ? hpZ() : pA();
                    this.fl = hpZ;
                    this.Tgh = hpZ;
                }
                this.CJ = j;
            }
        }
        qMt();
        com.bytedance.adsdk.lottie.Tgh.cJ("LottieValueAnimator#doFrame");
    }

    private float tP() {
        com.bytedance.adsdk.lottie.ROR ror = this.WAv;
        if (ror == null) {
            return Float.MAX_VALUE;
        }
        return (1.0E9f / ror.Sf()) / Math.abs(this.cJ);
    }

    public void Sf() {
        this.WAv = null;
        this.Sf = -2.14748365E9f;
        this.hm = 2.14748365E9f;
    }

    public void Qhi(com.bytedance.adsdk.lottie.ROR ror) {
        boolean z = this.WAv == null;
        this.WAv = ror;
        if (z) {
            Qhi(Math.max(this.Sf, ror.Tgh()), Math.min(this.hm, ror.ROR()));
        } else {
            Qhi((int) ror.Tgh(), (int) ror.ROR());
        }
        float f2 = this.Tgh;
        this.Tgh = 0.0f;
        this.fl = 0.0f;
        Qhi((int) f2);
        ac();
    }

    public void Qhi(float f2) {
        if (this.fl == f2) {
            return;
        }
        float cJ = Tgh.cJ(f2, pA(), hpZ());
        this.fl = cJ;
        if (this.Gm) {
            cJ = (float) Math.floor(cJ);
        }
        this.Tgh = cJ;
        this.CJ = 0L;
        ac();
    }

    public void Qhi(int i) {
        Qhi(i, (int) this.hm);
    }

    public void cJ(float f2) {
        Qhi(this.Sf, f2);
    }

    public void Qhi(float f2, float f3) {
        if (f2 > f3) {
            throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f2), Float.valueOf(f3)));
        }
        com.bytedance.adsdk.lottie.ROR ror = this.WAv;
        float Tgh = ror == null ? -3.4028235E38f : ror.Tgh();
        com.bytedance.adsdk.lottie.ROR ror2 = this.WAv;
        float ROR = ror2 == null ? Float.MAX_VALUE : ror2.ROR();
        float cJ = Tgh.cJ(f2, Tgh, ROR);
        float cJ2 = Tgh.cJ(f3, Tgh, ROR);
        if (cJ == this.Sf && cJ2 == this.hm) {
            return;
        }
        this.Sf = cJ;
        this.hm = cJ2;
        Qhi((int) Tgh.cJ(this.Tgh, cJ, cJ2));
    }

    public void hm() {
        ac(-WAv());
    }

    public void ac(float f2) {
        this.cJ = f2;
    }

    public float WAv() {
        return this.cJ;
    }

    @Override // android.animation.ValueAnimator
    public void setRepeatMode(int i) {
        super.setRepeatMode(i);
        if (i == 2 || !this.ac) {
            return;
        }
        this.ac = false;
        hm();
    }

    public void Gm() {
        this.Qhi = true;
        Qhi(MQ());
        Qhi((int) (MQ() ? hpZ() : pA()));
        this.CJ = 0L;
        this.ROR = 0;
        HzH();
    }

    public void zc() {
        kYc();
        cJ(MQ());
    }

    public void ABk() {
        kYc();
        CJ();
    }

    public void iMK() {
        this.Qhi = true;
        HzH();
        this.CJ = 0L;
        if (MQ() && ROR() == pA()) {
            Qhi(hpZ());
        } else if (!MQ() && ROR() == hpZ()) {
            Qhi(pA());
        }
        fl();
    }

    @Override // android.animation.ValueAnimator, android.animation.Animator
    public void cancel() {
        cJ();
        kYc();
    }

    private boolean MQ() {
        return WAv() < 0.0f;
    }

    public float pA() {
        com.bytedance.adsdk.lottie.ROR ror = this.WAv;
        if (ror == null) {
            return 0.0f;
        }
        float f2 = this.Sf;
        return f2 == -2.14748365E9f ? ror.Tgh() : f2;
    }

    public float hpZ() {
        com.bytedance.adsdk.lottie.ROR ror = this.WAv;
        if (ror == null) {
            return 0.0f;
        }
        float f2 = this.hm;
        return f2 == 2.14748365E9f ? ror.ROR() : f2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.bytedance.adsdk.lottie.Tgh.Qhi
    public void cJ() {
        super.cJ();
        cJ(MQ());
    }

    protected void HzH() {
        if (isRunning()) {
            CJ(false);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    protected void kYc() {
        CJ(true);
    }

    protected void CJ(boolean z) {
        Choreographer.getInstance().removeFrameCallback(this);
        if (z) {
            this.Qhi = false;
        }
    }

    private void qMt() {
        if (this.WAv == null) {
            return;
        }
        float f2 = this.Tgh;
        if (f2 < this.Sf || f2 > this.hm) {
            throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.Sf), Float.valueOf(this.hm), Float.valueOf(this.Tgh)));
        }
    }
}
