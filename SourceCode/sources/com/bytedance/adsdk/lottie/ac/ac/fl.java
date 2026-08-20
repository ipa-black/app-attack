package com.bytedance.adsdk.lottie.ac.ac;

import com.bytedance.adsdk.lottie.ac.Qhi.ABk;
import com.bytedance.adsdk.lottie.ac.Qhi.zc;
import com.bytedance.adsdk.lottie.fl.Gm;
import java.util.List;
import java.util.Locale;
/* compiled from: Layer.java */
/* loaded from: classes2.dex */
public class fl {
    private final float ABk;
    private final long CJ;
    private final Gm Dww;
    private final boolean EBS;
    private final int Gm;
    private final com.bytedance.adsdk.lottie.ac.Qhi.Gm HzH;
    private final List<com.bytedance.adsdk.lottie.ROR.Qhi<Float>> MQ;
    private final List<com.bytedance.adsdk.lottie.ac.cJ.ac> Qhi;
    private final String ROR;
    private final List<com.bytedance.adsdk.lottie.ac.cJ.hm> Sf;
    private final long Tgh;
    private final int WAv;
    private final String ac;
    private final com.bytedance.adsdk.lottie.ac.cJ.Qhi bxS;
    private final com.bytedance.adsdk.lottie.ROR cJ;
    private final Qhi fl;
    private final ABk hm;
    private final float hpZ;
    private final float iMK;
    private final zc kYc;
    private final float pA;
    private final cJ qMt;
    private final com.bytedance.adsdk.lottie.ac.Qhi.cJ tP;
    private final int zc;

    /* compiled from: Layer.java */
    /* loaded from: classes2.dex */
    public enum Qhi {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    /* compiled from: Layer.java */
    /* loaded from: classes2.dex */
    public enum cJ {
        NONE,
        ADD,
        INVERT,
        LUMA,
        LUMA_INVERTED,
        UNKNOWN
    }

    public fl(List<com.bytedance.adsdk.lottie.ac.cJ.ac> list, com.bytedance.adsdk.lottie.ROR ror, String str, long j, Qhi qhi, long j2, String str2, List<com.bytedance.adsdk.lottie.ac.cJ.hm> list2, ABk aBk, int i, int i2, int i3, float f2, float f3, float f4, float f5, com.bytedance.adsdk.lottie.ac.Qhi.Gm gm, zc zcVar, List<com.bytedance.adsdk.lottie.ROR.Qhi<Float>> list3, cJ cJVar, com.bytedance.adsdk.lottie.ac.Qhi.cJ cJVar2, boolean z, com.bytedance.adsdk.lottie.ac.cJ.Qhi qhi2, Gm gm2) {
        this.Qhi = list;
        this.cJ = ror;
        this.ac = str;
        this.CJ = j;
        this.fl = qhi;
        this.Tgh = j2;
        this.ROR = str2;
        this.Sf = list2;
        this.hm = aBk;
        this.WAv = i;
        this.Gm = i2;
        this.zc = i3;
        this.ABk = f2;
        this.iMK = f3;
        this.pA = f4;
        this.hpZ = f5;
        this.HzH = gm;
        this.kYc = zcVar;
        this.MQ = list3;
        this.qMt = cJVar;
        this.tP = cJVar2;
        this.EBS = z;
        this.bxS = qhi2;
        this.Dww = gm2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.bytedance.adsdk.lottie.ROR Qhi() {
        return this.cJ;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float cJ() {
        return this.ABk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float ac() {
        return this.iMK / this.cJ.ABk();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<com.bytedance.adsdk.lottie.ROR.Qhi<Float>> CJ() {
        return this.MQ;
    }

    public long fl() {
        return this.CJ;
    }

    public String Tgh() {
        return this.ac;
    }

    public String ROR() {
        return this.ROR;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float Sf() {
        return this.pA;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float hm() {
        return this.hpZ;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<com.bytedance.adsdk.lottie.ac.cJ.hm> WAv() {
        return this.Sf;
    }

    public Qhi Gm() {
        return this.fl;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public cJ zc() {
        return this.qMt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long ABk() {
        return this.Tgh;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<com.bytedance.adsdk.lottie.ac.cJ.ac> iMK() {
        return this.Qhi;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ABk pA() {
        return this.hm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int hpZ() {
        return this.zc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int HzH() {
        return this.Gm;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int kYc() {
        return this.WAv;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.bytedance.adsdk.lottie.ac.Qhi.Gm tP() {
        return this.HzH;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zc MQ() {
        return this.kYc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public com.bytedance.adsdk.lottie.ac.Qhi.cJ qMt() {
        return this.tP;
    }

    public String toString() {
        return Qhi("");
    }

    public boolean EBS() {
        return this.EBS;
    }

    public com.bytedance.adsdk.lottie.ac.cJ.Qhi bxS() {
        return this.bxS;
    }

    public Gm Dww() {
        return this.Dww;
    }

    public String Qhi(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str).append(Tgh()).append("\n");
        fl Qhi2 = this.cJ.Qhi(ABk());
        if (Qhi2 != null) {
            sb.append("\t\tParents: ").append(Qhi2.Tgh());
            fl Qhi3 = this.cJ.Qhi(Qhi2.ABk());
            while (Qhi3 != null) {
                sb.append("->").append(Qhi3.Tgh());
                Qhi3 = this.cJ.Qhi(Qhi3.ABk());
            }
            sb.append(str).append("\n");
        }
        if (!WAv().isEmpty()) {
            sb.append(str).append("\tMasks: ").append(WAv().size()).append("\n");
        }
        if (kYc() != 0 && HzH() != 0) {
            sb.append(str).append("\tBackground: ").append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(kYc()), Integer.valueOf(HzH()), Integer.valueOf(hpZ())));
        }
        if (!this.Qhi.isEmpty()) {
            sb.append(str).append("\tShapes:\n");
            for (com.bytedance.adsdk.lottie.ac.cJ.ac acVar : this.Qhi) {
                sb.append(str).append("\t\t").append(acVar).append("\n");
            }
        }
        return sb.toString();
    }
}
