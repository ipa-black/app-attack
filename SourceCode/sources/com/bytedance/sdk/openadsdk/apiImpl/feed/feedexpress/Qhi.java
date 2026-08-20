package com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
/* compiled from: PAGFeedExpressVideoView.java */
/* loaded from: classes2.dex */
public class Qhi extends cJ {
    public Qhi(Context context, tP tPVar, AdSlot adSlot) {
        super(context, tPVar, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.cJ
    protected void Qhi() {
        this.WAv = new NativeExpressVideoView(this.Sf, this.cJ, this.hm, this.Gm);
        this.Qhi.Qhi(((NativeExpressVideoView) this.WAv).getVideoController());
        ac();
    }

    public com.bytedance.sdk.openadsdk.multipro.cJ.Qhi cJ() {
        if (this.WAv != null) {
            return ((NativeExpressVideoView) this.WAv).getVideoModel();
        }
        return null;
    }
}
