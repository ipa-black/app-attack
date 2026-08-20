package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
import com.bytedance.sdk.openadsdk.utils.zn;
/* loaded from: classes2.dex */
public class BannerExpressVideoView extends BannerExpressView {
    public BannerExpressVideoView(Context context, tP tPVar, AdSlot adSlot) {
        super(context, tPVar, adSlot);
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressView
    protected void Qhi() {
        this.cJ = new NativeExpressVideoView(this.Qhi, this.CJ, this.fl, this.hm);
        addView(this.cJ, new ViewGroup.LayoutParams(-1, -1));
        if (this.Tgh != null) {
            setExpressInteractionListener(this.Tgh);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressView
    public void Qhi(tP tPVar, AdSlot adSlot) {
        this.ac = new NativeExpressVideoView(this.Qhi, tPVar, adSlot, this.hm);
        this.ac.setExpressInteractionListener(new PAGExpressAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.BannerExpressVideoView.1
            @Override // com.bytedance.sdk.openadsdk.api.PAGAdWrapperListener
            public void onAdClicked() {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onAdDismissed() {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onAdShow(View view, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onRenderFail(View view, String str, int i) {
            }

            @Override // com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener
            public void onRenderSuccess(View view, float f2, float f3) {
                BannerExpressVideoView.this.Qhi(f2, f3);
                BannerExpressVideoView.this.fl();
            }
        });
        zn.Qhi((View) this.ac, 8);
        addView(this.ac, new ViewGroup.LayoutParams(-1, -1));
    }

    public com.bytedance.sdk.openadsdk.multipro.cJ.Qhi getVideoModel() {
        if (this.cJ != null) {
            return ((NativeExpressVideoView) this.cJ).getVideoModel();
        }
        return null;
    }
}
