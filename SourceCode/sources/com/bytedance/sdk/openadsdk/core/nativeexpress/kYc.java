package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.core.NFd;
import com.bytedance.sdk.openadsdk.core.model.MQ;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.lB;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.google.android.exoplayer2.ExoPlayer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: WebViewRender.java */
/* loaded from: classes2.dex */
public class kYc extends com.bytedance.sdk.component.adexpress.fl.Qhi {
    private String ABk;
    private final Runnable EBS;
    private JSONObject Gm;
    private com.bytedance.sdk.component.adexpress.cJ.Sf HzH;
    private hm MQ;
    com.bytedance.sdk.openadsdk.utils.Qhi ROR;
    private Context Sf;
    private tP WAv;
    private String hm;
    private NFd hpZ;
    private com.bytedance.sdk.openadsdk.cJ.zc iMK;
    private tP.Qhi kYc;
    private final Map<String, com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl> pA;
    private final com.bytedance.sdk.component.Sf.hm qMt;
    private volatile int tP;
    private com.bytedance.sdk.openadsdk.cJ.ac.Tgh zc;

    public kYc(Context context, com.bytedance.sdk.component.adexpress.cJ.iMK imk, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh, tP tPVar) {
        super(context, imk, themeStatusBroadcastReceiver);
        this.pA = Collections.synchronizedMap(new HashMap());
        this.tP = 0;
        this.qMt = new com.bytedance.sdk.component.Sf.hm("webviewrender_template") { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.kYc.1
            @Override // java.lang.Runnable
            public void run() {
                if (kYc.this.Tgh.get()) {
                    return;
                }
                if ((kYc.this.WAv instanceof MQ) && ((MQ) kYc.this.WAv).mvd()) {
                    kYc.this.cJ(true);
                }
                kYc kyc = kYc.this;
                kyc.Gm = kyc.Gm().ac();
                kYc kyc2 = kYc.this;
                kyc2.Qhi(kyc2.Gm);
                if (kYc.this.WAv != null && kYc.this.WAv.es() != null) {
                    kYc kyc3 = kYc.this;
                    kyc3.fl = com.bytedance.sdk.component.adexpress.Qhi.cJ.cJ.ac(kyc3.WAv.es().fl());
                }
                if (kYc.this.tP == 0) {
                    kYc.this.HzH();
                }
                com.bytedance.sdk.openadsdk.core.iMK.ac().post(kYc.this.EBS);
            }
        };
        this.EBS = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.kYc.2
            @Override // java.lang.Runnable
            public void run() {
                if (kYc.this.Tgh.get() || kYc.this.HzH == null) {
                    return;
                }
                kYc.this.zc();
                kYc kyc = kYc.this;
                kYc.super.Qhi(kyc.HzH);
            }
        };
        if (this.ac == null) {
            return;
        }
        this.Sf = context;
        this.hm = imk.CJ();
        this.WAv = tPVar;
        this.zc = tgh;
        themeStatusBroadcastReceiver.Qhi(this);
        HzH();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void HzH() {
        if (this.ac.getWebView() != null && lG.fl()) {
            kYc();
            return;
        }
        this.tP = 1;
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.kYc.3
            @Override // java.lang.Runnable
            public void run() {
                kYc.this.kYc();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void kYc() {
        if (this.ac == null || this.ac.getWebView() == null || this.tP == 2) {
            return;
        }
        this.ABk = Qhi(this.WAv);
        this.ac.setDisplayZoomControls(false);
        Qhi(lB.Qhi(this.ABk));
        ABk();
        NFd nFd = new NFd(this.Sf);
        this.hpZ = nFd;
        nFd.CJ(true);
        iMK();
        this.tP = 2;
    }

    public static String Qhi(tP tPVar) {
        tP.Qhi es;
        return com.bytedance.sdk.component.adexpress.Qhi.cJ.cJ.CJ((tPVar == null || (es = tPVar.es()) == null) ? null : es.zc());
    }

    public void zc() {
        NFd nFd;
        if (this.ac == null || this.ac.getWebView() == null || (nFd = this.hpZ) == null) {
            return;
        }
        nFd.cJ(this.ac).Qhi(this.WAv).ac(this.WAv.HLI()).CJ(this.WAv.EGK()).cJ(js.Qhi(this.hm)).fl(this.WAv.bIO()).Qhi(this).Qhi(this.Gm).Qhi(this.ac).Qhi(this.zc);
    }

    public void ABk() {
        tP tPVar = this.WAv;
        if (tPVar == null || tPVar.es() == null) {
            return;
        }
        this.kYc = this.WAv.es();
    }

    public void iMK() {
        if (this.ac == null || this.ac.getWebView() == null) {
            return;
        }
        this.ac.setBackgroundColor(0);
        this.ac.setBackgroundResource(17170445);
        Qhi(this.ac);
        if (Qhi() != null) {
            this.iMK = new com.bytedance.sdk.openadsdk.cJ.zc(this.WAv, Qhi().getWebView()).Qhi(false);
        }
        this.iMK.Qhi(this.zc);
        this.MQ = new hm(this.Sf, this.hpZ, this.WAv, this.iMK);
        this.ac.setWebViewClient(this.MQ);
        this.ac.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Qhi.fl(this.hpZ, this.iMK));
        com.bytedance.sdk.component.adexpress.fl.Tgh.Qhi().Qhi(this.ac, this.hpZ);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.fl.Qhi
    public void hm() {
        super.hm();
        com.bytedance.sdk.openadsdk.utils.Qhi fl = com.bytedance.sdk.openadsdk.core.pA.Qhi().fl();
        this.ROR = fl;
        fl.Qhi(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.adexpress.fl.Qhi
    public void WAv() {
        super.WAv();
        com.bytedance.sdk.openadsdk.utils.Qhi qhi = this.ROR;
        if (qhi != null) {
            qhi.cJ(this);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.Qhi, com.bytedance.sdk.component.adexpress.cJ.fl
    public void Qhi(com.bytedance.sdk.component.adexpress.cJ.Sf sf) {
        this.HzH = sf;
        lG.cJ(this.qMt);
    }

    private void Qhi(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.core.widget.Qhi.ac.Qhi(this.Sf).Qhi(false).Qhi(sSWebView.getWebView());
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
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.WebViewRender", e2.toString());
        }
    }

    public hm pA() {
        return this.MQ;
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.Qhi
    public SSWebView Qhi() {
        return this.ac;
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.Qhi
    public void CJ() {
        if (this.Tgh.get()) {
            return;
        }
        NFd nFd = this.hpZ;
        if (nFd != null) {
            nFd.cJ();
            this.hpZ.Gm();
            this.hpZ = null;
        }
        com.bytedance.sdk.openadsdk.cJ.zc zcVar = this.iMK;
        if (zcVar != null) {
            zcVar.ac(false);
        }
        super.CJ();
        com.bytedance.sdk.openadsdk.core.iMK.ac().removeCallbacks(this.EBS);
        this.pA.clear();
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.Qhi
    public void Tgh() {
        if (Qhi() == null) {
            return;
        }
        try {
            Qhi().getWebView().resumeTimers();
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.Qhi
    public void Sf() {
        super.Sf();
        if (this.hpZ == null) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("expressShow", true);
            this.hpZ.Qhi("expressShow", jSONObject);
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.Qhi
    public void ROR() {
        NFd nFd = this.hpZ;
        if (nFd == null) {
            return;
        }
        nFd.Qhi("expressWebviewRecycle", (JSONObject) null);
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.Qhi
    public void cJ(int i) {
        if (i == this.CJ) {
            return;
        }
        this.CJ = i;
        ac(i == 0);
    }

    private void ac(boolean z) {
        if (this.hpZ != null && this.ac != null) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("adVisible", z);
                this.hpZ.Qhi("expressAdShow", jSONObject);
            } catch (Exception unused) {
            }
        }
    }

    public NFd hpZ() {
        return this.hpZ;
    }

    @Override // com.bytedance.sdk.component.adexpress.theme.Qhi
    public void Qhi(int i) {
        if (this.hpZ == null) {
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("status", i);
        } catch (JSONException unused) {
        }
        this.hpZ.Qhi("themeChange", jSONObject);
    }

    public static boolean cJ(String str) {
        return "banner_call".equals(str) || "banner_ad".equals(str) || "slide_banner_ad".equals(str) || "banner_ad_landingpage".equals(str);
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.Qhi, com.bytedance.sdk.component.adexpress.cJ.zc
    public void Qhi(com.bytedance.sdk.component.adexpress.cJ.pA pAVar) {
        super.Qhi(pAVar);
        if (this.cJ) {
            com.bytedance.sdk.component.utils.Sf.cJ().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.kYc.4
                @Override // java.lang.Runnable
                public void run() {
                    WebView webView = kYc.this.ac.getWebView();
                    if (webView != null) {
                        webView.resumeTimers();
                    }
                }
            }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
        }
    }
}
