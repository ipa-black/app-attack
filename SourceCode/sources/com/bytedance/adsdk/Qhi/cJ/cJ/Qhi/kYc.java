package com.bytedance.adsdk.Qhi.cJ.cJ.Qhi;
/* compiled from: OperatorResultNode.java */
/* loaded from: classes2.dex */
public abstract class kYc implements com.bytedance.adsdk.Qhi.cJ.cJ.Qhi {
    protected com.bytedance.adsdk.Qhi.cJ.cJ.Qhi Qhi;
    protected com.bytedance.adsdk.Qhi.cJ.CJ.Tgh ac;
    protected com.bytedance.adsdk.Qhi.cJ.cJ.Qhi cJ;

    /* JADX INFO: Access modifiers changed from: protected */
    public kYc(com.bytedance.adsdk.Qhi.cJ.CJ.Tgh tgh) {
        this.ac = tgh;
    }

    public void Qhi(com.bytedance.adsdk.Qhi.cJ.cJ.Qhi qhi) {
        this.Qhi = qhi;
    }

    public void cJ(com.bytedance.adsdk.Qhi.cJ.cJ.Qhi qhi) {
        this.cJ = qhi;
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.Qhi
    public com.bytedance.adsdk.Qhi.cJ.CJ.Sf Qhi() {
        return com.bytedance.adsdk.Qhi.cJ.CJ.hm.OPERATOR_RESULT;
    }

    @Override // com.bytedance.adsdk.Qhi.cJ.cJ.Qhi
    public String cJ() {
        return this.Qhi.cJ() + this.ac.Qhi() + this.cJ.cJ();
    }

    public String toString() {
        return cJ();
    }
}
