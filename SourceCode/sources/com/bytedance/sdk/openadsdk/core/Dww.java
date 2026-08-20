package com.bytedance.sdk.openadsdk.core;
/* compiled from: SingleAppData.java */
/* loaded from: classes2.dex */
public class Dww {
    private static Dww Qhi;
    private com.bytedance.sdk.openadsdk.apiImpl.CJ.ac CJ;
    private com.bytedance.sdk.openadsdk.apiImpl.ac.cJ Tgh;
    private com.bytedance.sdk.openadsdk.core.model.tP ac;
    private com.bytedance.sdk.openadsdk.core.model.Qhi cJ;
    private com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ fl;

    private Dww() {
    }

    public static Dww Qhi() {
        if (Qhi == null) {
            Qhi = new Dww();
        }
        return Qhi;
    }

    public com.bytedance.sdk.openadsdk.core.model.tP cJ() {
        return this.ac;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.model.tP tPVar) {
        this.ac = tPVar;
    }

    public com.bytedance.sdk.openadsdk.apiImpl.CJ.ac ac() {
        return this.CJ;
    }

    public com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ CJ() {
        return this.fl;
    }

    public com.bytedance.sdk.openadsdk.apiImpl.ac.cJ fl() {
        return this.Tgh;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.apiImpl.cJ.cJ cJVar) {
        this.fl = cJVar;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.apiImpl.CJ.ac acVar) {
        this.CJ = acVar;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.apiImpl.ac.cJ cJVar) {
        this.Tgh = cJVar;
    }

    public void Tgh() {
        this.ac = null;
        this.cJ = null;
        this.CJ = null;
        this.fl = null;
        this.Tgh = null;
    }

    public com.bytedance.sdk.openadsdk.core.model.Qhi ROR() {
        return this.cJ;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.model.Qhi qhi) {
        this.cJ = qhi;
    }
}
