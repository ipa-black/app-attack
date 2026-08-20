package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.model.tP;
/* compiled from: PAGBannerVideoAdImpl.java */
/* loaded from: classes2.dex */
public class ac extends Qhi {
    public ac(Context context, tP tPVar, AdSlot adSlot) {
        super(context, tPVar, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.Qhi
    public void Qhi(Context context, tP tPVar, AdSlot adSlot) {
        this.Qhi = new BannerExpressVideoView(context, tPVar, adSlot);
        this.Qhi.addOnAttachStateChangeListener(this.Tgh);
    }

    public com.bytedance.sdk.openadsdk.multipro.cJ.Qhi ac() {
        if (this.Qhi != null) {
            return ((BannerExpressVideoView) this.Qhi).getVideoModel();
        }
        return null;
    }
}
