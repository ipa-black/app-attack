package com.bytedance.adsdk.lottie.ac;

import com.bytedance.adsdk.lottie.ac.cJ.HzH;
import java.util.List;
/* compiled from: FontCharacter.java */
/* loaded from: classes2.dex */
public class fl {
    private final double CJ;
    private final List<HzH> Qhi;
    private final String Tgh;
    private final double ac;
    private final char cJ;
    private final String fl;

    public static int Qhi(char c2, String str, String str2) {
        return (((c2 * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    public fl(List<HzH> list, char c2, double d2, double d3, String str, String str2) {
        this.Qhi = list;
        this.cJ = c2;
        this.ac = d2;
        this.CJ = d3;
        this.fl = str;
        this.Tgh = str2;
    }

    public List<HzH> Qhi() {
        return this.Qhi;
    }

    public double cJ() {
        return this.CJ;
    }

    public int hashCode() {
        return Qhi(this.cJ, this.Tgh, this.fl);
    }
}
