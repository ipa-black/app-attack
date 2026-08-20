package com.bytedance.sdk.openadsdk.component.reward.Qhi;

import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.DownloadListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.component.adexpress.CJ.Eh;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.BuildConfig;
import com.bytedance.sdk.openadsdk.cJ.ac;
import com.bytedance.sdk.openadsdk.cJ.kYc;
import com.bytedance.sdk.openadsdk.core.NFd;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import com.bytedance.sdk.openadsdk.core.cJ.cJ;
import com.bytedance.sdk.openadsdk.core.lG;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.zn;
import io.bidmachine.utils.IabUtils;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: RewardFullWebViewManager.java */
/* loaded from: classes2.dex */
public class hpZ implements com.bytedance.sdk.openadsdk.WAv.Sf {
    private final boolean ABk;
    protected String CJ;
    private float CQU;
    private View Dww;
    private boolean EBS;
    private long Eh;
    private boolean FQ;
    private final String Gm;
    private String HLI;
    private SSWebView HzH;
    private boolean Jma;
    private boolean MQ;
    private boolean PAe;
    NFd Qhi;
    protected com.bytedance.sdk.openadsdk.cJ.ac.Tgh Sf;
    private final tP WAv;
    private String YB;
    private View bxS;
    NFd cJ;
    private ILoader cjC;
    private boolean dI;
    private int dIT;
    private ROR.Qhi dVA;
    private com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh es;
    com.bytedance.sdk.openadsdk.cJ.zc fl;
    private SSWebView hpZ;
    private int iMK;
    private boolean ip;
    private long jPH;
    private final com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi js;
    private com.bytedance.sdk.openadsdk.common.ROR lG;
    private boolean oU;
    private boolean ots;
    private int pA;
    private float pM;
    private boolean qMt;
    private boolean yN;
    private int zc;
    private com.bytedance.sdk.openadsdk.common.cJ zjb;
    protected boolean ac = true;
    private boolean kYc = false;
    private final AtomicBoolean tP = new AtomicBoolean(true);
    int Tgh = 0;
    String ROR = "";
    boolean hm = false;
    private SparseArray<ac.Qhi> aP = new SparseArray<>();
    private boolean NFd = true;
    private float sDy = -1.0f;
    private float lB = -1.0f;
    private boolean zn = false;
    private long xyz = -1;
    private volatile int MND = 0;
    private int Qe = -1;
    private volatile int Dq = 0;
    private volatile int Hf = 0;
    private long NBs = 0;
    private int pv = -1;

    /* compiled from: RewardFullWebViewManager.java */
    /* loaded from: classes2.dex */
    public interface fl {
        void Qhi(WebView webView, int i);

        void Qhi(WebView webView, String str);

        void Qhi(WebView webView, String str, Bitmap bitmap);
    }

    static /* synthetic */ int HzH(hpZ hpz) {
        int i = hpz.MND;
        hpz.MND = i + 1;
        return i;
    }

    static /* synthetic */ int hpZ(hpZ hpz) {
        int i = hpz.Hf;
        hpz.Hf = i + 1;
        return i;
    }

    static /* synthetic */ int iMK(hpZ hpz) {
        int i = hpz.Dq;
        hpz.Dq = i + 1;
        return i;
    }

    public hpZ(com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi) {
        this.js = qhi;
        this.WAv = qhi.cJ;
        this.Gm = qhi.fl;
        this.ABk = qhi.CJ;
    }

    public void Qhi() {
        if (this.EBS) {
            return;
        }
        this.EBS = true;
        this.zc = this.js.Dq;
        this.iMK = this.js.NBs;
        this.pA = this.js.dI;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        cJ();
        this.NBs = SystemClock.elapsedRealtime() - elapsedRealtime;
    }

