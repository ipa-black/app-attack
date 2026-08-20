package com.bytedance.adsdk.lottie.Qhi.cJ;

import java.util.ArrayList;
import java.util.List;
/* compiled from: BaseKeyframeAnimation.java */
/* loaded from: classes2.dex */
public abstract class Qhi<K, A> {
    protected com.bytedance.adsdk.lottie.ROR.cJ<A> ac;
    private final ac<K> fl;
    final List<InterfaceC0175Qhi> Qhi = new ArrayList(1);
    private boolean CJ = false;
    protected float cJ = 0.0f;
    private A Tgh = null;
    private float ROR = -1.0f;
    private float Sf = -1.0f;

    /* compiled from: BaseKeyframeAnimation.java */
    /* renamed from: com.bytedance.adsdk.lottie.Qhi.cJ.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0175Qhi {
        void Qhi();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BaseKeyframeAnimation.java */
    /* loaded from: classes2.dex */
    public interface ac<T> {
        float CJ();

        boolean Qhi();

        boolean Qhi(float f2);

        float ac();

        com.bytedance.adsdk.lottie.ROR.Qhi<T> cJ();

        boolean cJ(float f2);
    }

    abstract A Qhi(com.bytedance.adsdk.lottie.ROR.Qhi<K> qhi, float f2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public Qhi(List<? extends com.bytedance.adsdk.lottie.ROR.Qhi<K>> list) {
        this.fl = Qhi(list);
    }

    public void Qhi() {
        this.CJ = true;
    }

    public void Qhi(InterfaceC0175Qhi interfaceC0175Qhi) {
        this.Qhi.add(interfaceC0175Qhi);
    }

    public void Qhi(float f2) {
        if (this.fl.Qhi()) {
            return;
        }
        if (f2 < hm()) {
            f2 = hm();
        } else if (f2 > Tgh()) {
            f2 = Tgh();
        }
        if (f2 == this.cJ) {
            return;
        }
        this.cJ = f2;
        if (this.fl.Qhi(f2)) {
            cJ();
        }
    }

    public void cJ() {
        for (int i = 0; i < this.Qhi.size(); i++) {
            this.Qhi.get(i).Qhi();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.bytedance.adsdk.lottie.ROR.Qhi<K> ac() {
        com.bytedance.adsdk.lottie.Tgh.Qhi("BaseKeyframeAnimation#getCurrentKeyframe");
        com.bytedance.adsdk.lottie.ROR.Qhi<K> cJ2 = this.fl.cJ();
        com.bytedance.adsdk.lottie.Tgh.cJ("BaseKeyframeAnimation#getCurrentKeyframe");
        return cJ2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float CJ() {
        if (this.CJ) {
            return 0.0f;
        }
        com.bytedance.adsdk.lottie.ROR.Qhi<K> ac2 = ac();
        if (ac2.fl()) {
            return 0.0f;
        }
        return (this.cJ - ac2.ac()) / (ac2.CJ() - ac2.ac());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float fl() {
        com.bytedance.adsdk.lottie.ROR.Qhi<K> ac2 = ac();
        if (ac2 == null || ac2.fl()) {
            return 0.0f;
        }
        return ac2.ac.getInterpolation(CJ());
    }

    private float hm() {
        if (this.ROR == -1.0f) {
            this.ROR = this.fl.ac();
        }
        return this.ROR;
    }

    float Tgh() {
        if (this.Sf == -1.0f) {
            this.Sf = this.fl.CJ();
        }
        return this.Sf;
    }

    public A ROR() {
        A Qhi;
        float CJ = CJ();
        if (this.ac == null && this.fl.cJ(CJ)) {
            return this.Tgh;
        }
        com.bytedance.adsdk.lottie.ROR.Qhi<K> ac2 = ac();
        if (ac2.CJ != null && ac2.fl != null) {
            Qhi = Qhi(ac2, CJ, ac2.CJ.getInterpolation(CJ), ac2.fl.getInterpolation(CJ));
        } else {
            Qhi = Qhi(ac2, fl());
        }
        this.Tgh = Qhi;
        return Qhi;
    }

    public float Sf() {
        return this.cJ;
    }

    protected A Qhi(com.bytedance.adsdk.lottie.ROR.Qhi<K> qhi, float f2, float f3, float f4) {
        throw new UnsupportedOperationException("This animation does not support split dimensions!");
    }

    private static <T> ac<T> Qhi(List<? extends com.bytedance.adsdk.lottie.ROR.Qhi<T>> list) {
        if (list.isEmpty()) {
            return new cJ();
        }
        if (list.size() == 1) {
            return new Tgh(list);
        }
        return new fl(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BaseKeyframeAnimation.java */
    /* loaded from: classes2.dex */
    public static final class cJ<T> implements ac<T> {
        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public float CJ() {
            return 1.0f;
        }

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public boolean Qhi() {
            return true;
        }

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public boolean Qhi(float f2) {
            return false;
        }

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public float ac() {
            return 0.0f;
        }

        private cJ() {
        }

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public com.bytedance.adsdk.lottie.ROR.Qhi<T> cJ() {
            throw new IllegalStateException("not implemented");
        }

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public boolean cJ(float f2) {
            throw new IllegalStateException("not implemented");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BaseKeyframeAnimation.java */
    /* loaded from: classes2.dex */
    public static final class Tgh<T> implements ac<T> {
        private final com.bytedance.adsdk.lottie.ROR.Qhi<T> Qhi;
        private float cJ = -1.0f;

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public boolean Qhi() {
            return false;
        }

        Tgh(List<? extends com.bytedance.adsdk.lottie.ROR.Qhi<T>> list) {
            this.Qhi = list.get(0);
        }

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public boolean Qhi(float f2) {
            return !this.Qhi.fl();
        }

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public com.bytedance.adsdk.lottie.ROR.Qhi<T> cJ() {
            return this.Qhi;
        }

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public float ac() {
            return this.Qhi.ac();
        }

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public float CJ() {
            return this.Qhi.CJ();
        }

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public boolean cJ(float f2) {
            if (this.cJ == f2) {
                return true;
            }
            this.cJ = f2;
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BaseKeyframeAnimation.java */
    /* loaded from: classes2.dex */
    public static final class fl<T> implements ac<T> {
        private final List<? extends com.bytedance.adsdk.lottie.ROR.Qhi<T>> Qhi;
        private com.bytedance.adsdk.lottie.ROR.Qhi<T> ac = null;
        private float CJ = -1.0f;
        private com.bytedance.adsdk.lottie.ROR.Qhi<T> cJ = ac(0.0f);

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public boolean Qhi() {
            return false;
        }

        fl(List<? extends com.bytedance.adsdk.lottie.ROR.Qhi<T>> list) {
            this.Qhi = list;
        }

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public boolean Qhi(float f2) {
            if (this.cJ.Qhi(f2)) {
                return !this.cJ.fl();
            }
            this.cJ = ac(f2);
            return true;
        }

        private com.bytedance.adsdk.lottie.ROR.Qhi<T> ac(float f2) {
            List<? extends com.bytedance.adsdk.lottie.ROR.Qhi<T>> list;
            com.bytedance.adsdk.lottie.ROR.Qhi<T> qhi = this.Qhi.get(list.size() - 1);
            if (f2 >= qhi.ac()) {
                return qhi;
            }
            for (int size = this.Qhi.size() - 2; size > 0; size--) {
                com.bytedance.adsdk.lottie.ROR.Qhi<T> qhi2 = this.Qhi.get(size);
                if (this.cJ != qhi2 && qhi2.Qhi(f2)) {
                    return qhi2;
                }
            }
            return this.Qhi.get(0);
        }

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public com.bytedance.adsdk.lottie.ROR.Qhi<T> cJ() {
            return this.cJ;
        }

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public float ac() {
            return this.Qhi.get(0).ac();
        }

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public float CJ() {
            List<? extends com.bytedance.adsdk.lottie.ROR.Qhi<T>> list = this.Qhi;
            return list.get(list.size() - 1).CJ();
        }

        @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.ac
        public boolean cJ(float f2) {
            com.bytedance.adsdk.lottie.ROR.Qhi<T> qhi = this.ac;
            com.bytedance.adsdk.lottie.ROR.Qhi<T> qhi2 = this.cJ;
            if (qhi == qhi2 && this.CJ == f2) {
                return true;
            }
            this.ac = qhi2;
            this.CJ = f2;
            return false;
        }
    }
}
