package com.bytedance.sdk.openadsdk.core.widget.Qhi;

import android.content.MutableContextWrapper;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.NFd;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: PreLoadWebView.java */
/* loaded from: classes2.dex */
public class cJ implements Qhi {
    NFd Qhi;
    private SSWebView cJ;
    private AtomicInteger ac = null;
    private boolean CJ = false;

    public void Qhi(boolean z) {
        this.CJ = z;
        if (z) {
            this.ac = new AtomicInteger(HzH.CJ().ots());
        } else {
            this.ac = new AtomicInteger(HzH.CJ().zjb());
        }
    }

    public void cJ() {
        AtomicInteger atomicInteger = this.ac;
        if (atomicInteger == null || atomicInteger.get() > 0) {
            try {
                new Object[]{"preload start", Integer.valueOf(this.ac.get()), "  isV3 ??   ", Boolean.valueOf(this.CJ)};
            } catch (Exception unused) {
            }
            String CJ = com.bytedance.sdk.component.adexpress.Qhi.cJ.cJ.CJ(null);
            if (this.CJ) {
                String CJ2 = com.bytedance.sdk.component.adexpress.Qhi.cJ.cJ.CJ("v3");
                if (CJ != null && CJ.equals(CJ2)) {
                    return;
                }
                CJ = CJ2;
            }
            if (TextUtils.isEmpty(CJ)) {
                return;
            }
            try {
                SSWebView sSWebView = new SSWebView(new MutableContextWrapper(HzH.Qhi()));
                this.cJ = sSWebView;
                if (sSWebView.getWebView() == null) {
                    return;
                }
                this.cJ.setWebViewClient(new WebViewClient() { // from class: com.bytedance.sdk.openadsdk.core.widget.Qhi.cJ.1
                    @Override // android.webkit.WebViewClient
                    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
                        return true;
                    }
                });
                Qhi(this.cJ);
                Uri build = Uri.parse(CJ).buildUpon().appendQueryParameter("isPreLoad", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE).build();
                NFd nFd = new NFd(this.cJ.getContext());
                this.Qhi = nFd;
                nFd.cJ(this.cJ).Qhi(this).Qhi(this.cJ);
                com.bytedance.sdk.component.adexpress.fl.Tgh.Qhi().Qhi(this.cJ, this.Qhi);
                this.cJ.a_(build.toString());
            } catch (Exception unused2) {
            }
        }
    }

    private void Qhi(SSWebView sSWebView) {
        if (sSWebView == null || sSWebView.getWebView() == null) {
            return;
        }
        try {
            ac.Qhi(HzH.Qhi()).Qhi(false).Qhi(sSWebView.getWebView());
            sSWebView.setVerticalScrollBarEnabled(false);
            sSWebView.setHorizontalScrollBarEnabled(false);
            sSWebView.Qhi(true);
            sSWebView.WAv();
            sSWebView.setUserAgentString(com.bytedance.sdk.openadsdk.utils.HzH.Qhi(sSWebView.getWebView(), (int) BuildConfig.VERSION_CODE));
            sSWebView.setMixedContentMode(0);
            sSWebView.setJavaScriptEnabled(true);
            sSWebView.setJavaScriptCanOpenWindowsAutomatically(true);
            sSWebView.setDomStorageEnabled(true);
            sSWebView.setDatabaseEnabled(true);
            sSWebView.setAppCacheEnabled(true);
            sSWebView.setAllowFileAccess(false);
            sSWebView.setSupportZoom(true);
            sSWebView.setBuiltInZoomControls(true);
            sSWebView.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
            sSWebView.setUseWideViewPort(true);
        } catch (Exception e2) {
            ABk.Qhi("WebViewPool", e2.toString());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Qhi
    public void Qhi() {
        if (this.CJ) {
            com.bytedance.sdk.component.adexpress.fl.Tgh.Qhi().cJ(this.cJ);
        } else {
            com.bytedance.sdk.component.adexpress.fl.Tgh.Qhi().ac(this.cJ);
        }
        AtomicInteger atomicInteger = this.ac;
        if (atomicInteger != null) {
            new Object[]{"preload finish ", Integer.valueOf(atomicInteger.get()), "isV3 ?? ", Boolean.valueOf(this.CJ)};
            this.ac.decrementAndGet();
            if (this.ac.get() > 0) {
                cJ();
            }
        }
    }
}