    void cJ() {
        com.bytedance.sdk.openadsdk.common.ROR ror;
        this.bxS = this.js.FQ.findViewById(16908290);
        boolean z = this.js.ROR;
        this.Jma = z;
        if (z && (ror = this.lG) != null) {
            this.hpZ = ror.CJ();
        } else {
            SSWebView sSWebView = (SSWebView) this.js.yN.findViewById(com.bytedance.sdk.openadsdk.utils.iMK.iMK);
            this.hpZ = sSWebView;
            if (sSWebView != null && tP.cJ(this.WAv)) {
                this.hpZ.g_();
            } else {
                zn.Qhi((View) this.hpZ, 8);
            }
        }
        SSWebView sSWebView2 = (SSWebView) this.js.yN.findViewById(com.bytedance.sdk.openadsdk.utils.iMK.hpZ);
        this.HzH = sSWebView2;
        if (sSWebView2 != null && bxS.cJ(this.WAv)) {
            this.HzH.g_();
            this.HzH.setDisplayZoomControls(false);
        } else {
            zn.Qhi((View) this.HzH, 8);
        }
        SSWebView sSWebView3 = this.hpZ;
        if (sSWebView3 != null) {
            sSWebView3.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public void onGlobalLayout() {
                    if (hpZ.this.hpZ == null || hpZ.this.hpZ.getViewTreeObserver() == null) {
                        return;
                    }
                    hpZ.this.hpZ.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    int measuredWidth = hpZ.this.hpZ.getMeasuredWidth();
                    int measuredHeight = hpZ.this.hpZ.getMeasuredHeight();
                    if (hpZ.this.hpZ.getVisibility() == 0) {
                        hpZ.this.Qhi(measuredWidth, measuredHeight);
                    }
                }
            });
        }
        SSWebView sSWebView4 = this.HzH;
        if (sSWebView4 != null) {
            sSWebView4.setLandingPage(true);
            this.HzH.setTag(bxS.cJ(this.WAv) ? this.Gm : "landingpage_endcard");
            this.HzH.setWebViewClient(new SSWebView.Qhi());
            this.HzH.setMaterialMeta(this.WAv.ne());
        }
    }

    public void Qhi(String str, final com.bytedance.sdk.openadsdk.core.video.ac.cJ cJVar) {
        Qhi(str, new fl() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.10
            @Override // com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.fl
            public void Qhi(WebView webView, String str2) {
                if (hpZ.this.js.FQ.isFinishing()) {
                    return;
                }
                hpZ.this.js.CQU.Tgh(hpZ.this.hpZ());
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.fl
            public void Qhi(WebView webView, String str2, Bitmap bitmap) {
                if (hpZ.this.zn || !bxS.Gm(hpZ.this.js.cJ)) {
                    return;
                }
                hpZ.this.zn = true;
                hpZ.this.js.CQU.Qhi(hpZ.this.js.Tgh, hpZ.this.js.cJ, hpZ.this.js.cJ.LpL());
                if (!bxS.ac(hpZ.this.WAv)) {
                    hpZ.this.js.xyz.sendEmptyMessageDelayed(600, hpZ.this.js.CQU.Gm() * 1000);
                }
                hpZ.this.js.CQU.ROR();
                hpZ.this.js.PAe.Gm();
            }

            @Override // com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.fl
            public void Qhi(WebView webView, int i) {
                try {
                    if (!bxS.Gm(hpZ.this.js.cJ) || !hpZ.this.js.cJ.Ls() || hpZ.this.js.FQ.isFinishing()) {
                        if (!hpZ.this.js.ROR || hpZ.this.js.oU == null) {
                            return;
                        }
                        hpZ.this.js.oU.Qhi(webView, i, hpZ.this.dVA);
                        return;
                    }
                    hpZ.this.js.CQU.ac(i);
                } catch (Exception unused) {
                }
            }
        });
        if (bxS.Gm(this.js.cJ)) {
            Qhi(this.HzH);
            this.js.CQU.Qhi(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.11
                @Override // android.webkit.DownloadListener
                public void onDownloadStart(String str2, String str3, String str4, String str5, long j) {
                    hpZ.this.js.Dww.cJ();
                    com.bytedance.sdk.openadsdk.core.video.ac.cJ cJVar2 = cJVar;
                    if (cJVar2 != null) {
                        cJVar2.CJ();
                    }
                }
            });
        }
        this.js.CQU.Qhi(this.js.ots);
        Qhi(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.12
            @Override // android.webkit.DownloadListener
            public void onDownloadStart(String str2, String str3, String str4, String str5, long j) {
                hpZ.this.js.Dww.cJ();
                com.bytedance.sdk.openadsdk.core.video.ac.cJ cJVar2 = cJVar;
                if (cJVar2 != null) {
                    cJVar2.CJ();
                }
            }
        });
    }

    public void Qhi(com.bytedance.sdk.openadsdk.WAv.Tgh tgh, String str, final com.bytedance.sdk.openadsdk.core.video.ac.cJ cJVar) {
        if (this.hpZ == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        if (bxS.cJ(this.WAv)) {
            hashMap.put("click_scence", 3);
        } else {
            hashMap.put("click_scence", 2);
        }
        this.Sf = xyz();
        NFd nFd = new NFd(this.js.FQ);
        this.Qhi = nFd;
        nFd.Qhi(this.js.PAe);
        String bIO = this.WAv.bIO();
        this.Qhi.cJ(this.hpZ).Qhi(this.WAv).ac(this.WAv.HLI()).CJ(this.WAv.EGK()).cJ(this.WAv.LpL() ? 7 : 5).Qhi(new cJ(this.hpZ)).fl(bIO).Qhi(this.hpZ).cJ(pA() ? "landingpage_endcard" : str).Qhi(hashMap).Qhi(this.Sf).Qhi(new com.bytedance.sdk.openadsdk.core.widget.ac() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.13
            @Override // com.bytedance.sdk.openadsdk.core.widget.ac
            public void Qhi() {
                if (hpZ.this.es != null) {
                    hpZ.this.es.cJ();
                }
                com.bytedance.sdk.openadsdk.core.video.ac.cJ cJVar2 = cJVar;
                if (cJVar2 != null) {
                    cJVar2.CJ();
                }
            }
        });
        HashMap hashMap2 = new HashMap();
        if (bxS.ac(this.WAv)) {
            hashMap2.put("click_scence", 2);
        }
        NFd nFd2 = new NFd(this.js.FQ);
        this.cJ = nFd2;
        nFd2.Qhi(this.js.PAe);
        NFd fl2 = this.cJ.cJ(this.HzH).Qhi(this.WAv).ac(this.WAv.HLI()).CJ(this.WAv.EGK()).cJ(this.WAv.LpL() ? 7 : 5).Qhi(new cJ(this.HzH)).Qhi(this.HzH).fl(bIO);
        if (pA()) {
            str = "landingpage_endcard";
        }
        fl2.cJ(str).Qhi(hashMap2).Qhi(this.Sf).Qhi(new com.bytedance.sdk.openadsdk.core.widget.ac() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.15
            @Override // com.bytedance.sdk.openadsdk.core.widget.ac
            public void Qhi() {
                if (hpZ.this.es != null) {
                    hpZ.this.es.cJ();
                }
            }
        }).Qhi(new NFd.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.14
            @Override // com.bytedance.sdk.openadsdk.core.NFd.Qhi
            public void Qhi() {
                hpZ.this.PAe();
            }
        });
        this.Qhi.Qhi(new ac(this.hpZ));
        this.cJ.Qhi(new ac(this.HzH));
        this.Qhi.Qhi(this.js.es.WAv()).Qhi(this.js.ots).Qhi(tgh).Qhi(this.js.CQU.hpZ()).Qhi(new com.bytedance.sdk.openadsdk.WAv.cJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.16
            @Override // com.bytedance.sdk.openadsdk.WAv.cJ
            public void Qhi(boolean z, int i, String str2) {
                if (z) {
                    hpZ.this.js.CQU.ac();
                    if (hpZ.this.dI) {
                        hpZ.this.dI = false;
                        hpZ hpz = hpZ.this;
                        hpz.Qhi(hpz.js.dIT, true);
                    }
                }
                if (!tP.CJ(hpZ.this.js.cJ) || bxS.cJ(hpZ.this.js.cJ)) {
                    return;
                }
                hpZ.this.Qhi(z, i, str2);
            }

            @Override // com.bytedance.sdk.openadsdk.WAv.cJ
            public void Qhi() {
                hpZ.this.ip = true;
                hpZ.this.js.es.WAv().performClick();
            }
        });
        this.Qhi.fl(this.FQ);
        this.cJ.Qhi(this.js.es.WAv()).Qhi(new com.bytedance.sdk.openadsdk.WAv.cJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.17
            @Override // com.bytedance.sdk.openadsdk.WAv.cJ
            public void Qhi(boolean z, int i, String str2) {
            }

            @Override // com.bytedance.sdk.openadsdk.WAv.cJ
            public void Qhi() {
                hpZ.this.ip = true;
                hpZ.this.js.es.WAv().performClick();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void PAe() {
        this.yN = true;
        this.oU = false;
        this.js.xyz.removeMessages(600);
        this.js.xyz.removeMessages(TypedValues.TransitionType.TYPE_DURATION);
        this.js.xyz.removeMessages(900);
        this.js.js.CJ(false);
        this.js.tP.set(true);
        this.js.ReL.pA();
        this.WAv.qb();
        if (this.WAv.qb() || !js.Sf(bxS.Qhi(this.WAv))) {
            return;
        }
        View WAv = this.js.es.WAv();
        View.OnClickListener onClickListener = (View.OnClickListener) WAv.getTag(WAv.getId());
        if (onClickListener != null) {
            Qhi qhi = new Qhi(this.js, WAv, onClickListener);
            WAv.setOnClickListener(qhi);
            WAv.setOnTouchListener(qhi);
        }
    }

    public boolean ac() {
        return this.ip;
    }

    public boolean CJ() {
        return this.PAe;
    }

    public void Qhi(int i, int i2) {
        if (this.Qhi == null || this.js.FQ.isFinishing()) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(IabUtils.KEY_WIDTH, i);
            jSONObject.put(IabUtils.KEY_HEIGHT, i2);
            this.Qhi.Qhi("resize", jSONObject);
        } catch (Exception e2) {
            Log.e("TTAD.RFWVM", "", e2);
        }
    }

    public void Qhi(boolean z) {
        this.ac = z;
    }

    public void fl() {
        if (TextUtils.isEmpty(tP.Qhi(this.js.ip, this.WAv))) {
            tP tPVar = this.WAv;
            if (tPVar != null && !tPVar.Ttc() && this.cjC == null && pA()) {
                this.YB = this.WAv.Ri();
                this.cjC = com.bytedance.sdk.openadsdk.fl.cJ.Qhi().cJ();
                int Qhi2 = com.bytedance.sdk.openadsdk.fl.cJ.Qhi().Qhi(this.cjC, this.YB);
                this.dIT = Qhi2;
                this.Qe = Qhi2 > 0 ? 2 : 0;
                if (!TextUtils.isEmpty(this.YB)) {
                    com.bytedance.sdk.openadsdk.cJ.zc zcVar = this.fl;
                    if (zcVar != null) {
                        zcVar.Qhi(this.Qe);
                    }
                    ac.Qhi.Qhi(this.NBs, this.WAv, "landingpage_endcard", this.cjC, this.YB);
                }
            }
            if ((!TextUtils.isEmpty(this.CJ) && this.CJ.contains("play.google.com/store")) || com.bytedance.sdk.openadsdk.core.model.HzH.fl(this.WAv) || com.bytedance.sdk.openadsdk.core.model.HzH.CJ(this.WAv)) {
                this.hm = true;
            } else if (this.ac) {
                if (this.hpZ != null && !TextUtils.isEmpty(this.CJ) && tP.cJ(this.WAv)) {
                    if (this.ots) {
                        return;
                    }
                    String str = this.CJ + "&is_pre_render=1";
                    new StringBuilder("preLoadEndCard: ").append(str).append(", ").append(this.hpZ.getWebView());
                    com.bytedance.sdk.openadsdk.cJ.zc zcVar2 = this.fl;
                    if (zcVar2 != null) {
                        zcVar2.CJ();
                    }
                    com.bytedance.sdk.openadsdk.utils.tP.Qhi(this.hpZ, str);
                    this.js.CQU.ac(str);
                    this.ots = true;
                } else if (tP.ac(this.WAv)) {
                    this.js.Jma.ac();
                }
            }
        }
    }

    public void Tgh() {
        com.bykv.vk.openvk.component.video.api.ac.cJ FQ = this.WAv.FQ();
        if (FQ == null) {
            return;
        }
        String zc = FQ.zc();
        this.HLI = zc;
        if (TextUtils.isEmpty(zc)) {
            return;
        }
        this.HLI = Qhi(this.HLI, this.WAv, this.zc, this.pA, this.iMK);
        this.HzH.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh(com.bytedance.sdk.openadsdk.core.HzH.Qhi(), this.cJ, this.WAv.HLI(), this.fl, this.WAv.js() || bxS.cJ(this.WAv)) { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.2
            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                if (hpZ.this.Qhi(str2)) {
                    return;
                }
                hpZ.this.qMt = false;
                hpZ.this.Tgh = i;
                hpZ.this.ROR = str;
                if (hpZ.this.Sf != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        jSONObject.put("code", i);
                        jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, str);
                        hpZ.this.Sf.Qhi(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                super.onReceivedError(webView, i, str, str2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                if (webResourceRequest == null || webResourceRequest.getUrl() == null || !hpZ.this.Qhi(webResourceRequest.getUrl().toString())) {
                    hpZ.this.qMt = false;
                    if (hpZ.this.Sf != null) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            if (webResourceError != null) {
                                jSONObject.put("code", webResourceError.getErrorCode());
                                jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, webResourceError.getDescription());
                            }
                            hpZ.this.Sf.Qhi(jSONObject);
                        } catch (JSONException unused) {
                        }
                    }
                    if (webResourceError != null) {
                        hpZ.this.Tgh = webResourceError.getErrorCode();
                        hpZ.this.ROR = String.valueOf(webResourceError.getDescription());
                    }
                    if (webResourceRequest == null) {
                        return;
                    }
                    super.onReceivedError(webView, webResourceRequest, webResourceError);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (webResourceRequest != null && webResourceRequest.isForMainFrame()) {
                    hpZ.this.qMt = false;
                    if (webResourceResponse != null) {
                        hpZ.this.Tgh = webResourceResponse.getStatusCode();
                        hpZ.this.ROR = "onReceivedHttpError";
                    }
                }
                if (hpZ.this.Sf != null) {
                    try {
                        JSONObject jSONObject = new JSONObject();
                        if (webResourceResponse != null) {
                            jSONObject.put("code", webResourceResponse.getStatusCode());
                            jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, webResourceResponse.getReasonPhrase());
                        }
                        hpZ.this.Sf.Qhi(jSONObject);
                    } catch (JSONException unused) {
                    }
                }
                if (webResourceRequest != null) {
                    super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                if (hpZ.this.Sf != null) {
                    hpZ.this.Sf.Tgh();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
                if (hpZ.this.Sf != null) {
                    hpZ.this.Sf.fl();
                }
            }
        });
        this.HzH.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Qhi.fl(this.cJ, this.fl) { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.3
            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.fl, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                if (!hpZ.this.js.ROR || hpZ.this.js.oU == null) {
                    return;
                }
                hpZ.this.js.oU.Qhi(webView, i, hpZ.this.dVA);
            }
        });
        com.bytedance.sdk.openadsdk.utils.tP.Qhi(this.HzH, this.HLI);
        this.qMt = true;
    }

    public void ROR() {
        if (this.hpZ == null) {
            return;
        }
        this.tP.set(this.qMt);
        if (this.HzH.getVisibility() == 0 && this.qMt) {
            ip();
            return;
        }
        this.js.js.ac(false);
        this.js.CQU.fl();
        Qhi(this.Qhi, true, false);
        cJ(this.Qhi, false);
        Qhi(this.Qhi, false);
        this.hpZ.zc();
        if (this.qMt) {
            this.HzH.setVisibility(0);
            Qhi(this.cJ, this.js.dIT, true);
            cJ(this.cJ, true);
            Qhi(this.cJ, true);
            this.js.xyz.removeMessages(600);
            if (!this.js.zn.ac(this.js.ReL)) {
                this.js.ReL.Dww();
            }
        } else {
            if (this.js.CQU.tP()) {
                this.js.CQU.cJ(5);
            }
            this.js.zn.CJ();
            this.js.gga.Qhi(this.js.Sf);
        }
        this.oU = true;
    }

    private void ip() {
        this.cJ.Qhi("showPlayableEndCardOverlay", (JSONObject) null);
        this.js.xyz.sendEmptyMessageDelayed(600, 1000L);
        this.js.xyz.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.4
            @Override // java.lang.Runnable
            public void run() {
                hpZ.this.PAe();
            }
        }, 1000L);
        if (this.js.gga != null) {
            this.js.gga.Qhi(0L);
        }
    }

    public SSWebView Sf() {
        return this.hpZ;
    }

    public SSWebView hm() {
        return this.HzH;
    }

    public NFd WAv() {
        return this.Qhi;
    }

    public NFd Gm() {
        return this.cJ;
    }

    public com.bytedance.sdk.openadsdk.cJ.zc zc() {
        return this.fl;
    }

    public void ABk() {
        String Tgh = bxS.Tgh(this.WAv);
        this.CJ = Tgh;
        String Qhi2 = Qhi(Tgh, this.WAv, this.zc, this.pA, this.iMK);
        this.CJ = Qhi2;
        if (TextUtils.isEmpty(Qhi2)) {
            return;
        }
        this.FQ = this.CJ.contains("use_second_endcard=1");
    }

    private static String Qhi(String str, tP tPVar, int i, int i2, int i3) {
        String str2;
        String str3;
        float Oy = tPVar.Oy();
        if (!TextUtils.isEmpty(str)) {
            if (i == 1) {
                if (str.contains("?")) {
                    str3 = str + "&";
                } else {
                    str3 = str + "?";
                }
                str = str3 + "orientation=portrait";
            }
            if (str.contains("?")) {
                str2 = str + "&";
            } else {
                str2 = str + "?";
            }
            str = str2 + "height=" + i2 + "&width=" + i3 + "&aspect_ratio=" + Oy;
        }
        return !bxS.cJ(tPVar) ? com.bytedance.sdk.openadsdk.utils.fl.Qhi(str) : str;
    }

    public void iMK() {
        SSWebView sSWebView = this.hpZ;
        if (sSWebView != null) {
            lG.Qhi(sSWebView.getWebView());
        }
        SSWebView sSWebView2 = this.HzH;
        if (sSWebView2 != null) {
            lG.Qhi(sSWebView2.getWebView());
        }
        long j = this.jPH;
        boolean z = false;
        if (j > 0) {
            if (this.xyz > 0) {
                this.jPH = j + (SystemClock.elapsedRealtime() - this.xyz);
            }
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("endcard_overlay_render_type", tP.ac(this.WAv) ? 7 : 0);
            } catch (Throwable unused) {
            }
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(this.js.cJ, this.Gm, "second_endcard_duration", jSONObject, this.jPH);
        }
        this.hpZ = null;
        if (this.Sf != null && !com.bytedance.sdk.openadsdk.core.model.HzH.ac(this.WAv) && !com.bytedance.sdk.openadsdk.core.model.HzH.CJ(this.WAv) && !tP.ac(this.WAv)) {
            this.Sf.Qhi(true);
            this.Sf.zc();
        }
        NFd nFd = this.Qhi;
        if (nFd != null) {
            nFd.Gm();
        }
        NFd nFd2 = this.cJ;
        if (nFd2 != null) {
            nFd2.Gm();
        }
        com.bytedance.sdk.openadsdk.cJ.zc zcVar = this.fl;
        if (zcVar != null) {
            if (this.WAv.js() || bxS.cJ(this.WAv)) {
                z = true;
            }
            zcVar.ac(z);
        }
        DeviceUtils.AudioInfoReceiver.cJ(this);
    }

    public void cJ(int i) {
        zn.Qhi((View) this.hpZ, i);
        SSWebView sSWebView = this.hpZ;
        if (sSWebView != null) {
            zn.Qhi((View) sSWebView.getWebView(), i);
        }
        if (this.hpZ != null && (this.WAv.js() || bxS.cJ(this.WAv))) {
            this.hpZ.setLandingPage(true);
            this.hpZ.setTag(bxS.cJ(this.WAv) ? this.Gm : "landingpage_endcard");
            this.hpZ.setMaterialMeta(this.WAv.ne());
        }
        if (i == 0 && bxS.ac(this.WAv)) {
            Tgh();
        }
    }

    public void Qhi(com.bytedance.sdk.openadsdk.common.ROR ror) {
        this.lG = ror;
    }

    public void Qhi(float f2) {
        zn.Qhi(this.hpZ, f2);
    }

    public void cJ(boolean z) {
        Qhi(this.Qhi, z);
    }

    public void Qhi(NFd nFd, boolean z) {
        if (this.Qhi == null || this.js.FQ.isFinishing()) {
            return;
        }
        nFd.cJ(z);
    }

    private void Qhi(String str, final fl flVar) {
        SSWebView sSWebView;
        SSWebView sSWebView2 = this.hpZ;
        if (sSWebView2 != null && sSWebView2.getWebView() != null) {
            com.bytedance.sdk.openadsdk.cJ.zc Qhi2 = new com.bytedance.sdk.openadsdk.cJ.zc(this.WAv, this.hpZ.getWebView(), new com.bytedance.sdk.openadsdk.cJ.Gm() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.5
                @Override // com.bytedance.sdk.openadsdk.cJ.Gm
                public void Qhi(int i) {
                    if (TextUtils.isEmpty(hpZ.this.YB)) {
                        return;
                    }
                    ac.Qhi.Qhi(hpZ.this.dIT, hpZ.this.MND, hpZ.this.Hf, hpZ.this.Dq - hpZ.this.Hf, hpZ.this.WAv, "landingpage_endcard", i);
                }
            }, this.Qe).Qhi(true);
            this.fl = Qhi2;
            this.dVA = Qhi2.Qhi;
            this.fl.Qhi(pA() ? "landingpage_endcard" : str);
            this.fl.cJ(this.Gm);
            this.fl.cJ(true);
            this.hpZ.getWebView().setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.6
                @Override // android.view.View.OnScrollChangeListener
                public void onScrollChange(View view, int i, int i2, int i3, int i4) {
                    if (hpZ.this.fl != null) {
                        hpZ.this.fl.cJ(i2);
                    }
                }
            });
            if (this.js.CQU != null) {
                this.fl.Qhi(this.js.CQU.MQ());
            }
            com.bytedance.sdk.openadsdk.common.cJ Qhi3 = js.Qhi(this.WAv, this.hpZ, this.js.FQ, this.Gm);
            this.zjb = Qhi3;
            if (Qhi3 != null) {
                if (pA()) {
                    str = "landingpage_endcard";
                }
                Qhi3.Qhi(str);
            }
            if (pA()) {
                js.Qhi(this.WAv, this.hpZ);
            }
            com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh tgh = new com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh(com.bytedance.sdk.openadsdk.core.HzH.Qhi(), this.Qhi, this.WAv.HLI(), this.zjb, this.fl, this.WAv.js() || bxS.cJ(this.WAv)) { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.7
                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
                public WebResourceResponse shouldInterceptRequest(WebView webView, String str2) {
                    if (!bxS.cJ(hpZ.this.WAv)) {
                        try {
                            if (TextUtils.isEmpty(hpZ.this.YB)) {
                                return super.shouldInterceptRequest(webView, str2);
                            }
                            hpZ.iMK(hpZ.this);
                            WebResourceResponseModel Qhi4 = com.bytedance.sdk.openadsdk.fl.cJ.Qhi().Qhi(hpZ.this.cjC, hpZ.this.YB, str2);
                            if (Qhi4 != null && Qhi4.getWebResourceResponse() != null) {
                                hpZ.hpZ(hpZ.this);
                                return Qhi4.getWebResourceResponse();
                            }
                            if (Qhi4 != null && Qhi4.getMsg() == 2) {
                                hpZ.HzH(hpZ.this);
                            }
                            return super.shouldInterceptRequest(webView, str2);
                        } catch (Throwable th) {
                            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.RFWVM", "shouldInterceptRequest url error", th);
                            return super.shouldInterceptRequest(webView, str2);
                        }
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    WebResourceResponse Qhi5 = com.bytedance.sdk.openadsdk.core.video.cJ.Qhi.Qhi().Qhi(hpZ.this.WAv.FQ().ABk(), bxS.Tgh(hpZ.this.WAv), str2);
                    long currentTimeMillis2 = System.currentTimeMillis();
                    if (hpZ.this.Sf != null) {
                        Eh.Qhi Qhi6 = Eh.Qhi(str2);
                        int i = Qhi5 != null ? 1 : 2;
                        if (Qhi6 == Eh.Qhi.HTML) {
                            hpZ.this.Sf.Qhi(str2, currentTimeMillis, currentTimeMillis2, i);
                        } else if (Qhi6 == Eh.Qhi.JS) {
                            hpZ.this.Sf.cJ(str2, currentTimeMillis, currentTimeMillis2, i);
                        }
                    }
                    return Qhi5;
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
                public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                    try {
                        return shouldInterceptRequest(webView, webResourceRequest.getUrl().toString());
                    } catch (Throwable th) {
                        com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.RFWVM", "shouldInterceptRequest error1", th);
                        return super.shouldInterceptRequest(webView, webResourceRequest);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
                public void onReceivedError(WebView webView, int i, String str2, String str3) {
                    super.onReceivedError(webView, i, str2, str3);
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
                public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                    super.onReceivedError(webView, webResourceRequest, webResourceError);
                    if (webResourceError != null && webResourceRequest != null && webResourceRequest.getUrl() != null) {
                        Log.i("TTAD.RFWVM", "onReceivedError WebResourceError : description=" + ((Object) webResourceError.getDescription()) + "  url =" + webResourceRequest.getUrl().toString());
                    }
                    if (webResourceRequest == null || webResourceRequest.getUrl() == null || !hpZ.this.Qhi(webResourceRequest.getUrl().toString())) {
                        if (webResourceError != null && webResourceRequest != null && webResourceRequest.isForMainFrame()) {
                            hpZ.this.js.CQU.Qhi(webResourceError.getErrorCode(), String.valueOf(webResourceError.getDescription()), String.valueOf(webResourceRequest.getUrl()));
                        }
                        if (webResourceRequest == null || webResourceRequest.isForMainFrame()) {
                            hpZ.this.tP.set(false);
                            hpZ.this.ots = false;
                        }
                        if (hpZ.this.Sf != null) {
                            try {
                                JSONObject jSONObject = new JSONObject();
                                if (webResourceError != null) {
                                    jSONObject.put("code", webResourceError.getErrorCode());
                                    jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, webResourceError.getDescription());
                                }
                                hpZ.this.Sf.Qhi(jSONObject);
                            } catch (JSONException unused) {
                            }
                        }
                        if (webResourceError != null) {
                            hpZ.this.Tgh = webResourceError.getErrorCode();
                            hpZ.this.ROR = String.valueOf(webResourceError.getDescription());
                        }
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
                public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
                    super.onReceivedSslError(webView, sslErrorHandler, sslError);
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
                public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                    hpZ.this.js.CQU.Qhi(webResourceRequest.isForMainFrame(), webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode());
                    if (webResourceRequest != null && webResourceRequest.getUrl() != null) {
                        Log.i("TTAD.RFWVM", "onReceivedHttpError:url =" + webResourceRequest.getUrl().toString());
                    }
                    if (webResourceRequest != null && webResourceRequest.isForMainFrame()) {
                        hpZ.this.tP.set(false);
                        hpZ.this.ots = false;
                        if (webResourceResponse != null) {
                            hpZ.this.Tgh = webResourceResponse.getStatusCode();
                            hpZ.this.ROR = "onReceivedHttpError";
                        }
                    }
                    if (hpZ.this.Sf != null) {
                        try {
                            JSONObject jSONObject = new JSONObject();
                            if (webResourceResponse != null) {
                                jSONObject.put("code", webResourceResponse.getStatusCode());
                                jSONObject.put(NotificationCompat.CATEGORY_MESSAGE, webResourceResponse.getReasonPhrase());
                            }
                            hpZ.this.Sf.Qhi(jSONObject);
                        } catch (JSONException unused) {
                        }
                    }
                    if (webResourceRequest != null) {
                        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str2) {
                    super.onPageFinished(webView, str2);
                    hpZ.this.ots = false;
                    hpZ.this.MQ = true;
                    DeviceUtils.AudioInfoReceiver.Qhi(hpZ.this);
                    hpZ.this.pv = DeviceUtils.ROR();
                    if (hpZ.this.Sf != null) {
                        hpZ.this.Sf.Tgh();
                    }
                    hpZ.this.js.CQU.cJ(str2);
                    fl flVar2 = flVar;
                    if (flVar2 != null) {
                        flVar2.Qhi(webView, str2);
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
                public void onPageStarted(WebView webView, String str2, Bitmap bitmap) {
                    super.onPageStarted(webView, str2, bitmap);
                    if (hpZ.this.Sf != null) {
                        hpZ.this.Sf.fl();
                    }
                    fl flVar2 = flVar;
                    if (flVar2 != null) {
                        flVar2.Qhi(webView, str2, bitmap);
                    }
                }
            };
            this.es = tgh;
            this.hpZ.setWebViewClient(tgh);
            this.es.Qhi(this.WAv);
            this.es.Qhi(this.ABk ? "rewarded_video" : "fullscreen_interstitial_ad");
            if (this.WAv.js() && (sSWebView = this.hpZ) != null && sSWebView.getWebView() != null) {
                this.hpZ.getWebView().setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.8
                    private final int cJ = com.bytedance.sdk.openadsdk.core.HzH.cJ();

                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        int i;
                        if (hpZ.this.fl != null) {
                            hpZ.this.fl.Qhi(motionEvent);
                        }
                        if (hpZ.this.zjb != null) {
                            hpZ.this.zjb.Qhi(motionEvent);
                        }
                        try {
                            int actionMasked = motionEvent.getActionMasked();
                            if (actionMasked != 0) {
                                int i2 = 3;
                                if (actionMasked != 1) {
                                    if (actionMasked != 2) {
                                        i2 = actionMasked != 3 ? -1 : 4;
                                    } else {
                                        float rawX = motionEvent.getRawX();
                                        float rawY = motionEvent.getRawY();
                                        if (Math.abs(rawX - hpZ.this.CQU) >= this.cJ || Math.abs(rawY - hpZ.this.pM) >= this.cJ) {
                                            hpZ.this.NFd = false;
                                        }
                                        hpZ.this.sDy += Math.abs(motionEvent.getX() - hpZ.this.CQU);
                                        hpZ.this.lB += Math.abs(motionEvent.getY() - hpZ.this.pM);
                                        int i3 = (System.currentTimeMillis() - hpZ.this.Eh <= 200 || (hpZ.this.sDy <= 8.0f && hpZ.this.lB <= 8.0f)) ? 2 : 1;
                                        if (hpZ.this.Jma) {
                                            if (rawY - hpZ.this.pM > 8.0f) {
                                                hpZ.this.lG.Qhi();
                                            }
                                            if (rawY - hpZ.this.pM < -8.0f) {
                                                hpZ.this.lG.cJ();
                                            }
                                        }
                                        i = i3;
                                    }
                                }
                                i = i2;
                            } else {
                                hpZ.this.NFd = true;
                                hpZ.this.aP = new SparseArray();
                                hpZ.this.CQU = motionEvent.getRawX();
                                hpZ.this.pM = motionEvent.getRawY();
                                hpZ.this.Eh = System.currentTimeMillis();
                                try {
                                    long landingPageClickBegin = hpZ.this.hpZ.getLandingPageClickBegin();
                                    if (landingPageClickBegin > 0 && landingPageClickBegin < hpZ.this.Eh) {
                                        hpZ.this.Eh = landingPageClickBegin;
                                        hpZ.this.hpZ.setLandingPageClickBegin(-1L);
                                    }
                                } catch (Exception unused) {
                                }
                                hpZ.this.sDy = -1.0f;
                                hpZ.this.lB = -1.0f;
                                i = 0;
                            }
                            hpZ.this.aP.put(motionEvent.getActionMasked(), new ac.Qhi(i, motionEvent.getSize(), motionEvent.getPressure(), System.currentTimeMillis()));
                            if (motionEvent.getAction() == 1 && view.getVisibility() == 0 && Float.valueOf(view.getAlpha()).intValue() == 1) {
                                if ((!hpZ.this.kYc || com.bytedance.sdk.openadsdk.core.model.HzH.ROR(hpZ.this.WAv)) && hpZ.this.NFd) {
                                    JSONObject jSONObject = new JSONObject();
                                    jSONObject.put("down_x", hpZ.this.CQU);
                                    jSONObject.put("down_y", hpZ.this.pM);
                                    jSONObject.put("down_time", hpZ.this.Eh);
                                    jSONObject.put("up_x", motionEvent.getRawX());
                                    jSONObject.put("up_y", motionEvent.getRawY());
                                    long currentTimeMillis = System.currentTimeMillis();
                                    try {
                                        long landingPageClickEnd = hpZ.this.hpZ.getLandingPageClickEnd();
                                        if (landingPageClickEnd > 0 && landingPageClickEnd < currentTimeMillis) {
                                            try {
                                                hpZ.this.hpZ.setLandingPageClickEnd(-1L);
                                            } catch (Exception unused2) {
                                            }
                                            currentTimeMillis = landingPageClickEnd;
                                        }
                                    } catch (Exception unused3) {
                                    }
                                    jSONObject.put("up_time", currentTimeMillis);
                                    int[] iArr = new int[2];
                                    if (hpZ.this.Jma) {
                                        hpZ hpz = hpZ.this;
                                        hpz.Dww = hpz.js.yN.findViewById(com.bytedance.sdk.openadsdk.utils.iMK.gga);
                                    } else {
                                        hpZ hpz2 = hpZ.this;
                                        hpz2.Dww = hpz2.js.yN.findViewById(520093713);
                                    }
                                    if (hpZ.this.Dww != null) {
                                        hpZ.this.Dww.getLocationOnScreen(iArr);
                                        jSONObject.put("button_x", iArr[0]);
                                        jSONObject.put("button_y", iArr[1]);
                                        jSONObject.put("button_width", hpZ.this.Dww.getWidth());
                                        jSONObject.put("button_height", hpZ.this.Dww.getHeight());
                                    }
                                    if (hpZ.this.bxS != null) {
                                        int[] iArr2 = new int[2];
                                        hpZ.this.bxS.getLocationOnScreen(iArr2);
                                        jSONObject.put("ad_x", iArr2[0]);
                                        jSONObject.put("ad_y", iArr2[1]);
                                        jSONObject.put(IabUtils.KEY_WIDTH, hpZ.this.bxS.getWidth());
                                        jSONObject.put(IabUtils.KEY_HEIGHT, hpZ.this.bxS.getHeight());
                                    }
                                    jSONObject.put("toolType", motionEvent.getToolType(0));
                                    jSONObject.put("deviceId", motionEvent.getDeviceId());
                                    jSONObject.put("source", motionEvent.getSource());
                                    jSONObject.put("ft", com.bytedance.sdk.openadsdk.core.model.Gm.Qhi(hpZ.this.aP, com.bytedance.sdk.openadsdk.core.hm.cJ().Qhi() ? 1 : 2));
                                    jSONObject.put("user_behavior_type", hpZ.this.NFd ? 1 : 2);
                                    jSONObject.put("click_scence", 2);
                                    if (hpZ.this.es != null) {
                                        hpZ.this.es.Qhi(jSONObject);
                                    }
                                    if (!hpZ.this.kYc && !com.bytedance.sdk.openadsdk.core.model.HzH.Tgh(hpZ.this.WAv)) {
                                        if (hpZ.this.ABk) {
                                            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(hpZ.this.WAv, "rewarded_video", Constants.CLICK, jSONObject);
                                        } else {
                                            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(hpZ.this.WAv, "fullscreen_interstitial_ad", Constants.CLICK, jSONObject);
                                        }
                                        hpZ.this.kYc = true;
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        } catch (Throwable th) {
                            Log.e("TTAD.RFWVM", "TouchRecordTool onTouch error", th);
                            return false;
                        }
                    }
                });
            }
            SSWebView sSWebView3 = this.hpZ;
            if (sSWebView3 != null) {
                sSWebView3.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Qhi.fl(this.Qhi, this.fl, this.zjb) { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.hpZ.9
                    @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.fl, android.webkit.WebChromeClient
                    public void onProgressChanged(WebView webView, int i) {
                        super.onProgressChanged(webView, i);
                        fl flVar2 = flVar;
                        if (flVar2 != null) {
                            flVar2.Qhi(webView, i);
                        }
                    }
                });
            }
            Qhi(this.hpZ);
            this.hpZ.setLayerType(1, null);
            this.hpZ.setBackgroundColor(-1);
            this.hpZ.setDisplayZoomControls(false);
        }
        fl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Qhi(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        return this.WAv.js() && str.endsWith(".mp4");
    }

    public boolean pA() {
        String str = this.CJ;
        if (str == null) {
            return false;
        }
        try {
            return Uri.parse(str).getQueryParameterNames().contains("show_landingpage");
        } catch (Exception unused) {
            return false;
        }
    }

    public void Qhi(DownloadListener downloadListener) {
        SSWebView sSWebView = this.hpZ;
        if (sSWebView == null || downloadListener == null) {
            return;
        }
        sSWebView.setDownloadListener(downloadListener);
    }

    public boolean hpZ() {
        return this.tP.get();
    }

    public boolean HzH() {
        return this.MQ;
    }

    public void Qhi(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.widget.Qhi.ac.Qhi(this.js.FQ).Qhi(false).cJ(false).Qhi(sSWebView.getWebView());
        sSWebView.setUserAgentString(com.bytedance.sdk.openadsdk.utils.HzH.Qhi(sSWebView.getWebView(), (int) BuildConfig.VERSION_CODE));
        sSWebView.setMixedContentMode(0);
    }

    public void kYc() {
        com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh = this.Sf;
        if (tgh != null) {
            tgh.hm();
        }
        com.bytedance.sdk.openadsdk.cJ.zc zcVar = this.fl;
        if (zcVar != null) {
            zcVar.Sf();
        }
    }

    public void tP() {
        SSWebView sSWebView = this.hpZ;
        if (sSWebView != null) {
            sSWebView.Gm();
        }
        SSWebView sSWebView2 = this.HzH;
        if (sSWebView2 != null) {
            sSWebView2.Gm();
        }
        if (this.xyz > 0) {
            this.jPH += SystemClock.elapsedRealtime() - this.xyz;
            this.xyz = 0L;
        }
        NFd nFd = this.Qhi;
        if (nFd != null) {
            nFd.cJ(false);
            cJ(this.Qhi, false);
            Qhi(this.Qhi, true, false);
        }
        if (this.cJ == null || !bxS.ac(this.WAv)) {
            return;
        }
        this.cJ.cJ(false);
        cJ(this.cJ, false);
        Qhi(this.cJ, true, false);
    }

    public void ac(boolean z) {
        cJ(this.Qhi, z);
    }

    public void cJ(NFd nFd, boolean z) {
        try {
            this.js.CQU.CJ(z);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("viewStatus", z ? 1 : 0);
            nFd.Qhi("viewableChange", jSONObject);
        } catch (Exception unused) {
        }
    }

    public void Qhi(boolean z, boolean z2) {
        Qhi(this.Qhi, z, z2);
    }

    public void Qhi(NFd nFd, boolean z, boolean z2) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z);
            jSONObject.put("endcard_show", z2);
            com.bytedance.sdk.openadsdk.activity.ROR ror = this.js.Ura;
            if (ror != null) {
                jSONObject.put("multi_ads_show", ror.bxS().Tgh());
            }
            nFd.Qhi("endcard_control_event", jSONObject);
            if (z2) {
                if (this.MQ) {
                    return;
                }
                this.dI = true;
                return;
            }
            this.dI = false;
        } catch (Exception unused) {
        }
    }

    public void CJ(boolean z) {
        if (this.Qhi == null || this.js.FQ.isFinishing()) {
            return;
        }
        this.js.CQU.fl(z);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", z);
            this.Qhi.Qhi("volumeChange", jSONObject);
        } catch (Exception unused) {
        }
    }

    public void MQ() {
        SSWebView sSWebView = this.hpZ;
        if (sSWebView != null) {
            sSWebView.hm();
        }
        SSWebView sSWebView2 = this.HzH;
        if (sSWebView2 != null) {
            sSWebView2.hm();
        }
        if (this.xyz == 0) {
            this.xyz = SystemClock.elapsedRealtime();
        }
        NFd nFd = this.Qhi;
        if (nFd != null) {
            nFd.WAv();
            SSWebView sSWebView3 = this.hpZ;
            if (sSWebView3 != null) {
                if (sSWebView3.getVisibility() == 0) {
                    this.Qhi.cJ(true);
                    cJ(this.Qhi, true);
                    Qhi(this.Qhi, false, true);
                } else {
                    this.Qhi.cJ(false);
                    cJ(this.Qhi, false);
                    Qhi(this.Qhi, true, false);
                }
            }
        }
        if (this.cJ != null && bxS.ac(this.WAv)) {
            this.cJ.WAv();
            SSWebView sSWebView4 = this.HzH;
            if (sSWebView4 != null) {
                if (sSWebView4.getVisibility() == 0) {
                    this.cJ.cJ(true);
                    cJ(this.cJ, true);
                    Qhi(this.cJ, false, true);
                    if (!this.yN && this.js.cJ.qb()) {
                        ip();
                    }
                } else {
                    this.cJ.cJ(false);
                    cJ(this.cJ, false);
                    Qhi(this.cJ, true, false);
                }
            }
        }
        com.bytedance.sdk.openadsdk.cJ.zc zcVar = this.fl;
        if (zcVar != null) {
            zcVar.ROR();
        }
    }

    public int qMt() {
        return this.Tgh;
    }

    public String EBS() {
        return this.ROR;
    }

    public String bxS() {
        return this.CJ;
    }

    public boolean Dww() {
        return tP.ac(this.WAv) ? this.FQ && !this.PAe && this.js.Jma.zc() : this.FQ && !this.PAe && this.tP.get() && this.MQ;
    }

    public void CQU() {
        com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh = this.Sf;
        if (tgh != null) {
            tgh.Sf();
        }
    }

    public void Qhi(boolean z, int i, String str) {
        com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh = this.Sf;
        if (tgh == null) {
            return;
        }
        if (z) {
            tgh.cJ();
        } else {
            tgh.Qhi(i, str);
        }
    }

    public void pM() {
        com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh = this.Sf;
        if (tgh != null) {
            tgh.ROR();
        }
    }

    public void Eh() {
        com.bytedance.sdk.openadsdk.cJ.zc zcVar = this.fl;
        if (zcVar != null) {
            zcVar.Qhi(System.currentTimeMillis());
        }
    }

    public boolean aP() {
        return this.hm;
    }

    public void NFd() {
        com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh = this.Sf;
        if (tgh != null) {
            tgh.ac();
            this.Sf.CJ();
        }
    }

    public void sDy() {
        com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh = this.Sf;
        if (tgh != null) {
            tgh.WAv();
        }
    }

    private com.bytedance.sdk.openadsdk.cJ.ac.Tgh xyz() {
        return new kYc(bxS.cJ(this.WAv) ? 3 : 2, this.ABk ? "rewarded_video" : "fullscreen_interstitial_ad", this.WAv);
    }

    public boolean lB() {
        NFd nFd = this.Qhi;
        if (nFd == null) {
            return false;
        }
        return nFd.Sf();
    }

    @Override // com.bytedance.sdk.openadsdk.WAv.Sf
    public void Qhi(int i) {
        int i2 = this.pv;
        if (i2 <= 0 && i > 0) {
            CJ(false);
        } else if (i2 > 0 && i == 0) {
            CJ(true);
        }
        this.pv = i;
    }

    public void lG() {
        zn.Qhi((View) this.hpZ, 0);
        zn.Qhi((View) this.HzH, 8);
    }

    public void Jma() {
        zn.Qhi((View) this.HzH, 8);
    }

    public void fl(boolean z) {
        this.PAe = true;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("endcard_overlay_render_type", tP.ac(this.WAv) ? 7 : 0);
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.WAv, this.Gm, "use_second_endcard", jSONObject);
        this.xyz = SystemClock.elapsedRealtime();
        try {
            if (!tP.ac(this.WAv)) {
                this.Qhi.Qhi("click_endcard_close", (JSONObject) null);
            } else if (z) {
                this.js.Jma.Sf();
                com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.WAv, this.Gm, "endcard_close_skip", jSONObject);
            }
        } catch (Exception unused2) {
        }
        this.js.gga.Qhi(this.js.Sf);
    }

    public boolean js() {
        return this.MQ && this.tP.get();
    }

    public boolean zn() {
        return this.oU;
    }

    public boolean es() {
        SSWebView sSWebView = this.hpZ;
        return sSWebView == null || sSWebView.getWebView() == null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardFullWebViewManager.java */
    /* loaded from: classes2.dex */
    public static class cJ implements com.bytedance.sdk.openadsdk.WAv.Qhi {
        private final View Qhi;

        public cJ(View view) {
            this.Qhi = view;
        }

        @Override // com.bytedance.sdk.openadsdk.WAv.Qhi
        public int Qhi() {
            View view = this.Qhi;
            int measuredHeight = view != null ? view.getMeasuredHeight() : -1;
            return measuredHeight <= 0 ? zn.CJ(com.bytedance.sdk.openadsdk.core.HzH.Qhi()) : measuredHeight;
        }

        @Override // com.bytedance.sdk.openadsdk.WAv.Qhi
        public int cJ() {
            View view = this.Qhi;
            int measuredWidth = view != null ? view.getMeasuredWidth() : -1;
            return measuredWidth <= 0 ? zn.ac(com.bytedance.sdk.openadsdk.core.HzH.Qhi()) : measuredWidth;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardFullWebViewManager.java */
    /* loaded from: classes2.dex */
    public static class ac implements com.bytedance.sdk.openadsdk.WAv.WAv {
        private final SSWebView Qhi;

        private ac(SSWebView sSWebView) {
            this.Qhi = sSWebView;
        }

        @Override // com.bytedance.sdk.openadsdk.WAv.WAv
        public void Qhi() {
            SSWebView sSWebView = this.Qhi;
            if (sSWebView == null) {
                return;
            }
            sSWebView.Gm();
        }

        @Override // com.bytedance.sdk.openadsdk.WAv.WAv
        public void cJ() {
            SSWebView sSWebView = this.Qhi;
            if (sSWebView == null) {
                return;
            }
            sSWebView.iMK();
        }
    }

    public void yN() {
        com.bytedance.sdk.openadsdk.cJ.zc zcVar = this.fl;
        if (zcVar != null) {
            zcVar.fl();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RewardFullWebViewManager.java */
    /* loaded from: classes2.dex */
    public static class Qhi extends com.bytedance.sdk.openadsdk.core.cJ.Qhi implements cJ.Qhi {
        private final com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi Qhi;
        private final View.OnClickListener ac;
        private final View cJ;

        public Qhi(com.bytedance.sdk.openadsdk.component.reward.Qhi.Qhi qhi, View view, View.OnClickListener onClickListener) {
            super(qhi.FQ, qhi.cJ, qhi.fl, qhi.CJ ? 7 : 5);
            this.Qhi = qhi;
            this.cJ = view;
            this.ac = onClickListener;
            HashMap hashMap = new HashMap();
            hashMap.put("close_auto_click", Boolean.TRUE);
            hashMap.put("click_scence", 2);
            Qhi(hashMap);
            Qhi(qhi.Dww.ac());
            Qhi(this);
        }

        @Override // com.bytedance.sdk.openadsdk.core.cJ.Qhi, com.bytedance.sdk.openadsdk.core.cJ.cJ, com.bytedance.sdk.openadsdk.core.cJ.ac
        public void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, boolean z) {
            if (this.Tgh.qb()) {
                this.ac.onClick(view);
                this.cJ.setOnTouchListener(null);
                this.cJ.setOnClickListener(this.ac);
                return;
            }
            super.Qhi(view, f2, f3, f4, f5, sparseArray, z);
            this.Qhi.PAe.c_();
        }

        @Override // com.bytedance.sdk.openadsdk.core.cJ.cJ.Qhi
        public void Qhi(View view, int i) {
            this.cJ.setOnTouchListener(null);
            this.cJ.setOnClickListener(this.ac);
        }
    }

    public boolean FQ() {
        return this.yN;
    }
}
