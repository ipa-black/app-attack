package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.view.ViewGroup;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.List;
/* compiled from: BrandBannerWebViewPool.java */
/* loaded from: classes2.dex */
public class ac {
    private static volatile ac ac;
    private static int cJ;
    private final List<DspHtmlWebView> Qhi = new ArrayList();

    public static ac Qhi() {
        if (ac == null) {
            synchronized (ac.class) {
                if (ac == null) {
                    ac = new ac();
                }
            }
        }
        return ac;
    }

    public DspHtmlWebView cJ() {
        DspHtmlWebView remove;
        if (ac() > 0 && (remove = this.Qhi.remove(0)) != null) {
            return remove;
        }
        return null;
    }

    public void Qhi(DspHtmlWebView dspHtmlWebView) {
        if (dspHtmlWebView != null) {
            cJ(dspHtmlWebView);
        }
    }

    public void cJ(DspHtmlWebView dspHtmlWebView) {
        if (dspHtmlWebView != null) {
            if (this.Qhi.size() >= cJ) {
                dspHtmlWebView.zc();
            } else if (this.Qhi.contains(dspHtmlWebView)) {
            } else {
                ac(dspHtmlWebView);
                this.Qhi.add(dspHtmlWebView);
            }
        }
    }

    public int ac() {
        return this.Qhi.size();
    }

    public void ac(DspHtmlWebView dspHtmlWebView) {
        if (dspHtmlWebView == null || dspHtmlWebView.getWebView() == null) {
            return;
        }
        if (dspHtmlWebView.getParent() != null) {
            ((ViewGroup) dspHtmlWebView.getParent()).removeView(dspHtmlWebView);
        }
        try {
            dspHtmlWebView.removeAllViews();
            dspHtmlWebView.ac();
            dspHtmlWebView.setWebChromeClient(null);
            dspHtmlWebView.setWebViewClient(null);
            dspHtmlWebView.setDownloadListener(null);
            dspHtmlWebView.setDefaultTextEncodingName(C.UTF8_NAME);
            dspHtmlWebView.setAllowFileAccess(false);
            dspHtmlWebView.setJavaScriptEnabled(true);
            dspHtmlWebView.setAppCacheEnabled(true);
            dspHtmlWebView.setDatabaseEnabled(true);
            dspHtmlWebView.setSupportZoom(false);
            dspHtmlWebView.getWebView().setLayerType(0, null);
            dspHtmlWebView.setBackgroundColor(0);
            dspHtmlWebView.getWebView().setHorizontalScrollBarEnabled(false);
            dspHtmlWebView.getWebView().setHorizontalScrollbarOverlay(false);
            dspHtmlWebView.getWebView().setVerticalScrollBarEnabled(false);
            dspHtmlWebView.getWebView().setVerticalScrollbarOverlay(false);
            dspHtmlWebView.Qhi(true);
            dspHtmlWebView.WAv();
            dspHtmlWebView.setMixedContentMode(0);
        } catch (Exception unused) {
        }
    }
}
