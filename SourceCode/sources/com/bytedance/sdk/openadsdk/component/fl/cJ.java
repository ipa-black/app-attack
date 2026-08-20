package com.bytedance.sdk.openadsdk.component.fl;

import com.bytedance.sdk.openadsdk.core.model.tP;
/* compiled from: TTAppOpenAdCallBackResult.java */
/* loaded from: classes2.dex */
public class cJ {
    private int CJ;
    private int Qhi;
    private boolean Tgh;
    private tP ac;
    private int cJ;
    private String fl;

    public cJ(int i, int i2, tP tPVar) {
        this.Qhi = i;
        this.cJ = i2;
        this.ac = tPVar;
    }

    public cJ(int i, int i2, int i3, String str) {
        this.Qhi = i;
        this.cJ = i2;
        this.CJ = i3;
        this.fl = str;
    }

    public void Qhi(boolean z) {
        this.Tgh = z;
    }

    public boolean Qhi() {
        return this.Tgh;
    }

    public int cJ() {
        return this.Qhi;
    }

    public int ac() {
        return this.cJ;
    }

    public tP CJ() {
        return this.ac;
    }

    public int fl() {
        return this.CJ;
    }

    public String Tgh() {
        return this.fl;
    }
}
