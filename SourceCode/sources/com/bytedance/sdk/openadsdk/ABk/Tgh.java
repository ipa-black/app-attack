package com.bytedance.sdk.openadsdk.ABk;

import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.hm;
import com.bytedance.sdk.openadsdk.core.iMK;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MonitorModelGeneratorWrapper.java */
/* loaded from: classes2.dex */
public class Tgh implements fl {
    private int CJ;
    long Qhi = System.currentTimeMillis();
    private int ac;
    private fl cJ;
    private int fl;

    public Tgh(fl flVar, int i, int i2, int i3) {
        this.cJ = flVar;
        this.ac = i;
        this.CJ = i2;
        this.fl = i3;
    }

    @Override // com.bytedance.sdk.openadsdk.ABk.fl
    public com.bytedance.sdk.openadsdk.ABk.cJ.Qhi generatorModel() {
        com.bytedance.sdk.openadsdk.ABk.cJ.Qhi generatorModel = this.cJ.generatorModel();
        generatorModel.Qhi(BuildConfig.VERSION_NAME);
        generatorModel.Qhi(this.ac);
        generatorModel.cJ(this.CJ);
        generatorModel.ac(this.fl);
        generatorModel.cJ(this.Qhi);
        generatorModel.Tgh(hm.cJ().fl());
        generatorModel.CJ(iMK.CJ());
        return generatorModel;
    }
}
