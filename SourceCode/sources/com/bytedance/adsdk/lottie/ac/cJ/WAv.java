package com.bytedance.adsdk.lottie.ac.cJ;
/* compiled from: MergePaths.java */
/* loaded from: classes2.dex */
public class WAv implements ac {
    private final String Qhi;
    private final boolean ac;
    private final Qhi cJ;

    /* compiled from: MergePaths.java */
    /* loaded from: classes2.dex */
    public enum Qhi {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static Qhi Qhi(int i) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i == 5) {
                                return EXCLUDE_INTERSECTIONS;
                            }
                            return MERGE;
                        }
                        return INTERSECT;
                    }
                    return SUBTRACT;
                }
                return ADD;
            }
            return MERGE;
        }
    }

    public WAv(String str, Qhi qhi, boolean z) {
        this.Qhi = str;
        this.cJ = qhi;
        this.ac = z;
    }

    public String Qhi() {
        return this.Qhi;
    }

    public Qhi cJ() {
        return this.cJ;
    }

    public boolean ac() {
        return this.ac;
    }

    @Override // com.bytedance.adsdk.lottie.ac.cJ.ac
    public com.bytedance.adsdk.lottie.Qhi.Qhi.ac Qhi(com.bytedance.adsdk.lottie.hm hmVar, com.bytedance.adsdk.lottie.ROR ror, com.bytedance.adsdk.lottie.ac.ac.Qhi qhi) {
        if (hmVar.Qhi()) {
            return new com.bytedance.adsdk.lottie.Qhi.Qhi.ABk(this);
        }
        return null;
    }

    public String toString() {
        return "MergePaths{mode=" + this.cJ + '}';
    }
}
