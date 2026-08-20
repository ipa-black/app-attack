package com.bytedance.sdk.openadsdk.core.widget.Qhi;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.applovin.impl.sdk.utils.Utils;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.sdk.component.utils.hpZ;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.cJ.zc;
import com.bytedance.sdk.openadsdk.core.NFd;
import com.bytedance.sdk.openadsdk.core.model.Gm;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.HzH;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: TTWebViewClient.java */
/* loaded from: classes2.dex */
public class Tgh extends SSWebView.Qhi {
    private static final HashSet<String> hpZ;
    private com.bytedance.sdk.openadsdk.common.cJ ABk;
    protected final Context CJ;
    private Map<String, Object> Gm;
    private final boolean Qhi;
    protected boolean ROR;
    protected boolean Sf;
    protected zc Tgh;
    private Gm WAv;
    protected final NFd ac;
    private String cJ;
    protected final String fl;
    protected boolean hm;
    private JSONObject iMK;
    private tP pA;
    private boolean zc;

    public void Qhi(Gm gm) {
        this.WAv = gm;
    }

    public void Qhi(Map<String, Object> map) {
        this.Gm = map;
    }

    public void Qhi(JSONObject jSONObject) {
        this.iMK = jSONObject;
    }

    public void Qhi(String str) {
        this.cJ = str;
    }

    public void Qhi(tP tPVar) {
        this.pA = tPVar;
    }

    public Tgh(Context context, NFd nFd, String str, com.bytedance.sdk.openadsdk.common.cJ cJVar, zc zcVar, boolean z) {
        this(context, nFd, str, zcVar, z);
        this.ABk = cJVar;
    }

