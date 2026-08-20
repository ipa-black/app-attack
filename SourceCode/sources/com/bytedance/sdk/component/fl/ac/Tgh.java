package com.bytedance.sdk.component.fl.ac;

import android.content.Context;
import com.bytedance.sdk.component.fl.ABk;
import com.bytedance.sdk.component.fl.EBS;
import com.bytedance.sdk.component.fl.MQ;
import com.bytedance.sdk.component.fl.iMK;
import com.bytedance.sdk.component.fl.kYc;
import com.bytedance.sdk.component.fl.tP;
import java.util.concurrent.ExecutorService;
/* compiled from: LoadConfig.java */
/* loaded from: classes2.dex */
public class Tgh implements iMK {
    private tP CJ;
    private ABk Qhi;
    private kYc ROR;
    private com.bytedance.sdk.component.fl.cJ Sf;
    private com.bytedance.sdk.component.fl.ac Tgh;
    private com.bytedance.sdk.component.fl.fl ac;
    private ExecutorService cJ;
    private MQ fl;
    private EBS hm;

    private Tgh(Qhi qhi) {
        this.Qhi = qhi.Qhi;
        this.cJ = qhi.cJ;
        this.ac = qhi.ac;
        this.CJ = qhi.CJ;
        this.fl = qhi.fl;
        this.Tgh = qhi.Tgh;
        this.Sf = qhi.Sf;
        this.ROR = qhi.ROR;
        this.hm = qhi.hm;
    }

    @Override // com.bytedance.sdk.component.fl.iMK
    public ABk Qhi() {
        return this.Qhi;
    }

    @Override // com.bytedance.sdk.component.fl.iMK
    public ExecutorService cJ() {
        return this.cJ;
    }

    @Override // com.bytedance.sdk.component.fl.iMK
    public com.bytedance.sdk.component.fl.fl CJ() {
        return this.ac;
    }

    @Override // com.bytedance.sdk.component.fl.iMK
    public tP fl() {
        return this.CJ;
    }

    @Override // com.bytedance.sdk.component.fl.iMK
    public MQ Tgh() {
        return this.fl;
    }

    @Override // com.bytedance.sdk.component.fl.iMK
    public com.bytedance.sdk.component.fl.ac ROR() {
        return this.Tgh;
    }

    @Override // com.bytedance.sdk.component.fl.iMK
    public kYc Sf() {
        return this.ROR;
    }

    @Override // com.bytedance.sdk.component.fl.iMK
    public EBS ac() {
        return this.hm;
    }

    @Override // com.bytedance.sdk.component.fl.iMK
    public com.bytedance.sdk.component.fl.cJ hm() {
        return this.Sf;
    }

    public static Tgh Qhi(Context context) {
        return new Qhi().Qhi();
    }

    /* compiled from: LoadConfig.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        private tP CJ;
        private ABk Qhi;
        private kYc ROR;
        private com.bytedance.sdk.component.fl.cJ Sf;
        private com.bytedance.sdk.component.fl.ac Tgh;
        private com.bytedance.sdk.component.fl.fl ac;
        private ExecutorService cJ;
        private MQ fl;
        private EBS hm;

        public Qhi Qhi(com.bytedance.sdk.component.fl.cJ cJVar) {
            this.Sf = cJVar;
            return this;
        }

        public Qhi Qhi(EBS ebs) {
            this.hm = ebs;
            return this;
        }

        public Qhi Qhi(com.bytedance.sdk.component.fl.fl flVar) {
            this.ac = flVar;
            return this;
        }

        public Tgh Qhi() {
            return new Tgh(this);
        }
    }
}
