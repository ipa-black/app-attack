package com.bytedance.sdk.openadsdk.component.reward;

import android.content.Context;
import com.bytedance.sdk.openadsdk.TTClientBidding;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TTFullScreenVideoAdImpl.java */
/* loaded from: classes2.dex */
public class pA implements TTClientBidding {
    private final ROR Qhi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public pA(Context context, com.bytedance.sdk.openadsdk.core.model.Qhi qhi) {
        this.Qhi = new ROR(context, qhi);
    }

    public ROR Qhi() {
        return this.Qhi;
    }

    public void Qhi(boolean z) {
        this.Qhi.Qhi(z);
    }

    public void cJ() {
        this.Qhi.Qhi();
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void win(Double d2) {
        this.Qhi.win(d2);
    }

    @Override // com.bytedance.sdk.openadsdk.TTClientBidding
    public void loss(Double d2, String str, String str2) {
        this.Qhi.loss(d2, str, str2);
    }
}
