package com.bytedance.adsdk.lottie.ac.cJ;

import java.util.Arrays;
import java.util.List;
/* compiled from: ShapeGroup.java */
/* loaded from: classes2.dex */
public class HzH implements ac {
    private final String Qhi;
    private final boolean ac;
    private final List<ac> cJ;

    public HzH(String str, List<ac> list, boolean z) {
        this.Qhi = str;
        this.cJ = list;
        this.ac = z;
    }

    public String Qhi() {
        return this.Qhi;
    }

    public List<ac> cJ() {
        return this.cJ;
    }

    public boolean ac() {
        return this.ac;
    }

    @Override // com.bytedance.adsdk.lottie.ac.cJ.ac
    public com.bytedance.adsdk.lottie.Qhi.Qhi.ac Qhi(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ROR ror, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi) {
        return new com.bytedance.adsdk.lottie.Qhi.Qhi.fl(hmVar, qhi, this, ror);
    }

    public String toString() {
        return "ShapeGroup{name='" + this.Qhi + "' Shapes: " + Arrays.toString(this.cJ.toArray()) + '}';
    }
}
