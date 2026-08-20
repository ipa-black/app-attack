package com.bytedance.adsdk.lottie.ac.cJ;

import com.bytedance.adsdk.lottie.Qhi.Qhi.EBS;
/* compiled from: ShapeTrimPath.java */
/* loaded from: classes2.dex */
public class MQ implements ac {
    private final com.bytedance.adsdk.lottie.ac.Qhi.cJ CJ;
    private final String Qhi;
    private final boolean Tgh;
    private final com.bytedance.adsdk.lottie.ac.Qhi.cJ ac;
    private final Qhi cJ;
    private final com.bytedance.adsdk.lottie.ac.Qhi.cJ fl;

    /* compiled from: ShapeTrimPath.java */
    /* loaded from: classes2.dex */
    public enum Qhi {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static Qhi Qhi(int i) {
            if (i != 1) {
                if (i == 2) {
                    return INDIVIDUALLY;
                }
                throw new IllegalArgumentException("Unknown trim path type ".concat(String.valueOf(i)));
            }
            return SIMULTANEOUSLY;
        }
    }

    public MQ(String str, Qhi qhi, com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar, com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar2, com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar3, boolean z) {
        this.Qhi = str;
        this.cJ = qhi;
        this.ac = cJVar;
        this.CJ = cJVar2;
        this.fl = cJVar3;
        this.Tgh = z;
    }

    public String Qhi() {
        return this.Qhi;
    }

    public Qhi cJ() {
        return this.cJ;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.cJ ac() {
        return this.CJ;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.cJ CJ() {
        return this.ac;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.cJ fl() {
        return this.fl;
    }

    public boolean Tgh() {
        return this.Tgh;
    }

    @Override // com.bytedance.adsdk.lottie.ac.cJ.ac
    public com.bytedance.adsdk.lottie.Qhi.Qhi.ac Qhi(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ROR ror, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi) {
        return new EBS(qhi, this);
    }

    public String toString() {
        return "Trim Path: {start: " + this.ac + ", end: " + this.CJ + ", offset: " + this.fl + "}";
    }
}