    public Tgh(Context context, NFd nFd, String str, zc zcVar, boolean z) {
        this.ROR = true;
        this.Sf = true;
        this.hm = false;
        this.CJ = context;
        this.ac = nFd;
        this.fl = str;
        this.Tgh = zcVar;
        this.Qhi = z;
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        zc zcVar = this.Tgh;
        if (zcVar != null) {
            zcVar.cJ(webView, str, this.Qhi);
        }
        com.bytedance.sdk.openadsdk.common.cJ cJVar = this.ABk;
        if (cJVar != null) {
            cJVar.Qhi(webView, str);
        }
        return super.shouldInterceptRequest(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Uri parse;
        String lowerCase;
        zc zcVar = this.Tgh;
        if (zcVar != null) {
            zcVar.Qhi(str, this.Qhi);
        }
        com.bytedance.sdk.openadsdk.common.cJ cJVar = this.ABk;
        if (cJVar != null) {
            cJVar.Qhi(webView, str, this.Qhi);
        }
        try {
            parse = Uri.parse(str);
            lowerCase = parse.getScheme().toLowerCase();
        } catch (Throwable unused) {
            NFd nFd = this.ac;
            if (nFd != null && nFd.CJ()) {
                return true;
            }
        }
        if ("bytedance".equals(lowerCase)) {
            HzH.Qhi(parse, this.ac);
            return true;
        } else if (ac(str)) {
            return true;
        } else {
            if (!hpZ.Qhi(str)) {
                if (com.bytedance.sdk.openadsdk.core.model.HzH.ROR(this.pA)) {
                    Qhi(lowerCase, str);
                    return true;
                }
                try {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(parse);
                    intent.addFlags(268435456);
                    this.CJ.startActivity(intent);
                } catch (Throwable unused2) {
                }
                return true;
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }
    }

    private void Qhi(String str, String str2) {
        if ((fl(str) || Utils.PLAY_STORE_SCHEME.equals(str)) && ((this.WAv != null || this.iMK != null) && cJ(str2))) {
            cJ();
        }
        this.WAv = null;
        this.iMK = null;
    }

    public boolean cJ(String str) {
        String str2;
        String str3;
        if (this.CJ == null) {
            return false;
        }
        tP tPVar = this.pA;
        if (tPVar != null && tPVar.pv() != null) {
            str2 = this.pA.pv().ac();
            str3 = this.pA.pv().Qhi();
        } else {
            str2 = "";
            str3 = "";
        }
        return com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.Qhi.Qhi(str, this.CJ, this.cJ, this.pA, (Map<String, Object>) null) || com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.Qhi.Qhi(this.pA, str2, this.CJ, this.cJ, (Map<String, Object>) null) || com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.ac.Qhi(this.CJ, str3, str2, this.cJ, this.pA);
    }

    private boolean fl(String str) {
        if (com.bytedance.sdk.openadsdk.core.model.HzH.ROR(this.pA)) {
            return TextUtils.equals(this.pA.yy(), str);
        }
        return false;
    }

    public void cJ() {
        if (TextUtils.isEmpty(this.cJ) || !com.bytedance.sdk.openadsdk.core.model.HzH.Tgh(this.pA) || this.zc) {
            return;
        }
        Gm gm = this.WAv;
        if (gm != null) {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(Constants.CLICK, this.pA, gm, this.cJ, true, this.Gm, 1);
            this.zc = true;
            return;
        }
        JSONObject jSONObject = this.iMK;
        if (jSONObject != null) {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(this.pA, this.cJ, Constants.CLICK, jSONObject);
            this.zc = true;
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        zc zcVar = this.Tgh;
        if (zcVar != null) {
            zcVar.Qhi(webView, str, this.Qhi);
        }
        com.bytedance.sdk.openadsdk.common.cJ cJVar = this.ABk;
        if (cJVar != null) {
            cJVar.cJ(webView, str, this.Qhi);
        }
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        zc zcVar = this.Tgh;
        if (zcVar != null) {
            zcVar.Qhi(webView, str, bitmap, this.Qhi);
        }
        com.bytedance.sdk.openadsdk.common.cJ cJVar = this.ABk;
        if (cJVar != null) {
            cJVar.ac(webView, str, this.Qhi);
        }
        new Object[]{"mNeedHardwareAcceleration:", Boolean.valueOf(this.Sf), "hasSetHardwareAccelerate", Boolean.valueOf(this.hm)};
        if (!this.Sf || this.hm) {
            return;
        }
        this.hm = true;
        ac.Qhi(this.CJ).Qhi(true).cJ(webView.getSettings().getBuiltInZoomControls()).Qhi(webView);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if (this.Tgh == null || webResourceError == null) {
            return;
        }
        Uri url = webResourceRequest.getUrl();
        String str = "";
        String uri = url != null ? url.toString() : "";
        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
        if (requestHeaders.containsKey("accept")) {
            str = requestHeaders.get("accept");
        }
        this.Tgh.Qhi(webView, webResourceError.getErrorCode(), String.valueOf(webResourceError.getDescription()), uri, str, webResourceRequest != null && webResourceRequest.isForMainFrame());
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        if (this.Tgh == null || webResourceResponse == null) {
            return;
        }
        Uri url = webResourceRequest.getUrl();
        String str = "";
        String uri = url != null ? url.toString() : "";
        Map<String, String> requestHeaders = webResourceRequest.getRequestHeaders();
        if (requestHeaders.containsKey("accept")) {
            str = requestHeaders.get("accept");
        }
        this.Tgh.Qhi(webView, webResourceResponse.getStatusCode(), String.valueOf(webResourceResponse.getReasonPhrase()), uri, str, webResourceRequest != null && webResourceRequest.isForMainFrame());
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        if (sslErrorHandler != null) {
            try {
                sslErrorHandler.cancel();
            } catch (Throwable unused) {
            }
        }
        if (this.Tgh != null) {
            int i = 0;
            String str = "SslError: unknown";
            String str2 = null;
            if (sslError != null) {
                try {
                    i = sslError.getPrimaryError();
                    str = "SslError: ".concat(String.valueOf(sslError));
                    str2 = sslError.getUrl();
                } catch (Throwable unused2) {
                }
            }
            String str3 = str2;
            this.Tgh.Qhi(webView, i, str, str3, CJ(str3), true);
        }
    }

    public boolean ac(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            Uri parse = Uri.parse(str);
            if ("play.google.com".equals(parse.getHost())) {
                if (com.bytedance.sdk.openadsdk.core.model.HzH.ROR(this.pA) && this.iMK == null && this.WAv == null) {
                    return true;
                }
                Intent intent = new Intent("android.intent.action.VIEW");
                if (!(this.CJ instanceof Activity)) {
                    intent.addFlags(268435456);
                }
                intent.setData(parse);
                intent.setPackage("com.android.vending");
                this.CJ.startActivity(intent);
                cJ();
                this.iMK = null;
                this.WAv = null;
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    static {
        HashSet<String> hashSet = new HashSet<>();
        hpZ = hashSet;
        hashSet.add("png");
        hashSet.add("ico");
        hashSet.add("jpg");
        hashSet.add("gif");
        hashSet.add("svg");
        hashSet.add("jpeg");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String CJ(String str) {
        int lastIndexOf;
        String substring;
        if (str == null || (lastIndexOf = str.lastIndexOf(46)) < 0 || lastIndexOf == str.length() - 1 || (substring = str.substring(lastIndexOf)) == null || !hpZ.contains(substring.toLowerCase(Locale.getDefault()))) {
            return null;
        }
        return "image/".concat(String.valueOf(substring));
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView.Qhi, android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        try {
            com.bytedance.sdk.component.adexpress.fl.Tgh.Qhi().cJ();
        } catch (Exception unused) {
        }
        return super.onRenderProcessGone(webView, renderProcessGoneDetail);
    }
}
