package com.bytedance.adsdk.lottie.Qhi.cJ;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
/* compiled from: MaskKeyframeAnimation.java */
/* loaded from: classes2.dex */
public class hm {
    private final List<Qhi<com.bytedance.adsdk.lottie.ac.cJ.pA, Path>> Qhi;
    private final List<com.bytedance.adsdk.lottie.ac.cJ.hm> ac;
    private final List<Qhi<Integer, Integer>> cJ;

    public hm(List<com.bytedance.adsdk.lottie.ac.cJ.hm> list) {
        this.ac = list;
        this.Qhi = new ArrayList(list.size());
        this.cJ = new ArrayList(list.size());
        for (int i = 0; i < list.size(); i++) {
            this.Qhi.add(list.get(i).cJ().Qhi());
            this.cJ.add(list.get(i).ac().Qhi());
        }
    }

    public List<com.bytedance.adsdk.lottie.ac.cJ.hm> Qhi() {
        return this.ac;
    }

    public List<Qhi<com.bytedance.adsdk.lottie.ac.cJ.pA, Path>> cJ() {
        return this.Qhi;
    }

    public List<Qhi<Integer, Integer>> ac() {
        return this.cJ;
    }
}
