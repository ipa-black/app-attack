package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.nativeexpress.cJ;
import com.google.android.exoplayer2.C;
import com.iab.omid.library.bytedance2.adsession.FriendlyObstructionPurpose;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class DspHtmlWebView extends SSWebView implements cJ.ac {
    private long ABk;
    AtomicBoolean CJ;
    private cJ Gm;
    protected boolean Qhi;
    private tP ROR;
    private String Sf;
    private ac Tgh;
    private List<String> WAv;
    AtomicBoolean ac;
    protected boolean cJ;
    private HzH fl;
    private int hm;
    private int zc;

    /* loaded from: classes2.dex */
    public interface cJ {
        View Qhi();

        void Qhi(int i, int i2);

        void Qhi(View view, int i);

        View cJ();

        void f_();
    }

    public DspHtmlWebView(Context context) {
        super(context);
        this.Qhi = false;
        this.cJ = false;
        this.ac = new AtomicBoolean(false);
        this.CJ = new AtomicBoolean(false);
        this.hm = 0;
    }

    public void Qhi(tP tPVar, cJ cJVar, String str) {
        this.Gm = cJVar;
        this.ROR = tPVar;
        this.Sf = str;
        this.Tgh = new ac();
        this.fl = new HzH(getContext());
        setWebViewClient(new Qhi(this));
        setWebChromeClient(new WebChromeClient() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.1
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                DspHtmlWebView.this.zc = i;
                super.onProgressChanged(webView, i);
                if (i >= 100) {
                    DspHtmlWebView.this.Qhi();
                }
            }
        });
        com.bytedance.sdk.component.utils.Sf.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.2
            @Override // java.lang.Runnable
            public void run() {
                WebView webView = DspHtmlWebView.this.getWebView();
                if (webView != null) {
                    webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.2.1
                        @Override // android.view.View.OnTouchListener
                        public boolean onTouch(View view, MotionEvent motionEvent) {
                            DspHtmlWebView.this.fl.onTouchEvent(motionEvent);
                            return false;
                        }
                    });
                }
            }
        });
    }

    private void HzH() {
        if (this.WAv == null) {
            com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.ROR, this.Sf, "dsp_html_success_url", (JSONObject) null);
        } else {
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(new com.bytedance.sdk.component.Sf.hm("dsp_html_error_url") { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (DspHtmlWebView.this.WAv != null && DspHtmlWebView.this.CJ.compareAndSet(false, true)) {
                            JSONObject jSONObject = new JSONObject();
                            JSONArray jSONArray = new JSONArray();
                            for (String str : DspHtmlWebView.this.WAv) {
                                jSONArray.put(str);
                            }
                            jSONObject.put("url", jSONArray);
                            com.bytedance.sdk.openadsdk.cJ.ac.cJ(DspHtmlWebView.this.ROR, DspHtmlWebView.this.Sf, "dsp_html_error_url", jSONObject);
                            DspHtmlWebView.this.WAv = null;
                        }
                    } catch (Exception unused) {
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.component.widget.SSWebView
    public void zc() {
        super.zc();
        this.Tgh.cJ();
    }

    public void Qhi(View view, FriendlyObstructionPurpose friendlyObstructionPurpose) {
        this.Tgh.Qhi(view, friendlyObstructionPurpose);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.widget.SSWebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.Qhi) {
            this.Tgh.Qhi(getWebView());
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        boolean z = i == 0;
        this.cJ = z;
        this.Tgh.Qhi(z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.widget.SSWebView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("rate", this.zc / 100.0f);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.ROR, this.Sf, "load_rate", jSONObject);
        this.Tgh.Qhi();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.cJ.ac
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Qhi(java.lang.String r21) {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.Qhi(java.lang.String):void");
    }

    public void pA() {
        cJ cJVar = this.Gm;
        if (cJVar != null) {
            cJVar.f_();
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("render_duration", SystemClock.elapsedRealtime() - this.ABk);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.ROR, this.Sf, "render_html_success", jSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.cJ.ac
    public void Qhi(int i, int i2) {
        cJ cJVar = this.Gm;
        if (cJVar != null) {
            cJVar.Qhi(i, i2);
        }
        this.hm = i2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("error_code", i2);
            jSONObject.put("render_duration", SystemClock.elapsedRealtime() - this.ABk);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.ROR, this.Sf, "render_html_fail", jSONObject);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.cJ.ac
    public void cJ(String str) {
        if (this.WAv == null) {
            this.WAv = new ArrayList();
        }
        this.WAv.add(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.cJ.ac
    public void Qhi() {
        if (this.ac.compareAndSet(false, true)) {
            this.Qhi = true;
            this.Tgh.Qhi(getWebView());
            this.Tgh.Qhi(this.cJ);
            pA();
            HzH();
        }
    }

    public void hpZ() {
        this.ac.set(false);
        String bM = this.ROR.bM();
        if (TextUtils.isEmpty(bM)) {
            return;
        }
        String Qhi2 = com.bytedance.sdk.openadsdk.core.ROR.Tgh.Qhi(bM);
        String str = TextUtils.isEmpty(Qhi2) ? bM : Qhi2;
        this.hm = 0;
        Qhi(null, str, "text/html", C.UTF8_NAME, null);
        this.ABk = SystemClock.elapsedRealtime();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Qhi extends SSWebView.Qhi {
        public static final Set<String> Qhi = new HashSet<String>() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.DspHtmlWebView.Qhi.1
            {
                add(".jpeg");
                add(".png");
                add(".bmp");
                add(".gif");
                add(".jpg");
                add(".webp");
            }
        };
        cJ.ac cJ;

        public Qhi(cJ.ac acVar) {
            this.cJ = acVar;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            this.cJ.Qhi(str);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
            super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            if (webResourceRequest == null || webResourceResponse == null || webResourceRequest.getUrl() == null) {
                return;
            }
            if (webResourceRequest.isForMainFrame()) {
                Qhi(webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode(), "");
            }
            Qhi(webResourceRequest.getUrl().toString());
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            super.onReceivedError(webView, webResourceRequest, webResourceError);
            if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
                return;
            }
            Qhi(webResourceRequest.getUrl().toString());
        }

        private void Qhi(String str) {
            int lastIndexOf;
            cJ.ac acVar;
            if (!TextUtils.isEmpty(str) && (lastIndexOf = str.lastIndexOf(".")) > 0) {
                if (!Qhi.contains(str.substring(lastIndexOf).toLowerCase()) || (acVar = this.cJ) == null) {
                    return;
                }
                acVar.cJ(str);
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            cJ.ac acVar = this.cJ;
            if (acVar != null) {
                acVar.Qhi();
            }
        }

        private void Qhi(String str, int i, String str2) {
            cJ.ac acVar = this.cJ;
            if (acVar != null) {
                acVar.Qhi(106, i);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class ac {
        protected int Qhi = 0;
        private com.bytedance.sdk.openadsdk.core.ROR.ROR cJ = com.bytedance.sdk.openadsdk.core.ROR.ROR.Qhi();

        ac() {
        }

        public void Qhi(WebView webView) {
            if (webView != null && this.Qhi == 0) {
                if (this.cJ == null) {
                    this.cJ = com.bytedance.sdk.openadsdk.core.ROR.ROR.Qhi();
                }
                this.cJ.Qhi(webView);
                this.cJ.cJ();
                this.Qhi = 1;
            }
        }

        public void Qhi(boolean z) {
            com.bytedance.sdk.openadsdk.core.ROR.ROR ror;
            if (this.Qhi == 1 && z && (ror = this.cJ) != null) {
                ror.ac();
                this.Qhi = 3;
            }
        }

        public void Qhi(View view, FriendlyObstructionPurpose friendlyObstructionPurpose) {
            com.bytedance.sdk.openadsdk.core.ROR.ROR ror = this.cJ;
            if (ror != null) {
                ror.Qhi(view, friendlyObstructionPurpose);
            }
        }

        public void Qhi() {
            com.bytedance.sdk.openadsdk.core.ROR.ROR ror;
            int i = this.Qhi;
            if (i != 0 && i != 4 && (ror = this.cJ) != null) {
                ror.CJ();
            }
            this.Qhi = 4;
            this.cJ = null;
        }

        public void cJ() {
            Qhi();
        }
    }
}
