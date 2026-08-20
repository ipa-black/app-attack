package com.bytedance.adsdk.lottie.ac.cJ;

import android.graphics.PointF;
/* compiled from: PolystarShape.java */
/* loaded from: classes2.dex */
public class Gm implements ac {
    private final com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> CJ;
    private final boolean Gm;
    private final String Qhi;
    private final com.bytedance.adsdk.lottie.ac.Qhi.cJ ROR;
    private final com.bytedance.adsdk.lottie.ac.Qhi.cJ Sf;
    private final com.bytedance.adsdk.lottie.ac.Qhi.cJ Tgh;
    private final boolean WAv;
    private final com.bytedance.adsdk.lottie.ac.Qhi.cJ ac;
    private final Qhi cJ;
    private final com.bytedance.adsdk.lottie.ac.Qhi.cJ fl;
    private final com.bytedance.adsdk.lottie.ac.Qhi.cJ hm;

    /* compiled from: PolystarShape.java */
    /* loaded from: classes2.dex */
    public enum Qhi {
        STAR(1),
        POLYGON(2);
        
        private final int ac;

        Qhi(int i) {
            this.ac = i;
        }

        public static Qhi Qhi(int i) {
            Qhi[] values;
            for (Qhi qhi : values()) {
                if (qhi.ac == i) {
                    return qhi;
                }
            }
            return null;
        }
    }

    public Gm(String str, Qhi qhi, com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar, com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> imk, com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar2, com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar3, com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar4, com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar5, com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar6, boolean z, boolean z2) {
        this.Qhi = str;
        this.cJ = qhi;
        this.ac = cJVar;
        this.CJ = imk;
        this.fl = cJVar2;
        this.Tgh = cJVar3;
        this.ROR = cJVar4;
        this.Sf = cJVar5;
        this.hm = cJVar6;
        this.WAv = z;
        this.Gm = z2;
    }

    public String Qhi() {
        return this.Qhi;
    }

    public Qhi cJ() {
        return this.cJ;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.cJ ac() {
        return this.ac;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.iMK<PointF, PointF> CJ() {
        return this.CJ;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.cJ fl() {
        return this.fl;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.cJ Tgh() {
        return this.Tgh;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.cJ ROR() {
        return this.ROR;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.cJ Sf() {
        return this.Sf;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.cJ hm() {
        return this.hm;
    }

    public boolean WAv() {
        return this.WAv;
    }

    public boolean Gm() {
        return this.Gm;
    }

    @Override // com.bytedance.adsdk.lottie.ac.cJ.ac
    public com.bytedance.adsdk.lottie.Qhi.Qhi.ac Qhi(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ROR ror, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi) {
        return new com.bytedance.adsdk.lottie.Qhi.Qhi.pA(hmVar, qhi, this);
    }
}
