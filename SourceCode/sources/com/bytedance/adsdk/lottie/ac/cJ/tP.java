package com.bytedance.adsdk.lottie.ac.cJ;

import android.graphics.Paint;
import com.bytedance.adsdk.lottie.Qhi.Qhi.qMt;
import java.util.List;
/* compiled from: ShapeStroke.java */
/* loaded from: classes2.dex */
public class tP implements ac {
    private final com.bytedance.adsdk.lottie.ac.Qhi.Qhi CJ;
    private final String Qhi;
    private final Qhi ROR;
    private final cJ Sf;
    private final com.bytedance.adsdk.lottie.ac.Qhi.cJ Tgh;
    private final boolean WAv;
    private final List<com.bytedance.adsdk.lottie.ac.Qhi.cJ> ac;
    private final com.bytedance.adsdk.lottie.ac.Qhi.cJ cJ;
    private final com.bytedance.adsdk.lottie.ac.Qhi.fl fl;
    private final float hm;

    /* compiled from: ShapeStroke.java */
    /* loaded from: classes2.dex */
    public enum Qhi {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap Qhi() {
            int i = AnonymousClass1.Qhi[ordinal()];
            if (i != 1) {
                if (i == 2) {
                    return Paint.Cap.ROUND;
                }
                return Paint.Cap.SQUARE;
            }
            return Paint.Cap.BUTT;
        }
    }

    /* compiled from: ShapeStroke.java */
    /* renamed from: com.bytedance.adsdk.lottie.ac.cJ.tP$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] Qhi;
        static final /* synthetic */ int[] cJ;

        static {
            int[] iArr = new int[cJ.values().length];
            cJ = iArr;
            try {
                iArr[cJ.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                cJ[cJ.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                cJ[cJ.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Qhi.values().length];
            Qhi = iArr2;
            try {
                iArr2[Qhi.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                Qhi[Qhi.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                Qhi[Qhi.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    /* compiled from: ShapeStroke.java */
    /* loaded from: classes2.dex */
    public enum cJ {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join Qhi() {
            int i = AnonymousClass1.cJ[ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    return Paint.Join.ROUND;
                }
                return Paint.Join.MITER;
            }
            return Paint.Join.BEVEL;
        }
    }

    public tP(String str, com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar, List<com.bytedance.adsdk.lottie.ac.Qhi.cJ> list, com.bytedance.adsdk.lottie.ac.Qhi.Qhi qhi, com.bytedance.adsdk.lottie.ac.Qhi.fl flVar, com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar2, Qhi qhi2, cJ cJVar3, float f2, boolean z) {
        this.Qhi = str;
        this.cJ = cJVar;
        this.ac = list;
        this.CJ = qhi;
        this.fl = flVar;
        this.Tgh = cJVar2;
        this.ROR = qhi2;
        this.Sf = cJVar3;
        this.hm = f2;
        this.WAv = z;
    }

    @Override // com.bytedance.adsdk.lottie.ac.cJ.ac
    public com.bytedance.adsdk.lottie.Qhi.Qhi.ac Qhi(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ROR ror, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi) {
        return new qMt(hmVar, qhi, this);
    }

    public String Qhi() {
        return this.Qhi;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.Qhi cJ() {
        return this.CJ;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.fl ac() {
        return this.fl;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.cJ CJ() {
        return this.Tgh;
    }

    public List<com.bytedance.adsdk.lottie.ac.Qhi.cJ> fl() {
        return this.ac;
    }

    public com.bytedance.adsdk.lottie.ac.Qhi.cJ Tgh() {
        return this.cJ;
    }

    public Qhi ROR() {
        return this.ROR;
    }

    public cJ Sf() {
        return this.Sf;
    }

    public float hm() {
        return this.hm;
    }

    public boolean WAv() {
        return this.WAv;
    }
}
