package com.bytedance.sdk.component.Tgh.Qhi;
/* compiled from: AdLogConfig.java */
/* loaded from: classes2.dex */
public class Qhi {
    private long ABk;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac CJ;
    private int Gm;
    private com.bytedance.sdk.component.Tgh.Qhi.Qhi.Tgh Qhi;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac ROR;
    private boolean Sf;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac Tgh;
    private boolean WAv;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac ac;
    private com.bytedance.sdk.component.Tgh.Qhi.cJ.ac cJ;
    private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac fl;
    private Tgh hm;
    private int zc;

    private Qhi() {
        this.Gm = 200;
        this.zc = 10;
    }

    public com.bytedance.sdk.component.Tgh.Qhi.Qhi.Tgh Qhi() {
        return this.Qhi;
    }

    public com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac cJ() {
        return this.Tgh;
    }

    public boolean ac() {
        return this.WAv;
    }

    public Tgh CJ() {
        return this.hm;
    }

    public long fl() {
        return this.ABk;
    }

    public com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac Tgh() {
        return this.ROR;
    }

    public com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac ROR() {
        return this.ac;
    }

    public com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac Sf() {
        return this.CJ;
    }

    public com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac hm() {
        return this.fl;
    }

    public com.bytedance.sdk.component.Tgh.Qhi.cJ.ac WAv() {
        return this.cJ;
    }

    public boolean Gm() {
        return this.Sf;
    }

    public int zc() {
        return this.Gm;
    }

    public int ABk() {
        return this.zc;
    }

    /* compiled from: AdLogConfig.java */
    /* renamed from: com.bytedance.sdk.component.Tgh.Qhi.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0185Qhi {
        private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac CJ;
        private com.bytedance.sdk.component.Tgh.Qhi.cJ.ac Qhi;
        private Tgh ROR;
        private com.bytedance.sdk.component.Tgh.Qhi.Qhi.Tgh Sf;
        private boolean Tgh;
        private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac ac;
        private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac cJ;
        private com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac fl;
        private boolean hm;
        private long zc;
        private int WAv = 5000;
        private int Gm = 10;

        public C0185Qhi Qhi(long j) {
            this.zc = j;
            return this;
        }

        public C0185Qhi Qhi(com.bytedance.sdk.component.Tgh.Qhi.Qhi.Tgh tgh) {
            this.Sf = tgh;
            return this;
        }

        public C0185Qhi Qhi(Tgh tgh) {
            this.ROR = tgh;
            return this;
        }

        public C0185Qhi Qhi(boolean z) {
            this.Tgh = z;
            return this;
        }

        public C0185Qhi Qhi(com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar) {
            this.cJ = acVar;
            return this;
        }

        public C0185Qhi cJ(com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar) {
            this.ac = acVar;
            return this;
        }

        public C0185Qhi ac(com.bytedance.sdk.component.Tgh.Qhi.CJ.cJ.ac acVar) {
            this.CJ = acVar;
            return this;
        }

        public C0185Qhi Qhi(com.bytedance.sdk.component.Tgh.Qhi.cJ.ac acVar) {
            this.Qhi = acVar;
            return this;
        }

        public C0185Qhi Qhi(int i) {
            this.WAv = i;
            return this;
        }

        public C0185Qhi cJ(int i) {
            this.Gm = i;
            return this;
        }

        public Qhi Qhi() {
            Qhi qhi = new Qhi();
            qhi.cJ = this.Qhi;
            qhi.ac = this.cJ;
            qhi.CJ = this.ac;
            qhi.fl = this.CJ;
            qhi.Tgh = this.fl;
            qhi.Sf = this.Tgh;
            qhi.hm = this.ROR;
            qhi.Qhi = this.Sf;
            qhi.WAv = this.hm;
            qhi.zc = this.Gm;
            qhi.Gm = this.WAv;
            qhi.ABk = this.zc;
            return qhi;
        }
    }
}
