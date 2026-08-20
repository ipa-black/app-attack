package com.bytedance.sdk.openadsdk.component.reward.Qhi;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.lG;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.google.android.exoplayer2.C;
import org.json.JSONObject;
/* compiled from: VastEndCardManager.java */
/* loaded from: classes2.dex */
public class HzH implements com.bytedance.sdk.openadsdk.WAv.Sf {
    private ImageView CJ;
    private final Activity Qhi;
    private boolean ROR;
    private volatile boolean Sf;
    private com.bytedance.sdk.openadsdk.core.cJ.Sf Tgh;
    private int WAv;
    private SSWebView ac;
    private final tP cJ;
    private boolean fl;
    private final Qhi hm;

    public HzH(Qhi qhi) {
        this.hm = qhi;
        this.cJ = qhi.cJ;
        this.Qhi = qhi.FQ;
    }

    public void Qhi() {
        DeviceUtils.AudioInfoReceiver.Qhi(this);
        this.WAv = DeviceUtils.ROR();
        if (this.cJ.cJP() != null) {
            this.Tgh = new com.bytedance.sdk.openadsdk.core.cJ.Sf("VAST_END_CARD", this.cJ.cJP()) { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.HzH.1
            };
            com.bytedance.sdk.openadsdk.core.ROR.ac ac = this.cJ.cJP().ac();
            if (ac != null) {
                final String fl = ac.fl();
                if (!TextUtils.isEmpty(fl)) {
                    this.fl = true;
                    this.CJ = (ImageView) this.hm.yN.findViewById(com.bytedance.sdk.openadsdk.utils.iMK.Sf);
                    Qhi(ac.cJ(), ac.ac());
                    com.bytedance.sdk.openadsdk.ROR.fl.Qhi(fl).Qhi(ac.cJ()).cJ(ac.ac()).fl(zn.CJ(com.bytedance.sdk.openadsdk.core.HzH.Qhi())).CJ(zn.ac(com.bytedance.sdk.openadsdk.core.HzH.Qhi())).ac(2).Qhi(new com.bytedance.sdk.openadsdk.ROR.cJ(this.cJ, fl, new com.bytedance.sdk.component.fl.HzH<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.HzH.2
                        @Override // com.bytedance.sdk.component.fl.HzH
                        public void Qhi(com.bytedance.sdk.component.fl.zc<Bitmap> zcVar) {
                            if (HzH.this.CJ == null || zcVar == null) {
                                return;
                            }
                            Bitmap cJ = zcVar.cJ();
                            if (cJ == null) {
                                HzH.this.Qhi(-1, fl);
                                return;
                            }
                            HzH.this.CJ.setImageBitmap(cJ);
                            HzH.this.ROR = true;
                            HzH.this.CJ();
                        }

                        @Override // com.bytedance.sdk.component.fl.HzH
                        public void Qhi(int i, String str, Throwable th) {
                            if (HzH.this.CJ != null) {
                                HzH.this.CJ.setVisibility(8);
                            }
                            HzH.this.Qhi(-2, fl);
                        }
                    }));
                    return;
                }
                SSWebView sSWebView = (SSWebView) this.hm.yN.findViewById(com.bytedance.sdk.openadsdk.utils.iMK.hm);
                this.ac = sSWebView;
                if (sSWebView == null) {
                    return;
                }
                fl();
                String CJ = ac.CJ();
                if (CJ != null) {
                    this.fl = true;
                    if (CJ.startsWith("http")) {
                        this.ac.a_(CJ);
                        return;
                    }
                    String Qhi = com.bytedance.sdk.openadsdk.core.ROR.Tgh.Qhi(CJ);
                    String str = TextUtils.isEmpty(Qhi) ? CJ : Qhi;
                    this.ac.setDefaultTextEncodingName("UTF -8");
                    this.ac.Qhi(null, str, "text/html", C.UTF8_NAME, null);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void CJ() {
        Qhi(Integer.MAX_VALUE, (String) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(final int i, final String str) {
        String str2;
        if (this.Sf) {
            return;
        }
        this.Sf = true;
        if (this.cJ.cJP() == null) {
            str2 = "";
        } else {
            str2 = this.cJ.cJP().Gm();
        }
        final String str3 = str2;
        if (i == Integer.MAX_VALUE) {
            com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.cJ, str3, "load_vast_endcard_success", (JSONObject) null);
        } else {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(new com.bytedance.sdk.component.Sf.hm("load_vast_endcard_fail") { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.HzH.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("reason_code", i);
                        jSONObject.put("error_code", i);
                        String str4 = str;
                        if (str4 != null) {
                            jSONObject.put("url", str4);
                        }
                        com.bytedance.sdk.openadsdk.cJ.ac.cJ(HzH.this.cJ, str3, "load_vast_endcard_fail", jSONObject);
                    } catch (Exception unused) {
                    }
                }
            });
        }
    }

    private void fl() {
        this.ac.g_();
        Qhi(this.ac);
        this.ac.setDisplayZoomControls(false);
        this.ac.setWebChromeClient(new WebChromeClient() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.HzH.4
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                if (i == 100) {
                    HzH.this.CJ();
                }
            }
        });
        this.ac.setWebViewClient(new SSWebView.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.HzH.5
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (HzH.this.Qhi(str)) {
                    return true;
                }
                return super.shouldOverrideUrlLoading(webView, str);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                if (webResourceRequest.isForMainFrame()) {
                    HzH.this.Qhi(webResourceResponse.getStatusCode(), webResourceRequest.getUrl() != null ? webResourceRequest.getUrl().toString() : null);
                }
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                HzH.this.CJ();
            }
        });
    }

    private void Qhi(SSWebView sSWebView) {
        sSWebView.setVerticalScrollBarEnabled(false);
        sSWebView.setHorizontalScrollBarEnabled(false);
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Qhi(String str) {
        tP tPVar;
        if (str == null || (tPVar = this.cJ) == null || tPVar.cJP() == null || this.Tgh == null) {
            return false;
        }
        this.cJ.cJP().ROR(str);
        this.Tgh.onClick(this.ac);
        return true;
    }

    private void Qhi(int i, int i2) {
        float f2;
        float f3;
        if (i == 0 || i2 == 0 || this.CJ == null) {
            return;
        }
        int ac = zn.ac((Context) this.Qhi);
        int CJ = zn.CJ((Context) this.Qhi);
        if (i / i2 <= ac / CJ) {
            ac = (int) Math.ceil(f3 * f2);
        } else {
            CJ = (int) Math.ceil(f3 / f2);
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.CJ.getLayoutParams();
        layoutParams.width = ac;
        layoutParams.height = CJ;
        layoutParams.gravity = 17;
        this.CJ.setLayoutParams(layoutParams);
        this.CJ.setOnClickListener(this.Tgh);
        this.CJ.setOnTouchListener(this.Tgh);
    }

    public boolean Qhi(pA pAVar) {
        com.bytedance.sdk.openadsdk.core.ROR.ac ac;
        if (this.fl) {
            ImageView imageView = this.CJ;
            if (imageView != null && this.ROR) {
                imageView.setVisibility(0);
            } else {
                SSWebView sSWebView = this.ac;
                if (sSWebView != null) {
                    sSWebView.setVisibility(0);
                    if (this.ac.getWebView() != null) {
                        this.ac.getWebView().setOnTouchListener(this.Tgh);
                    }
                }
            }
            tP tPVar = this.cJ;
            if (tPVar == null || tPVar.cJP() == null || (ac = this.cJ.cJP().ac()) == null) {
                return true;
            }
            ac.cJ(pAVar != null ? pAVar.ROR() : -1L);
            return true;
        }
        return false;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.cJ.Tgh tgh) {
        com.bytedance.sdk.openadsdk.core.cJ.Sf sf = this.Tgh;
        if (sf != null) {
            sf.Qhi(tgh);
        }
    }

    public void cJ() {
        DeviceUtils.AudioInfoReceiver.cJ(this);
        SSWebView sSWebView = this.ac;
        if (sSWebView != null) {
            lG.Qhi(sSWebView.getWebView());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.WAv.Sf
    public void Qhi(int i) {
        int i2 = this.WAv;
        if (i2 == 0 && i > 0) {
            this.cJ.cJP().Qhi().hm(this.hm.bxS.ROR());
        } else if (i2 > 0 && i == 0) {
            this.cJ.cJP().Qhi().Sf(this.hm.bxS.ROR());
        }
        this.WAv = i;
    }

    public boolean ac() {
        if (this.fl) {
            ImageView imageView = this.CJ;
            if (imageView != null) {
                imageView.performClick();
                return true;
            }
            SSWebView sSWebView = this.ac;
            if (sSWebView != null) {
                this.Tgh.onClick(sSWebView);
                return true;
            }
            return false;
        }
        return false;
    }
}
