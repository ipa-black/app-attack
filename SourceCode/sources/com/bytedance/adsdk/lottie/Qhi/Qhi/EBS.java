package com.bytedance.adsdk.lottie.Qhi.Qhi;

import com.bytedance.adsdk.lottie.Qhi.cJ.Qhi;
import com.bytedance.adsdk.lottie.ac.cJ.MQ;
import java.util.ArrayList;
import java.util.List;
/* compiled from: TrimPathContent.java */
/* loaded from: classes2.dex */
public class EBS implements ac, Qhi.InterfaceC0175Qhi {
    private final MQ.Qhi CJ;
    private final String Qhi;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> ROR;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> Tgh;
    private final List<Qhi.InterfaceC0175Qhi> ac = new ArrayList();
    private final boolean cJ;
    private final com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> fl;

    @Override // com.bytedance.adsdk.lottie.Qhi.Qhi.ac
    public void Qhi(List<ac> list, List<ac> list2) {
    }

    public EBS(com.bytedance.adsdk.lottie.ac.ac.Qhi qhi, com.bytedance.adsdk.lottie.ac.cJ.MQ mq) {
        this.Qhi = mq.Qhi();
        this.cJ = mq.Tgh();
        this.CJ = mq.cJ();
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> Qhi = mq.CJ().Qhi();
        this.fl = Qhi;
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> Qhi2 = mq.ac().Qhi();
        this.Tgh = Qhi2;
        com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<Float, Float> Qhi3 = mq.fl().Qhi();
        this.ROR = Qhi3;
        qhi.Qhi(Qhi);
        qhi.Qhi(Qhi2);
        qhi.Qhi(Qhi3);
        Qhi.Qhi(this);
        Qhi2.Qhi(this);
        Qhi3.Qhi(this);
    }

    @Override // com.bytedance.adsdk.lottie.Qhi.cJ.Qhi.InterfaceC0175Qhi
    public void Qhi() {
        for (int i = 0; i < this.ac.size(); i++) {
            this.ac.get(i).Qhi();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void Qhi(Qhi.InterfaceC0175Qhi interfaceC0175Qhi) {
        this.ac.add(interfaceC0175Qhi);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MQ.Qhi cJ() {
        return this.CJ;
    }

    public com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> ac() {
        return this.fl;
    }

    public com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> CJ() {
        return this.Tgh;
    }

    public com.bytedance.adsdk.lottie.Qhi.cJ.Qhi<?, Float> fl() {
        return this.ROR;
    }

    public boolean Tgh() {
        return this.cJ;
    }
}
