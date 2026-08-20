package com.bytedance.adsdk.lottie.ac;

import android.graphics.PointF;
/* compiled from: DocumentData.java */
/* loaded from: classes2.dex */
public class cJ {
    public PointF ABk;
    public Qhi CJ;
    public boolean Gm;
    public String Qhi;
    public float ROR;
    public int Sf;
    public float Tgh;
    public float WAv;
    public float ac;
    public String cJ;
    public int fl;
    public int hm;
    public PointF zc;

    /* compiled from: DocumentData.java */
    /* loaded from: classes2.dex */
    public enum Qhi {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public cJ(String str, String str2, float f2, Qhi qhi, int i, float f3, float f4, int i2, int i3, float f5, boolean z, PointF pointF, PointF pointF2) {
        Qhi(str, str2, f2, qhi, i, f3, f4, i2, i3, f5, z, pointF, pointF2);
    }

    public cJ() {
    }

    public void Qhi(String str, String str2, float f2, Qhi qhi, int i, float f3, float f4, int i2, int i3, float f5, boolean z, PointF pointF, PointF pointF2) {
        this.Qhi = str;
        this.cJ = str2;
        this.ac = f2;
        this.CJ = qhi;
        this.fl = i;
        this.Tgh = f3;
        this.ROR = f4;
        this.Sf = i2;
        this.hm = i3;
        this.WAv = f5;
        this.Gm = z;
        this.zc = pointF;
        this.ABk = pointF2;
    }

    public int hashCode() {
        int hashCode = (((((int) ((((this.Qhi.hashCode() * 31) + this.cJ.hashCode()) * 31) + this.ac)) * 31) + this.CJ.ordinal()) * 31) + this.fl;
        long floatToRawIntBits = Float.floatToRawIntBits(this.Tgh);
        return (((hashCode * 31) + ((int) (floatToRawIntBits ^ (floatToRawIntBits >>> 32)))) * 31) + this.Sf;
    }
}
