package com.bytedance.sdk.openadsdk.api.nativeAd;

import android.content.Context;
import android.view.View;
import com.bytedance.sdk.openadsdk.core.cJ.Qhi;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.utils.ac;
/* loaded from: classes2.dex */
public class PAGVideoMediaView extends PAGMediaView implements Qhi.InterfaceC0224Qhi {
    private tP CJ;
    private final com.bytedance.sdk.openadsdk.apiImpl.feed.Qhi ac;
    private NativeVideoTsView cJ;

    public PAGVideoMediaView(Context context, View view, com.bytedance.sdk.openadsdk.apiImpl.feed.Qhi qhi) {
        super(context);
        Qhi(view);
        this.ac = qhi;
    }

    private void Qhi(View view) {
        if (view instanceof NativeVideoTsView) {
            NativeVideoTsView nativeVideoTsView = (NativeVideoTsView) view;
            this.cJ = nativeVideoTsView;
            addView(nativeVideoTsView, -1, -1);
        }
    }

    private void Qhi() {
        NativeVideoTsView nativeVideoTsView = this.cJ;
        if (nativeVideoTsView != null) {
            nativeVideoTsView.iMK();
        }
    }

    private boolean cJ() {
        NativeVideoTsView nativeVideoTsView = this.cJ;
        if (nativeVideoTsView != null) {
            return nativeVideoTsView.zc();
        }
        return false;
    }

    public void handleInterruptVideo() {
        if (cJ()) {
            return;
        }
        Qhi();
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView
    public void setVideoAdListener(final PAGVideoAdListener pAGVideoAdListener) {
        com.bytedance.sdk.openadsdk.apiImpl.feed.Qhi qhi = this.ac;
        if (qhi == null) {
            return;
        }
        qhi.Qhi(new PAGVideoAdListener() { // from class: com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoMediaView.1
            @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
            public void onVideoAdPlay() {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdPlay();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
            public void onVideoAdPaused() {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdPaused();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
            public void onVideoAdComplete() {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoAdComplete();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGVideoAdListener
            public void onVideoError() {
                PAGVideoAdListener pAGVideoAdListener2 = pAGVideoAdListener;
                if (pAGVideoAdListener2 != null) {
                    pAGVideoAdListener2.onVideoError();
                }
            }
        });
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        if (onClickListener instanceof Qhi) {
            ((Qhi) onClickListener).Qhi((Qhi.InterfaceC0224Qhi) this);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.nativeAd.PAGMediaView
    public void close() {
        NativeVideoTsView nativeVideoTsView = this.cJ;
        if (nativeVideoTsView != null) {
            nativeVideoTsView.pA();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.cJ.Qhi.InterfaceC0224Qhi
    public long getVideoProgress() {
        NativeVideoTsView nativeVideoTsView = this.cJ;
        if (nativeVideoTsView == null || nativeVideoTsView.getNativeVideoController() == null) {
            return 0L;
        }
        return this.cJ.getNativeVideoController().fl();
    }

    public void setMaterialMeta(tP tPVar) {
        this.CJ = tPVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ac.Qhi(this, this.CJ);
    }
}
