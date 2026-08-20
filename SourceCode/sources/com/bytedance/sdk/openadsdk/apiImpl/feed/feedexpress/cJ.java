package com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.component.adexpress.cJ.ac;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.api.PAGExpressAdWrapperListener;
import com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView;
import com.bytedance.sdk.openadsdk.apiImpl.feed.hm;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressVideoView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.utils.zn;
/* compiled from: PAGFeedExpressView.java */
/* loaded from: classes2.dex */
public class cJ extends hm {
    protected String Gm;
    protected final Context Sf;
    protected NativeExpressView WAv;
    protected AdSlot hm;
    private boolean zc;

    public cJ(Context context, tP tPVar, AdSlot adSlot) {
        super(context, tPVar, 5, true);
        this.Gm = "embeded_ad";
        this.zc = false;
        this.cJ.Sf(1);
        this.CJ.Qhi(this);
        this.Sf = context;
        this.hm = adSlot;
        Qhi();
        cJ();
    }

    protected void Qhi() {
        this.WAv = new NativeExpressView(this.Sf, this.cJ, this.hm, this.Gm);
        ac();
    }

    private void cJ() {
        NativeExpressView nativeExpressView = this.WAv;
        if (nativeExpressView != null) {
            nativeExpressView.setBackupListener(new ac() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.cJ.1
                @Override // com.bytedance.sdk.component.adexpress.cJ.ac
                public boolean Qhi(ViewGroup viewGroup, int i) {
                    PAGFeedExpressBackupView pAGFeedExpressBackupView = new PAGFeedExpressBackupView(cJ.this.WAv.getContext());
                    pAGFeedExpressBackupView.setExtraFuncationHelper(cJ.this.CJ);
                    pAGFeedExpressBackupView.Qhi(cJ.this.WAv);
                    return true;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void ac() {
        NativeExpressView nativeExpressView = this.WAv;
        if (nativeExpressView != null) {
            nativeExpressView.setExpressInteractionListener(new PAGExpressAdWrapperListener() { // from class: com.bytedance.sdk.openadsdk.apiImpl.feed.feedexpress.cJ.2
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
                    if (!cJ.this.WAv.ABk()) {
                        cJ.this.Qhi(f2, f3);
                        if (cJ.this.zc) {
                            cJ.this.WAv.Sf();
                            return;
                        }
                        return;
                    }
                    com.bytedance.sdk.openadsdk.apiImpl.feed.cJ cJVar = new com.bytedance.sdk.openadsdk.apiImpl.feed.cJ(cJ.this.Sf, cJ.this.cJ, 5, cJ.this.hm, cJ.this.CJ, cJ.this.Qhi);
                    cJ cJVar2 = cJ.this;
                    if (cJVar2 instanceof Qhi) {
                        cJVar.Qhi(((NativeExpressVideoView) cJVar2.CJ()).getVideoAdListener());
                    }
                    cJ.this.CJ.Qhi((com.bytedance.sdk.openadsdk.core.cJ.Qhi) cJ.this.WAv.getClickCreativeListener());
                    PAGMediaView hm = cJ.this.CJ.hm();
                    if (hm == null) {
                        hm = new PAGMediaView(cJ.this.Sf);
                    }
                    cJ.this.WAv.addView(hm);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(float f2, float f3) {
        int cJ = zn.cJ(this.Sf, f2);
        int cJ2 = zn.cJ(this.Sf, f3);
        ViewGroup.LayoutParams layoutParams = this.WAv.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(cJ, cJ2);
        }
        layoutParams.width = cJ;
        layoutParams.height = cJ2;
        this.WAv.setLayoutParams(layoutParams);
    }

    public NativeExpressView CJ() {
        return this.WAv;
    }

    public void Qhi(boolean z) {
        this.zc = z;
    }

    public void fl() {
        NativeExpressView nativeExpressView = this.WAv;
        if (nativeExpressView != null) {
            nativeExpressView.hm();
        }
    }
}
