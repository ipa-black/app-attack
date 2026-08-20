package com.bytedance.sdk.openadsdk.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.ApmHelper;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.cJ.Gm;
import com.bytedance.sdk.openadsdk.cJ.ac;
import com.bytedance.sdk.openadsdk.cJ.zc;
import com.bytedance.sdk.openadsdk.common.LandingPageBrowserDownloadButton;
import com.bytedance.sdk.openadsdk.common.LandingPageBrowserTitleBar;
import com.bytedance.sdk.openadsdk.common.LandingPageLoadingLayout;
import com.bytedance.sdk.openadsdk.common.PangleViewStub;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.core.Dww;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.NFd;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGLinearLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGProgressBar;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR;
import com.bytedance.sdk.openadsdk.utils.ROR;
import com.bytedance.sdk.openadsdk.utils.hm;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class TTLandingPageActivity extends TTBaseActivity implements com.bytedance.sdk.openadsdk.Sf.fl {
    private PAGProgressBar ABk;
    private ILoader Dww;
    private int Eh;
    private PangleViewStub Gm;
    private int HzH;
    private ROR.Qhi Jma;
    private com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl MQ;
    zc Qhi;
    private ImageView Sf;
    private SSWebView Tgh;
    private Context WAv;
    private int aP;
    TTAdDislikeToast ac;
    private String bxS;
    TTAdDislikeDialog cJ;
    private TextView hm;
    private NFd hpZ;
    private String iMK;
    private com.bytedance.sdk.openadsdk.common.cJ js;
    private String kYc;
    private boolean lB;
    private com.bytedance.sdk.openadsdk.utils.zc lG;
    private String pA;
    private String qMt;
    private LandingPageLoadingLayout sDy;
    private tP tP;
    private Button zc;
    private final AtomicBoolean EBS = new AtomicBoolean(true);
    private final AtomicInteger CQU = new AtomicInteger(0);
    private final AtomicInteger pM = new AtomicInteger(0);
    private final AtomicInteger NFd = new AtomicInteger(0);
    final AtomicBoolean CJ = new AtomicBoolean(false);
    final AtomicBoolean fl = new AtomicBoolean(false);
    private String zn = "ダウンロード";

    @Override // com.bytedance.sdk.openadsdk.Sf.fl
    public void Qhi(boolean z, JSONArray jSONArray) {
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        Qhi(3);
        super.onCreate(bundle);
        if (!iMK.fl()) {
            finish();
            return;
        }
        try {
            HzH.cJ(this);
        } catch (Throwable unused) {
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            setContentView(cJ());
            Intent intent = getIntent();
            int intExtra = intent.getIntExtra("sdk_version", 1);
            this.iMK = intent.getStringExtra("adid");
            this.pA = intent.getStringExtra("log_extra");
            this.HzH = intent.getIntExtra("source", -1);
            String stringExtra = intent.getStringExtra("url");
            this.qMt = stringExtra;
            cJ(4);
            String stringExtra2 = intent.getStringExtra("web_title");
            this.kYc = intent.getStringExtra("event_tag");
            this.bxS = intent.getStringExtra("gecko_id");
            if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                String stringExtra3 = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                if (stringExtra3 != null) {
                    try {
                        this.tP = com.bytedance.sdk.openadsdk.core.cJ.Qhi(new JSONObject(stringExtra3));
                    } catch (Exception e2) {
                        ABk.Qhi("TTAD.LandingPageAct", "TTLandingPageActivity - onCreate MultiGlobalInfo : ", e2);
                    }
                }
            } else {
                this.tP = Dww.Qhi().cJ();
                Dww.Qhi().Tgh();
            }
            if (this.tP == null) {
                finish();
                return;
            }
            fl();
            if (!TextUtils.isEmpty(this.bxS)) {
                this.Dww = com.bytedance.sdk.openadsdk.fl.cJ.Qhi().cJ();
                int Qhi = com.bytedance.sdk.openadsdk.fl.cJ.Qhi().Qhi(this.Dww, this.bxS);
                this.Eh = Qhi;
                this.aP = Qhi > 0 ? 2 : 0;
            }
            this.WAv = this;
            if (this.Tgh != null) {
                com.bytedance.sdk.openadsdk.core.widget.Qhi.ac.Qhi(this).Qhi(false).cJ(false).Qhi(this.Tgh.getWebView());
            }
            SSWebView sSWebView = this.Tgh;
            if (sSWebView != null && sSWebView.getWebView() != null) {
                zc Qhi2 = new zc(this.tP, this.Tgh.getWebView(), new Gm() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.1
                    @Override // com.bytedance.sdk.openadsdk.cJ.Gm
                    public void Qhi(int i) {
                        ac.Qhi.Qhi(TTLandingPageActivity.this.Eh, TTLandingPageActivity.this.pM.get(), TTLandingPageActivity.this.NFd.get(), TTLandingPageActivity.this.CQU.get() - TTLandingPageActivity.this.NFd.get(), TTLandingPageActivity.this.tP, "landingpage", i);
                    }
                }, this.aP).Qhi(true);
                this.Qhi = Qhi2;
                this.Jma = Qhi2.Qhi;
                this.js = js.Qhi(this.tP, this.Tgh, this.WAv, this.kYc);
            }
            Tgh();
            this.Tgh.setLandingPage(true);
            this.Tgh.setTag("landingpage");
            this.Tgh.setMaterialMeta(this.tP.ne());
            this.Tgh.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh(this.WAv, this.hpZ, this.iMK, this.js, this.Qhi, true) { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.8
                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    try {
                        if (TTLandingPageActivity.this.ABk != null && !TTLandingPageActivity.this.isFinishing()) {
                            TTLandingPageActivity.this.ABk.setVisibility(8);
                        }
                    } catch (Throwable unused2) {
                    }
                    if (TTLandingPageActivity.this.sDy != null) {
                        TTLandingPageActivity.this.sDy.cJ();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
                public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                    try {
                        if (!TextUtils.isEmpty(TTLandingPageActivity.this.bxS)) {
                            TTLandingPageActivity.this.CQU.incrementAndGet();
                            WebResourceResponseModel Qhi3 = com.bytedance.sdk.openadsdk.fl.cJ.Qhi().Qhi(TTLandingPageActivity.this.Dww, TTLandingPageActivity.this.bxS, str);
                            if (Qhi3 != null && Qhi3.getWebResourceResponse() != null) {
                                TTLandingPageActivity.this.NFd.incrementAndGet();
                                return Qhi3.getWebResourceResponse();
                            }
                            if (Qhi3 != null && Qhi3.getMsg() == 2) {
                                TTLandingPageActivity.this.pM.incrementAndGet();
                            }
                            return super.shouldInterceptRequest(webView, str);
                        }
                        return super.shouldInterceptRequest(webView, str);
                    } catch (Throwable th) {
                        ABk.Qhi("TTAD.LandingPageAct", "shouldInterceptRequest url error", th);
                        return super.shouldInterceptRequest(webView, str);
                    }
                }
            });
            SSWebView sSWebView2 = this.Tgh;
            if (sSWebView2 != null) {
                sSWebView2.setUserAgentString(com.bytedance.sdk.openadsdk.utils.HzH.Qhi(sSWebView2.getWebView(), intExtra));
            }
            SSWebView sSWebView3 = this.Tgh;
            if (sSWebView3 != null) {
                sSWebView3.setMixedContentMode(0);
            }
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(this.tP, "landingpage", this.aP);
            com.bytedance.sdk.openadsdk.utils.tP.Qhi(this.Tgh, stringExtra);
            this.Tgh.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Qhi.fl(this.hpZ, this.Qhi, this.js) { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.9
                @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.fl, android.webkit.WebChromeClient
                public void onProgressChanged(WebView webView, int i) {
                    super.onProgressChanged(webView, i);
                    if (TTLandingPageActivity.this.sDy != null) {
                        TTLandingPageActivity.this.sDy.Qhi(i);
                    }
                    if (TTLandingPageActivity.this.ABk == null || TTLandingPageActivity.this.isFinishing()) {
                        return;
                    }
                    if (i != 100 || !TTLandingPageActivity.this.ABk.isShown()) {
                        TTLandingPageActivity.this.ABk.setProgress(i);
                    } else {
                        TTLandingPageActivity.this.ABk.setVisibility(8);
                    }
                }
            });
            if (this.Tgh.getWebView() != null) {
                this.Tgh.getWebView().setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.10
                    @Override // android.view.View.OnScrollChangeListener
                    public void onScrollChange(View view, int i, int i2, int i3, int i4) {
                        if (TTLandingPageActivity.this.Qhi != null) {
                            TTLandingPageActivity.this.Qhi.cJ(i2);
                        }
                    }
                });
                this.Tgh.getWebView().setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.11
                    @Override // android.view.View.OnTouchListener
                    public boolean onTouch(View view, MotionEvent motionEvent) {
                        if (TTLandingPageActivity.this.Qhi != null) {
                            TTLandingPageActivity.this.Qhi.Qhi(motionEvent);
                        }
                        if (TTLandingPageActivity.this.js != null) {
                            TTLandingPageActivity.this.js.Qhi(motionEvent);
                            return false;
                        }
                        return false;
                    }
                });
            }
            this.Tgh.setDownloadListener(new DownloadListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.12
                @Override // android.webkit.DownloadListener
                public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                    if (TTLandingPageActivity.this.MQ != null) {
                        TTLandingPageActivity.this.MQ.CJ();
                    }
                }
            });
            TextView textView = this.hm;
            if (textView != null) {
                if (TextUtils.isEmpty(stringExtra2)) {
                    stringExtra2 = MQ.Qhi(this, "tt_web_title_default");
                }
                textView.setText(stringExtra2);
            }
            ac();
            com.bytedance.sdk.openadsdk.utils.zc Qhi3 = com.bytedance.sdk.openadsdk.utils.ROR.Qhi(this, new ROR.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.13
                @Override // com.bytedance.sdk.openadsdk.utils.ROR.Qhi
                public void cJ() {
                }

                @Override // com.bytedance.sdk.openadsdk.utils.ROR.Qhi
                public View Qhi() {
                    return TTLandingPageActivity.this.Sf;
                }
            });
            this.lG = Qhi3;
            Qhi3.Qhi(0L);
            ac.Qhi.Qhi(SystemClock.elapsedRealtime() - elapsedRealtime, this.tP, "landingpage", this.Dww, this.bxS);
        } catch (Throwable unused2) {
            finish();
        }
    }

    private View cJ() {
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(this);
        pAGFrameLayout.setFitsSystemWindows(true);
        PAGLinearLayout pAGLinearLayout = new PAGLinearLayout(this);
        pAGLinearLayout.setOrientation(1);
        pAGFrameLayout.addView(pAGLinearLayout, new FrameLayout.LayoutParams(-1, -1));
        PangleViewStub pangleViewStub = new PangleViewStub(this, new PangleViewStub.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.14
            @Override // com.bytedance.sdk.openadsdk.common.PangleViewStub.Qhi
            public View Qhi(Context context) {
                return new LandingPageBrowserTitleBar(context);
            }
        });
        pangleViewStub.setId(com.bytedance.sdk.openadsdk.utils.iMK.zjb);
        pAGLinearLayout.addView(pangleViewStub, new LinearLayout.LayoutParams(-1, zn.cJ(this, 44.0f)));
        PAGFrameLayout pAGFrameLayout2 = new PAGFrameLayout(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 1.0f;
        pAGLinearLayout.addView(pAGFrameLayout2, layoutParams);
        SSWebView sSWebView = new SSWebView(this);
        sSWebView.setId(com.bytedance.sdk.openadsdk.utils.iMK.MND);
        pAGFrameLayout2.addView(sSWebView, new FrameLayout.LayoutParams(-1, -1));
        PangleViewStub pangleViewStub2 = new PangleViewStub(this, new PangleViewStub.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.15
            @Override // com.bytedance.sdk.openadsdk.common.PangleViewStub.Qhi
            public View Qhi(Context context) {
                return new LandingPageBrowserDownloadButton(context);
            }
        });
        pangleViewStub2.setId(com.bytedance.sdk.openadsdk.utils.iMK.dI);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2);
        layoutParams2.gravity = 81;
        pAGFrameLayout2.addView(pangleViewStub2, layoutParams2);
        PAGProgressBar pAGProgressBar = new PAGProgressBar(this, null, 16973855);
        pAGProgressBar.setId(com.bytedance.sdk.openadsdk.utils.iMK.oU);
        pAGProgressBar.setProgress(1);
        pAGProgressBar.setVisibility(8);
        pAGProgressBar.setProgressDrawable(hm.Qhi(this, "tt_browser_progress_style"));
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, zn.cJ(this, 3.0f));
        layoutParams3.gravity = 49;
        pAGFrameLayout2.addView(pAGProgressBar, layoutParams3);
        LandingPageLoadingLayout landingPageLoadingLayout = new LandingPageLoadingLayout(this);
        landingPageLoadingLayout.setId(520093721);
        pAGFrameLayout.addView(landingPageLoadingLayout, new FrameLayout.LayoutParams(-1, -1));
        return pAGFrameLayout;
    }

    private void Qhi(int i) {
        if (i == 1 || Build.VERSION.SDK_INT == 26) {
            return;
        }
        if (Build.VERSION.SDK_INT == 27) {
            try {
                setRequestedOrientation(i);
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        setRequestedOrientation(i);
    }

    private void ac() {
        tP tPVar = this.tP;
        if (tPVar == null || tPVar.ip() != 4) {
            return;
        }
        PangleViewStub pangleViewStub = this.Gm;
        if (pangleViewStub != null) {
            pangleViewStub.setVisibility(0);
        }
        Button button = (Button) findViewById(com.bytedance.sdk.openadsdk.utils.iMK.SL);
        this.zc = button;
        if (button != null) {
            Qhi(CJ());
            if (this.MQ == null) {
                this.MQ = com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.Tgh.Qhi(this, this.tP, TextUtils.isEmpty(this.kYc) ? js.cJ(this.HzH) : this.kYc);
            }
            com.bytedance.sdk.openadsdk.core.cJ.Qhi qhi = new com.bytedance.sdk.openadsdk.core.cJ.Qhi(this, this.tP, this.kYc, this.HzH);
            qhi.Qhi(false);
            this.zc.setOnClickListener(qhi);
            this.zc.setOnTouchListener(qhi);
            qhi.ac(true);
            qhi.Qhi(this.MQ);
        }
    }

    private String CJ() {
        tP tPVar = this.tP;
        if (tPVar != null && !TextUtils.isEmpty(tPVar.ots())) {
            this.zn = this.tP.ots();
        }
        return this.zn;
    }

    private void Qhi(final String str) {
        Button button;
        if (TextUtils.isEmpty(str) || (button = this.zc) == null) {
            return;
        }
        button.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.2
            @Override // java.lang.Runnable
            public void run() {
                if (TTLandingPageActivity.this.zc == null || TTLandingPageActivity.this.isFinishing()) {
                    return;
                }
                TTLandingPageActivity.this.zc.setText(str);
            }
        });
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ac();
    }

    private void fl() {
        SSWebView sSWebView = (SSWebView) findViewById(com.bytedance.sdk.openadsdk.utils.iMK.MND);
        this.Tgh = sSWebView;
        js.Qhi(this.tP, sSWebView);
        this.Gm = (PangleViewStub) findViewById(com.bytedance.sdk.openadsdk.utils.iMK.dI);
        PangleViewStub pangleViewStub = (PangleViewStub) findViewById(com.bytedance.sdk.openadsdk.utils.iMK.zjb);
        LandingPageLoadingLayout landingPageLoadingLayout = (LandingPageLoadingLayout) findViewById(520093721);
        this.sDy = landingPageLoadingLayout;
        if (landingPageLoadingLayout != null) {
            landingPageLoadingLayout.Qhi(this.tP);
            this.sDy.Qhi();
        }
        pangleViewStub.setVisibility(0);
        ImageView imageView = (ImageView) findViewById(520093720);
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTLandingPageActivity.this.Tgh != null) {
                        if (TTLandingPageActivity.this.Jma != null) {
                            TTLandingPageActivity.this.Jma.Qhi();
                        }
                        if (TTLandingPageActivity.this.Tgh.fl()) {
                            TTLandingPageActivity.this.Tgh.Tgh();
                        } else if (TTLandingPageActivity.this.ROR()) {
                            TTLandingPageActivity.this.onBackPressed();
                        } else {
                            TTLandingPageActivity.this.finish();
                        }
                    }
                }
            });
        }
        ImageView imageView2 = (ImageView) findViewById(520093716);
        this.Sf = imageView2;
        if (imageView2 != null) {
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTLandingPageActivity.this.finish();
                }
            });
        }
        this.hm = (TextView) findViewById(com.bytedance.sdk.openadsdk.utils.iMK.DaO);
        PAGProgressBar pAGProgressBar = (PAGProgressBar) findViewById(com.bytedance.sdk.openadsdk.utils.iMK.oU);
        this.ABk = pAGProgressBar;
        pAGProgressBar.setVisibility(0);
        View findViewById = findViewById(com.bytedance.sdk.openadsdk.utils.iMK.Oy);
        if (findViewById != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTLandingPageActivity.this.Qhi();
                }
            });
        }
    }

    private void Tgh() {
        NFd nFd = new NFd(this);
        this.hpZ = nFd;
        nFd.cJ(this.Tgh).ac(this.iMK).CJ(this.pA).Qhi(this.tP).cJ(this.HzH).Qhi(this.tP.zn()).fl(this.tP.bIO()).Qhi(this.Tgh).cJ("landingpage").Qhi(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        NFd nFd = this.hpZ;
        if (nFd != null) {
            nFd.WAv();
        }
        zc zcVar = this.Qhi;
        if (zcVar != null) {
            zcVar.ROR();
        }
        if (!this.lB) {
            this.lB = true;
            Qhi(4);
        }
        com.bytedance.sdk.openadsdk.utils.zc zcVar2 = this.lG;
        if (zcVar2 != null) {
            zcVar2.Qhi();
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        zc zcVar = this.Qhi;
        if (zcVar != null) {
            zcVar.Sf();
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        com.bytedance.sdk.openadsdk.utils.zc zcVar = this.lG;
        if (zcVar != null) {
            zcVar.cJ();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (ROR() && !this.EBS.getAndSet(true)) {
            Sf();
            cJ(0);
            return;
        }
        try {
            super.onBackPressed();
        } catch (Throwable th) {
            ABk.Qhi("TTAD.LandingPageAct", "onBackPressed: ", th.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean ROR() {
        return !TextUtils.isEmpty(this.qMt) && this.qMt.contains("__luban_sdk");
    }

    private void cJ(final int i) {
        if (this.Sf == null || !ROR()) {
            return;
        }
        lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.6
            @Override // java.lang.Runnable
            public void run() {
                zn.Qhi((View) TTLandingPageActivity.this.Sf, i);
            }
        });
    }

    private void Sf() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isBackIntercept", true);
            this.hpZ.Qhi("temai_back_event", jSONObject);
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        SSWebView sSWebView;
        super.onDestroy();
        zc zcVar = this.Qhi;
        if (zcVar != null && (sSWebView = this.Tgh) != null) {
            zcVar.Qhi(sSWebView);
        }
        try {
            if (getWindow() != null) {
                ((ViewGroup) getWindow().getDecorView()).removeAllViews();
            }
        } catch (Throwable unused) {
        }
        SSWebView sSWebView2 = this.Tgh;
        if (sSWebView2 != null) {
            com.bytedance.sdk.openadsdk.core.lG.Qhi(sSWebView2.getWebView());
        }
        this.Tgh = null;
        NFd nFd = this.hpZ;
        if (nFd != null) {
            nFd.Gm();
        }
        zc zcVar2 = this.Qhi;
        if (zcVar2 != null) {
            zcVar2.ac(true);
        }
        if (!TextUtils.isEmpty(this.bxS)) {
            ac.Qhi.Qhi(this.NFd.get(), this.CQU.get(), this.tP);
        }
        com.bytedance.sdk.openadsdk.fl.cJ.Qhi().Qhi(this.Dww);
        com.bytedance.sdk.openadsdk.utils.zc zcVar3 = this.lG;
        if (zcVar3 != null) {
            zcVar3.ac();
        }
    }

    protected void Qhi() {
        if (isFinishing()) {
            return;
        }
        if (this.fl.get()) {
            WAv();
            return;
        }
        if (this.cJ == null) {
            hm();
        }
        TTAdDislikeDialog tTAdDislikeDialog = this.cJ;
        if (tTAdDislikeDialog != null) {
            tTAdDislikeDialog.Qhi();
        }
    }

    private void hm() {
        try {
            if (this.cJ == null) {
                TTAdDislikeDialog tTAdDislikeDialog = new TTAdDislikeDialog(this.WAv, this.tP);
                this.cJ = tTAdDislikeDialog;
                tTAdDislikeDialog.setDislikeSource("landing_page");
                this.cJ.setCallback(new TTAdDislikeDialog.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.TTLandingPageActivity.7
                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.Qhi
                    public void Qhi(View view) {
                        TTLandingPageActivity.this.CJ.set(true);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.Qhi
                    public void cJ(View view) {
                        TTLandingPageActivity.this.CJ.set(false);
                    }

                    @Override // com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.Qhi
                    public void Qhi(int i, FilterWord filterWord) {
                        if (TTLandingPageActivity.this.fl.get() || filterWord == null || filterWord.hasSecondOptions()) {
                            return;
                        }
                        TTLandingPageActivity.this.fl.set(true);
                        TTLandingPageActivity.this.Gm();
                    }
                });
            }
            FrameLayout frameLayout = (FrameLayout) findViewById(16908290);
            frameLayout.addView(this.cJ);
            if (this.ac == null) {
                TTAdDislikeToast tTAdDislikeToast = new TTAdDislikeToast(this.WAv);
                this.ac = tTAdDislikeToast;
                frameLayout.addView(tTAdDislikeToast);
            }
        } catch (Throwable th) {
            ApmHelper.reportCustomError("initDislike error", "LandingPageActivity", th);
        }
    }

    private void WAv() {
        TTAdDislikeToast tTAdDislikeToast = this.ac;
        if (tTAdDislikeToast == null) {
            return;
        }
        tTAdDislikeToast.Qhi(TTAdDislikeToast.getDislikeTip());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Gm() {
        TTAdDislikeToast tTAdDislikeToast;
        if (isFinishing() || (tTAdDislikeToast = this.ac) == null) {
            return;
        }
        tTAdDislikeToast.Qhi(TTAdDislikeToast.getDislikeSendTip());
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        com.bytedance.sdk.openadsdk.utils.ac.Qhi(this, this.tP);
    }
}
