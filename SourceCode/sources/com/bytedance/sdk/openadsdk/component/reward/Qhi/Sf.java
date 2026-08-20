package com.bytedance.sdk.openadsdk.component.reward.Qhi;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.DownloadListener;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.bytedance.sdk.component.Qhi.kYc;
import com.bytedance.sdk.component.utils.HomeWatcherReceiver;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.widget.PlayableLoadingView;
import com.bytedance.sdk.openadsdk.hpZ.Sf;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.zn;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: RewardFullPlayableManager.java */
/* loaded from: classes2.dex */
public class Sf implements Handler.Callback, com.bytedance.sdk.openadsdk.WAv.Sf {
    private static final Sf.Qhi hm = new Sf.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.Sf.1
        @Override // com.bytedance.sdk.openadsdk.hpZ.Sf.Qhi
        public void Qhi(String str, String str2, Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi(str, str2, th);
        }
    };
    private final String ABk;
    private boolean CQU;
    private boolean Dww;
    private boolean EBS;
    private final Activity Gm;
    private HomeWatcherReceiver MQ;
    private boolean Sf;
    private volatile boolean WAv;
    private volatile boolean bxS;
    private hpZ hpZ;
    private final Qhi iMK;
    private PlayableLoadingView kYc;
    private com.bytedance.sdk.openadsdk.hpZ.hm qMt;
    private final tP zc;
    protected final AtomicBoolean Qhi = new AtomicBoolean(false);
    private final Handler pA = new Handler(this);
    boolean cJ = false;
    boolean ac = false;
    long CJ = 0;
    int fl = 0;
    int Tgh = 0;
    int ROR = 0;
    private int HzH = 1;
    private boolean tP = true;
    private final com.bytedance.sdk.openadsdk.WAv.fl pM = new com.bytedance.sdk.openadsdk.WAv.fl() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.Sf.8
        @Override // com.bytedance.sdk.openadsdk.WAv.fl
        public void Qhi(int i) {
        }

        @Override // com.bytedance.sdk.openadsdk.WAv.fl
        public void cJ() {
        }

        @Override // com.bytedance.sdk.openadsdk.WAv.fl
        public void Qhi() {
            if (!Sf.this.iMK.FQ.isFinishing() && Sf.this.iMK.cJ.Ls() && bxS.hm(Sf.this.iMK.cJ)) {
                Sf.this.pA.removeMessages(800);
                Sf.this.pA.sendMessage(Sf.Qhi(1, 0));
            }
        }
    };

    static /* synthetic */ com.bytedance.sdk.openadsdk.hpZ.fl qMt() {
        return EBS();
    }

    public Sf(Qhi qhi) {
        this.iMK = qhi;
        this.Gm = qhi.FQ;
        this.ABk = qhi.fl;
        this.zc = qhi.cJ;
    }

    public static Message Qhi(int i, int i2) {
        Message obtain = Message.obtain();
        obtain.what = 800;
        obtain.arg1 = i;
        if (i == 3) {
            obtain.arg2 = i2;
        }
        return obtain;
    }

    public void cJ(int i) {
        if (i == 5) {
            this.Sf = true;
            if (bxS.hpZ(this.zc)) {
                this.pA.removeMessages(900);
                this.iMK.xyz.sendEmptyMessage(600);
            }
        }
        this.pA.sendMessage(Qhi(i, 0));
    }

    public void Qhi() {
        if (this.EBS) {
            return;
        }
        this.EBS = true;
        this.hpZ = this.iMK.lG;
        this.HzH = this.iMK.Dq;
        bxS();
        if (bxS.cJ(this.zc)) {
            DeviceUtils.AudioInfoReceiver.Qhi(this);
        }
        if (Dww() && bxS.Gm(this.zc) && bxS.hm(this.zc)) {
            Handler handler = this.pA;
            handler.sendMessageDelayed(handler.obtainMessage(800, 2, bxS.Qhi(2)), bxS.ABk(this.zc) * 1000);
        }
    }

    public void Qhi(final com.bytedance.sdk.openadsdk.WAv.Tgh tgh, boolean z) {
        com.bytedance.sdk.openadsdk.Gm.cJ cJVar;
        kYc Qhi;
        com.bytedance.sdk.openadsdk.hpZ.hm CJ;
        if (bxS.cJ(this.zc) && this.iMK.jPH) {
            if (com.bytedance.sdk.openadsdk.core.hm.cJ().HzH()) {
                com.bytedance.sdk.openadsdk.hpZ.Sf.Qhi(hm);
            }
            com.bytedance.sdk.openadsdk.hpZ.Qhi qhi = new com.bytedance.sdk.openadsdk.hpZ.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.Sf.2
                @Override // com.bytedance.sdk.openadsdk.hpZ.Qhi
                public void Qhi(int i, String str) {
                    super.Qhi(i, str);
                    if (Sf.this.kYc == null || !Sf.this.kYc.isShown()) {
                        return;
                    }
                    Sf.this.pA.sendMessage(Sf.Qhi(3, bxS.Qhi(i)));
                }

                @Override // com.bytedance.sdk.openadsdk.hpZ.Qhi
                public com.bytedance.sdk.openadsdk.hpZ.fl Qhi() {
                    return Sf.qMt();
                }

                @Override // com.bytedance.sdk.openadsdk.hpZ.Qhi
                public void cJ() {
                    Sf.this.iMK.lG.WAv().ac(true);
                    com.bytedance.sdk.openadsdk.WAv.Tgh tgh2 = tgh;
                    if (tgh2 != null) {
                        tgh2.Qhi();
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.hpZ.Qhi
                public void Qhi(JSONObject jSONObject) {
                    com.bytedance.sdk.openadsdk.cJ.ac.cJ(Sf.this.zc, Sf.this.ABk, "playable_track", jSONObject);
                }
            };
            com.bytedance.sdk.openadsdk.hpZ.ac acVar = new com.bytedance.sdk.openadsdk.hpZ.ac() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.Sf.3
                @Override // com.bytedance.sdk.openadsdk.hpZ.ac
                public void Qhi(String str, JSONObject jSONObject) {
                    Sf.this.iMK.lG.WAv().Qhi(str, jSONObject);
                }
            };
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("cid", this.zc.HLI());
                jSONObject.put("log_extra", this.zc.EGK());
                CJ = com.bytedance.sdk.openadsdk.hpZ.hm.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi(), this.iMK.lG.Sf().getWebView(), acVar, qhi).Tgh(this.iMK.lG.bxS()).fl(com.bytedance.sdk.openadsdk.common.Qhi.Qhi(com.bytedance.sdk.openadsdk.core.HzH.Qhi())).Qhi(com.bytedance.sdk.openadsdk.common.Qhi.Qhi()).ac(jSONObject).Qhi("sdkEdition", com.bytedance.sdk.openadsdk.common.Qhi.ac()).cJ(com.bytedance.sdk.openadsdk.common.Qhi.fl()).CJ(com.bytedance.sdk.openadsdk.common.Qhi.CJ()).ac(false).Qhi(z).Qhi(bxS.ABk(this.zc)).cJ(bxS.ABk(this.zc)).CJ(bxS.Gm(this.zc));
                this.qMt = CJ;
            } catch (Exception unused) {
                if (this.qMt == null) {
                    cJVar = new com.bytedance.sdk.openadsdk.Gm.cJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.Sf.4
                        @Override // com.bytedance.sdk.openadsdk.Gm.cJ
                        public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("PlayablePlugin_is_null", true);
                            return com.bytedance.sdk.openadsdk.Gm.Qhi.fl.cJ().Qhi("PlayablePlugin_init").cJ(jSONObject2.toString());
                        }
                    };
                }
            } catch (Throwable th) {
                if (this.qMt == null) {
                    com.bytedance.sdk.openadsdk.Gm.ac.Qhi("PlayablePlugin_init", false, new com.bytedance.sdk.openadsdk.Gm.cJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.Sf.4
                        @Override // com.bytedance.sdk.openadsdk.Gm.cJ
                        public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("PlayablePlugin_is_null", true);
                            return com.bytedance.sdk.openadsdk.Gm.Qhi.fl.cJ().Qhi("PlayablePlugin_init").cJ(jSONObject2.toString());
                        }
                    });
                }
                throw th;
            }
            if (CJ == null) {
                cJVar = new com.bytedance.sdk.openadsdk.Gm.cJ() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.Sf.4
                    @Override // com.bytedance.sdk.openadsdk.Gm.cJ
                    public com.bytedance.sdk.openadsdk.Gm.Qhi.ac getLogStats() throws Exception {
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("PlayablePlugin_is_null", true);
                        return com.bytedance.sdk.openadsdk.Gm.Qhi.fl.cJ().Qhi("PlayablePlugin_init").cJ(jSONObject2.toString());
                    }
                };
                com.bytedance.sdk.openadsdk.Gm.ac.Qhi("PlayablePlugin_init", false, cJVar);
            }
            if (this.qMt != null && !TextUtils.isEmpty(bxS.CJ(this.zc))) {
                this.qMt.ac(bxS.CJ(this.zc));
            }
            com.bytedance.sdk.openadsdk.hpZ.hm hmVar = this.qMt;
            if (hmVar != null) {
                Set<String> Gm = hmVar.Gm();
                final WeakReference weakReference = new WeakReference(this.qMt);
                for (String str : Gm) {
                    if (!"subscribe_app_ad".equals(str) && !"adInfo".equals(str) && !"webview_time_track".equals(str) && !"download_app_ad".equals(str) && (Qhi = this.iMK.lG.WAv().Qhi()) != null) {
                        Qhi.Qhi(str, new com.bytedance.sdk.component.Qhi.Tgh<JSONObject, JSONObject>() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.Sf.5
                            @Override // com.bytedance.sdk.component.Qhi.Tgh
                            public JSONObject Qhi(JSONObject jSONObject2, com.bytedance.sdk.component.Qhi.ROR ror) {
                                try {
                                    com.bytedance.sdk.openadsdk.hpZ.hm hmVar2 = (com.bytedance.sdk.openadsdk.hpZ.hm) weakReference.get();
                                    if (hmVar2 == null) {
                                        return null;
                                    }
                                    return hmVar2.CJ(Qhi(), jSONObject2);
                                } catch (Throwable unused2) {
                                    return null;
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    private static com.bytedance.sdk.openadsdk.hpZ.fl EBS() {
        String Tgh = com.bytedance.sdk.openadsdk.common.Qhi.Tgh();
        Tgh.hashCode();
        char c2 = 65535;
        switch (Tgh.hashCode()) {
            case 1653:
                if (Tgh.equals("2g")) {
                    c2 = 0;
                    break;
                }
                break;
            case 1684:
                if (Tgh.equals("3g")) {
                    c2 = 1;
                    break;
                }
                break;
            case 1715:
                if (Tgh.equals("4g")) {
                    c2 = 2;
                    break;
                }
                break;
            case 1746:
                if (Tgh.equals("5g")) {
                    c2 = 3;
                    break;
                }
                break;
            case 3649301:
                if (Tgh.equals("wifi")) {
                    c2 = 4;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return com.bytedance.sdk.openadsdk.hpZ.fl.TYPE_2G;
            case 1:
                return com.bytedance.sdk.openadsdk.hpZ.fl.TYPE_3G;
            case 2:
                return com.bytedance.sdk.openadsdk.hpZ.fl.TYPE_4G;
            case 3:
                return com.bytedance.sdk.openadsdk.hpZ.fl.TYPE_5G;
            case 4:
                return com.bytedance.sdk.openadsdk.hpZ.fl.TYPE_WIFI;
            default:
                return com.bytedance.sdk.openadsdk.hpZ.fl.TYPE_UNKNOWN;
        }
    }

    private void bxS() {
        this.kYc = (PlayableLoadingView) this.iMK.yN.findViewById(com.bytedance.sdk.openadsdk.utils.iMK.YAV);
    }

    private boolean Dww() {
        if (this.kYc == null) {
            return false;
        }
        if (this.zc.Ls() && bxS.Gm(this.zc)) {
            this.kYc.cJ(this.zc, this.HzH);
            return true;
        }
        this.kYc.ac();
        return false;
    }

    public void cJ() {
        if (this.Qhi.getAndSet(true)) {
            return;
        }
        this.hpZ.lG();
        if (bxS.ac(this.zc)) {
            this.hpZ.Tgh();
        }
    }

    public void Qhi(DownloadListener downloadListener) {
        SSWebView hm2 = this.hpZ.hm();
        if (hm2 == null) {
            return;
        }
        String CQU = CQU();
        if (TextUtils.isEmpty(CQU)) {
            return;
        }
        hm2.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh(this.Gm, this.hpZ.Gm(), this.zc.HLI(), null, false) { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.Sf.6
            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                if (Sf.this.tP) {
                    com.bytedance.sdk.openadsdk.cJ.ac.Qhi(System.currentTimeMillis(), Sf.this.zc, Sf.this.ABk, "loading_h5_success");
                }
                super.onPageFinished(webView, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
                Sf.this.tP = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                Sf.this.tP = false;
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
                Sf.this.tP = false;
            }
        });
        hm2.a_(CQU);
        hm2.setDisplayZoomControls(false);
        hm2.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Qhi.fl(this.hpZ.Gm(), this.hpZ.zc()));
        hm2.setDownloadListener(downloadListener);
    }

    private String CQU() {
        String str;
        String Eh = com.bytedance.sdk.openadsdk.core.HzH.CJ().Eh();
        if (TextUtils.isEmpty(Eh) || this.zc.pv() == null) {
            return Eh;
        }
        String cJ = this.zc.pv().cJ();
        double CJ = this.zc.pv().CJ();
        int fl = this.zc.pv().fl();
        if (this.zc.dIT() != null && !TextUtils.isEmpty(this.zc.dIT().Qhi())) {
            str = this.zc.dIT().Qhi();
        } else {
            str = "";
        }
        String HLI = this.zc.HLI();
        String ac = this.zc.pv().ac();
        String Qhi = this.zc.pv().Qhi();
        String cJ2 = this.zc.pv().cJ();
        String dVA = this.zc.dVA();
        StringBuilder sb = new StringBuilder("appname=");
        sb.append(URLEncoder.encode(cJ)).append("&stars=").append(CJ).append("&comments=").append(fl).append("&icon=").append(URLEncoder.encode(str)).append("&downloading=true&id=").append(URLEncoder.encode(HLI)).append("&packageName=").append(URLEncoder.encode(ac)).append("&downloadUrl=").append(URLEncoder.encode(Qhi)).append("&name=").append(URLEncoder.encode(cJ2)).append("&orientation=").append(this.HzH == 1 ? "portrait" : "landscape").append("&apptitle=").append(URLEncoder.encode(dVA));
        return Eh + "?" + ((Object) sb);
    }

    public void ac() {
        this.cJ = true;
    }

    public boolean CJ() {
        return this.cJ;
    }

    public void fl() {
        if (this.CQU) {
            return;
        }
        this.CQU = true;
        ac(false);
        Qhi(this.Gm.getApplicationContext());
        com.bytedance.sdk.openadsdk.hpZ.hm hmVar = this.qMt;
        if (hmVar != null) {
            hmVar.js();
        }
        this.pA.removeCallbacksAndMessages(null);
        DeviceUtils.AudioInfoReceiver.cJ(this);
    }

    public void Qhi(boolean z) {
        if (z) {
            this.hpZ.Sf().setDomStorageEnabled(true);
        }
    }

    public void cJ(boolean z) {
        if (z) {
            try {
                if (!TextUtils.isEmpty(this.hpZ.bxS()) && this.hpZ.qMt() != 0) {
                    com.bytedance.sdk.openadsdk.Gm.ac.Qhi().Qhi(this.hpZ.bxS(), this.hpZ.qMt(), this.hpZ.EBS());
                }
            } catch (Throwable unused) {
            }
        }
        if (z) {
            try {
                if (TextUtils.isEmpty(this.hpZ.bxS())) {
                    return;
                }
                com.bytedance.sdk.openadsdk.Gm.ac.Qhi().cJ(this.hpZ.bxS());
            } catch (Throwable unused2) {
            }
        }
    }

    public void Tgh() {
        try {
            HomeWatcherReceiver homeWatcherReceiver = new HomeWatcherReceiver();
            this.MQ = homeWatcherReceiver;
            homeWatcherReceiver.Qhi(new HomeWatcherReceiver.Qhi() { // from class: com.bytedance.sdk.openadsdk.component.reward.Qhi.Sf.7
                @Override // com.bytedance.sdk.component.utils.HomeWatcherReceiver.Qhi
                public void Qhi() {
                    Sf.this.ac = true;
                }

                @Override // com.bytedance.sdk.component.utils.HomeWatcherReceiver.Qhi
                public void cJ() {
                    Sf.this.ac = true;
                }
            });
            this.Gm.getApplicationContext().registerReceiver(this.MQ, new IntentFilter("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
        } catch (Throwable unused) {
        }
    }

    private void Qhi(Context context) {
        try {
            this.MQ.Qhi(null);
            context.getApplicationContext().unregisterReceiver(this.MQ);
        } catch (Throwable unused) {
        }
    }

    public void Qhi(String str) {
        if (this.ac) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("duration", System.currentTimeMillis() - this.CJ);
            } catch (JSONException e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.RFPM", "sendPlayableEvent error", e2);
            }
            com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.zc, this.ABk, str, jSONObject);
            if ("return_foreground".equals(str)) {
                this.ac = false;
            }
        }
    }

    public void ROR() {
        if (this.CJ > 0) {
            return;
        }
        this.CJ = System.currentTimeMillis();
        Handler handler = this.pA;
        handler.sendMessage(handler.obtainMessage(900, Gm(), 0));
        ac(true);
    }

    public void Qhi(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                jSONObject.put("duration", System.currentTimeMillis() - this.CJ);
            } catch (JSONException e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.RFPM", "endShow json error", e2);
            }
        }
    }

    public void ac(int i) {
        PlayableLoadingView playableLoadingView = this.kYc;
        if (playableLoadingView != null) {
            playableLoadingView.setProgress(i);
        }
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.cJ.Tgh tgh) {
        PlayableLoadingView playableLoadingView = this.kYc;
        if (playableLoadingView == null || playableLoadingView.getDownloadButton() == null) {
            return;
        }
        if (bxS.Gm(this.zc) || bxS.hpZ(this.zc)) {
            this.kYc.getDownloadButton().setOnClickListener(tgh);
            this.kYc.getDownloadButton().setOnTouchListener(tgh);
        }
    }

    public void Sf() {
        com.bytedance.sdk.openadsdk.hpZ.hm hmVar;
        if (!bxS.ac(this.zc) && this.kYc.isShown() && this.iMK.gga != null) {
            this.iMK.gga.Qhi(Gm() * 1000);
        }
        if (bxS.zc(this.zc) && this.kYc.isShown()) {
            this.iMK.zn.cJ(this.iMK.ReL);
        }
        PlayableLoadingView playableLoadingView = this.kYc;
        if (playableLoadingView != null) {
            playableLoadingView.ac();
        }
        if (this.Qhi.getAndSet(true)) {
            return;
        }
        if (this.iMK.lG.js() && (hmVar = this.qMt) != null) {
            hmVar.Qhi(1);
        }
        if (bxS.cJ(this.zc) && bxS.hpZ(this.zc)) {
            if (this.iMK.lG != null && !this.iMK.lG.js()) {
                int i = !this.iMK.lG.hpZ() ? 2 : 3;
                com.bytedance.sdk.openadsdk.hpZ.hm hmVar2 = this.qMt;
                if (hmVar2 != null) {
                    hmVar2.Qhi(i);
                }
                if (bxS.Gm(this.iMK.cJ)) {
                    Qhi(this.iMK.Tgh, this.iMK.cJ, this.iMK.cJ.LpL());
                    ROR();
                    this.iMK.PAe.Gm();
                }
                this.iMK.zn.Qhi(false);
                this.iMK.lG.Jma();
                this.bxS = true;
                this.iMK.js.ac(false);
                this.iMK.lB.Qhi(true);
                this.iMK.dIT = true;
                if (bxS.zc(this.zc)) {
                    this.pA.removeMessages(900);
                    this.iMK.js.CJ(false);
                    if (this.iMK.xyz != null) {
                        this.iMK.xyz.removeMessages(1);
                        this.iMK.xyz.sendEmptyMessageDelayed(600, 1000L);
                    }
                }
                com.bytedance.sdk.openadsdk.hpZ.hm hmVar3 = this.qMt;
                if (hmVar3 != null) {
                    hmVar3.cJ(true);
                    return;
                }
                return;
            }
            this.iMK.zn.Qhi(this.iMK.ReL);
        }
    }

    public void hm() {
        if (this.kYc.isShown()) {
            return;
        }
        PlayableLoadingView playableLoadingView = this.kYc;
        if (playableLoadingView != null) {
            playableLoadingView.cJ(this.zc, this.HzH);
            this.kYc.setProgress(this.iMK.lG.Sf() != null ? this.iMK.lG.Sf().getProgress() : 0);
        }
        com.bytedance.sdk.openadsdk.hpZ.hm hmVar = this.qMt;
        if (hmVar != null) {
            hmVar.NFd();
        }
    }

    public boolean WAv() {
        return this.WAv;
    }

    public void ac(boolean z) {
        this.WAv = z;
        if (z) {
            return;
        }
        this.pA.removeMessages(900);
    }

    public int CJ(int i) {
        return this.ROR - (this.Tgh - i);
    }

    public int Gm() {
        return this.Tgh;
    }

    public int zc() {
        return this.fl;
    }

    public void Qhi(int i, tP tPVar, boolean z) {
        if (tPVar == null) {
            return;
        }
        this.Tgh = tPVar.TKG();
        this.ROR = com.bytedance.sdk.openadsdk.core.HzH.CJ().Qhi(String.valueOf(i), z);
    }

    public void fl(int i) {
        this.fl = i - 1;
    }

    public void Tgh(int i) {
        this.fl = i;
    }

    @Override // com.bytedance.sdk.openadsdk.WAv.Sf
    public void Qhi(int i) {
        if (!bxS.zc(this.iMK.cJ) || this.iMK.WAv.get()) {
            if (bxS.Gm(this.iMK.cJ) || bxS.zc(this.iMK.cJ)) {
                if (this.iMK.lB.cJ()) {
                    boolean z = this.iMK.dIT;
                    this.iMK.lB.Qhi();
                    if (i == 0) {
                        this.iMK.js.cJ(true);
                        this.iMK.bxS.cJ(true);
                        return;
                    }
                    this.iMK.js.cJ(false);
                    this.iMK.bxS.cJ(false);
                    return;
                }
                this.iMK.lB.Qhi(-1);
                boolean z2 = this.iMK.dIT;
                this.iMK.lB.Qhi();
                if (this.iMK.Qe) {
                    if (i == 0) {
                        this.iMK.dIT = true;
                        this.iMK.js.cJ(true);
                        this.iMK.bxS.cJ(true);
                        return;
                    }
                    this.iMK.dIT = false;
                    this.iMK.js.cJ(false);
                    this.iMK.bxS.cJ(false);
                }
            }
        }
    }

    public void ABk() {
        if (this.qMt == null || !zn.CJ(this.iMK.lG.Sf())) {
            return;
        }
        this.qMt.cJ(true);
    }

    public void iMK() {
        com.bytedance.sdk.openadsdk.hpZ.hm hmVar = this.qMt;
        if (hmVar != null) {
            hmVar.cJ(false);
        }
        this.pA.removeMessages(900);
    }

    public void CJ(boolean z) {
        com.bytedance.sdk.openadsdk.hpZ.hm hmVar = this.qMt;
        if (hmVar != null) {
            hmVar.cJ(z);
        }
    }

    public void fl(boolean z) {
        com.bytedance.sdk.openadsdk.hpZ.hm hmVar = this.qMt;
        if (hmVar != null) {
            hmVar.Qhi(z);
        }
    }

    public void Qhi(int i, String str, String str2) {
        try {
            com.bytedance.sdk.openadsdk.hpZ.hm hmVar = this.qMt;
            if (hmVar != null) {
                hmVar.fl(com.bytedance.sdk.openadsdk.core.video.cJ.Qhi.Qhi().Qhi(this.zc));
                this.qMt.Qhi(i, str, str2);
            }
        } catch (Exception unused) {
        }
    }

    public void Qhi(boolean z, String str, int i) {
        try {
            com.bytedance.sdk.openadsdk.hpZ.hm hmVar = this.qMt;
            if (hmVar != null) {
                hmVar.fl(com.bytedance.sdk.openadsdk.core.video.cJ.Qhi.Qhi().Qhi(this.zc));
                this.qMt.Qhi(z, str, i);
            }
        } catch (Exception unused) {
        }
    }

    public void cJ(String str) {
        com.bytedance.sdk.openadsdk.hpZ.hm hmVar = this.qMt;
        if (hmVar != null) {
            hmVar.fl(com.bytedance.sdk.openadsdk.core.video.cJ.Qhi.Qhi().Qhi(this.zc));
            this.qMt.Sf(str);
        }
        if (HzH()) {
            this.iMK.lG.CJ(true);
            this.iMK.lB.Qhi(true);
            this.iMK.dIT = true;
        }
    }

    public void ac(String str) {
        com.bytedance.sdk.openadsdk.hpZ.hm hmVar = this.qMt;
        if (hmVar != null) {
            hmVar.fl(com.bytedance.sdk.openadsdk.core.video.cJ.Qhi.Qhi().Qhi(this.zc));
            this.qMt.ROR(str);
        }
    }

    public void pA() {
        this.pA.removeMessages(900);
        this.pA.removeMessages(600);
    }

    public void Qhi(long j) {
        Message obtain = Message.obtain();
        obtain.what = 900;
        obtain.arg1 = zc();
        this.pA.sendMessageDelayed(obtain, j);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        PlayableLoadingView playableLoadingView;
        if (message.what == 900) {
            if (!this.WAv || !bxS.Gm(this.iMK.cJ)) {
                return true;
            }
            int i = message.arg1;
            if (i > 0) {
                this.iMK.js.CJ(true);
                int CJ = this.iMK.CQU.CJ(i);
                if (CJ == i) {
                    this.iMK.js.Qhi(String.valueOf(i), null);
                } else if (CJ > 0) {
                    this.iMK.js.Qhi(String.valueOf(i), String.format(MQ.Qhi(this.iMK.FQ.getApplicationContext(), "tt_skip_ad_time_text"), Integer.valueOf(CJ)));
                } else if (HzH()) {
                    this.iMK.tP.set(true);
                    this.iMK.ReL.pA();
                } else {
                    this.iMK.js.Qhi(String.valueOf(i), MQ.Qhi(this.iMK.FQ.getApplicationContext(), "tt_reward_screen_skip_tx"));
                    this.iMK.js.fl(true);
                }
                Message obtain = Message.obtain();
                obtain.what = 900;
                obtain.arg1 = i - 1;
                this.pA.sendMessageDelayed(obtain, 1000L);
                this.iMK.CQU.fl(i);
            } else {
                if (bxS.ac(this.zc) && (!bxS.hpZ(this.zc) || !this.iMK.CQU.HzH())) {
                    this.iMK.js.ac();
                    this.iMK.js.fl(true);
                } else {
                    this.iMK.js.CJ(false);
                    this.iMK.tP.set(true);
                    this.iMK.ReL.pA();
                }
                if (!this.Sf) {
                    this.Dww = true;
                }
            }
            this.iMK.PAe.iMK();
        } else if (message.what != 800 || ((playableLoadingView = this.kYc) != null && (!playableLoadingView.isShown() || this.kYc.CJ()))) {
            return true;
        } else {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("remove_loading_page_type", message.arg1);
                if (message.arg2 != 0) {
                    jSONObject.put("remove_loading_page_reason", message.arg2);
                }
                String fl = bxS.fl(this.zc);
                Qhi qhi = this.iMK;
                if (qhi != null && qhi.lG != null) {
                    String bxS = this.iMK.lG.bxS();
                    if (!TextUtils.isEmpty(bxS)) {
                        fl = bxS;
                    }
                }
                jSONObject.put("playable_url", fl);
                PlayableLoadingView playableLoadingView2 = this.kYc;
                r3 = playableLoadingView2 != null ? playableLoadingView2.getDisplayDuration() : 0L;
                jSONObject.put("duration", r3);
            } catch (JSONException e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.RFPM", "handleMessage json error", e2);
            }
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(this.iMK.cJ, this.iMK.fl, "remove_loading_page", jSONObject, r3);
            this.pA.removeMessages(800);
            if (!this.Gm.isFinishing()) {
                this.iMK.CQU.Sf();
            }
        }
        return true;
    }

    public com.bytedance.sdk.openadsdk.WAv.fl hpZ() {
        return this.pM;
    }

    public void Tgh(boolean z) {
        if (!z || this.iMK.CQU.HzH()) {
            return;
        }
        com.bytedance.sdk.openadsdk.hpZ.hm hmVar = this.qMt;
        if (hmVar != null) {
            hmVar.Qhi(1);
        }
        boolean Gm = bxS.Gm(this.zc);
        if ((Gm || bxS.hpZ(this.zc)) && this.zc.Ls() && !bxS.hm(this.zc)) {
            Handler handler = this.pA;
            handler.sendMessageDelayed(handler.obtainMessage(800, 0, 0), 1000L);
        }
        if (Gm) {
            this.iMK.CQU.cJ();
            this.iMK.lG.cJ(true);
            this.iMK.lG.ac(true);
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(System.currentTimeMillis(), this.iMK.cJ, this.ABk, "py_loading_success");
        }
    }

    public boolean HzH() {
        return this.bxS;
    }

    public boolean kYc() {
        return this.Dww;
    }

    public boolean tP() {
        PlayableLoadingView playableLoadingView = this.kYc;
        return playableLoadingView != null && playableLoadingView.isShown();
    }

    public com.bytedance.sdk.openadsdk.hpZ.hm MQ() {
        return this.qMt;
    }
}
