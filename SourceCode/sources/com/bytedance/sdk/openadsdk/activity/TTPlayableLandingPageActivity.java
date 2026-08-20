package com.bytedance.sdk.openadsdk.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import androidx.core.view.ViewCompat;
import com.bykv.vk.openvk.preload.falconx.loader.ILoader;
import com.bykv.vk.openvk.preload.geckox.model.WebResourceResponseModel;
import com.bytedance.sdk.component.adexpress.CJ.Eh;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.component.utils.MQ;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.WAv.Sf;
import com.bytedance.sdk.openadsdk.cJ.Gm;
import com.bytedance.sdk.openadsdk.cJ.ac;
import com.bytedance.sdk.openadsdk.cJ.kYc;
import com.bytedance.sdk.openadsdk.cJ.zc;
import com.bytedance.sdk.openadsdk.common.TTAdDislikeToast;
import com.bytedance.sdk.openadsdk.core.CQU;
import com.bytedance.sdk.openadsdk.core.Dww;
import com.bytedance.sdk.openadsdk.core.HzH;
import com.bytedance.sdk.openadsdk.core.NFd;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGProgressBar;
import com.bytedance.sdk.openadsdk.core.customview.PAGRelativeLayout;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.core.lG;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.widget.PlayableLandingBackupLayout;
import com.bytedance.sdk.openadsdk.core.widget.PlayableLoadingView;
import com.bytedance.sdk.openadsdk.core.widget.ShadowImageView;
import com.bytedance.sdk.openadsdk.core.widget.ShadowTextView;
import com.bytedance.sdk.openadsdk.hpZ.Sf;
import com.bytedance.sdk.openadsdk.hpZ.hm;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.google.android.material.badge.BadgeDrawable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class TTPlayableLandingPageActivity extends TTBaseActivity implements CQU.Qhi, Sf, com.bytedance.sdk.openadsdk.core.cJ.fl {
    private static final Sf.Qhi MND = new Sf.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.1
        @Override // com.bytedance.sdk.openadsdk.hpZ.Sf.Qhi
        public void Qhi(String str, String str2, Throwable th) {
            ABk.Qhi(str, str2, th);
        }
    };
    private Context ABk;
    private String Dww;
    private int EBS;
    private hm FQ;
    private ShadowTextView Gm;
    private PlayableLandingBackupLayout HzH;
    private NFd MQ;
    private boolean NFd;
    private ILoader PAe;
    com.bytedance.sdk.openadsdk.core.CQU Qhi;
    private RelativeLayout WAv;
    private boolean aP;
    private String bxS;
    TTAdDislikeToast cJ;
    private int es;
    private SSWebView fl;
    private PlayableLoadingView hpZ;
    private int iMK;
    private zc jPH;
    private String kYc;
    private String lG;
    private PAGProgressBar pA;
    private tP pM;
    private NFd qMt;
    private com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl sDy;
    private String tP;
    private com.bytedance.sdk.openadsdk.cJ.ac.Tgh xyz;
    private int yN;
    private ShadowImageView zc;
    private boolean Tgh = true;
    private boolean Sf = false;
    private boolean hm = true;
    final AtomicBoolean ac = new AtomicBoolean(false);
    private final String CQU = "embeded_ad";
    private final CQU Eh = new CQU(Looper.getMainLooper(), this);
    private final AtomicBoolean lB = new AtomicBoolean(false);
    private final AtomicInteger Jma = new AtomicInteger(0);
    private final AtomicInteger js = new AtomicInteger(0);
    private final AtomicInteger zn = new AtomicInteger(0);
    private boolean ip = false;
    protected com.bytedance.sdk.openadsdk.WAv.fl CJ = new com.bytedance.sdk.openadsdk.WAv.fl() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.7
        @Override // com.bytedance.sdk.openadsdk.WAv.fl
        public void Qhi() {
            if (!TTPlayableLandingPageActivity.this.isFinishing() && bxS.ROR(TTPlayableLandingPageActivity.this.pM) && bxS.hm(TTPlayableLandingPageActivity.this.pM)) {
                TTPlayableLandingPageActivity.this.Eh.removeMessages(2);
                TTPlayableLandingPageActivity.this.Eh.sendMessage(TTPlayableLandingPageActivity.this.Qhi(1, 0));
            }
        }

        @Override // com.bytedance.sdk.openadsdk.WAv.fl
        public void cJ() {
            if (bxS.ROR(TTPlayableLandingPageActivity.this.pM) && bxS.Sf(TTPlayableLandingPageActivity.this.pM)) {
                TTPlayableLandingPageActivity.this.Eh.sendMessageDelayed(TTPlayableLandingPageActivity.this.Qhi(0, 0), 1000L);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.WAv.fl
        public void Qhi(int i) {
            if (!bxS.ROR(TTPlayableLandingPageActivity.this.pM) || TTPlayableLandingPageActivity.this.hpZ == null) {
                return;
            }
            TTPlayableLandingPageActivity.this.hpZ.setProgress(i);
        }
    };
    private int dIT = 1;

    /* JADX INFO: Access modifiers changed from: private */
    public Message Qhi(int i, int i2) {
        Message obtain = Message.obtain();
        obtain.what = 2;
        obtain.arg1 = i;
        if (i == 3) {
            obtain.arg2 = i2;
        }
        return obtain;
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!iMK.fl()) {
            finish();
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        try {
            requestWindowFeature(1);
            getWindow().addFlags(1024);
            getWindow().addFlags(16777216);
            HzH.cJ(this);
        } catch (Throwable unused) {
        }
        Qhi(bundle);
        tP tPVar = this.pM;
        if (tPVar == null) {
            return;
        }
        int WAv = bxS.WAv(tPVar);
        if (WAv == 0) {
            setRequestedOrientation(14);
        } else if (WAv == 1) {
            setRequestedOrientation(1);
        } else if (WAv == 2) {
            setRequestedOrientation(0);
            this.dIT = 2;
        }
        this.ABk = this;
        try {
            setContentView(CJ());
            hm();
            Tgh();
            Qhi();
            Gm();
            ROR();
            if (!TextUtils.isEmpty(this.lG)) {
                this.PAe = com.bytedance.sdk.openadsdk.fl.cJ.Qhi().cJ();
                int Qhi = com.bytedance.sdk.openadsdk.fl.cJ.Qhi().Qhi(this.PAe, this.lG);
                this.es = Qhi;
                this.yN = Qhi > 0 ? 2 : 0;
            }
            Sf();
            com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh = this.xyz;
            if (tgh != null) {
                tgh.ROR();
            }
            ac.Qhi.Qhi(SystemClock.elapsedRealtime() - elapsedRealtime, this.pM, "embeded_ad", this.PAe, this.lG);
        } catch (Throwable unused2) {
            finish();
        }
    }

    private View CJ() {
        PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(this);
        pAGFrameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.fl = new SSWebView(this);
        this.fl.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.fl.setVisibility(4);
        this.pA = new PAGProgressBar(this, null, 16973855);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, zn.cJ(this, 3.0f));
        layoutParams.gravity = 49;
        this.pA.setLayoutParams(layoutParams);
        this.pA.setProgress(1);
        this.pA.setProgressDrawable(com.bytedance.sdk.openadsdk.utils.hm.Qhi(this, "tt_browser_progress_style"));
        this.hpZ = new PlayableLoadingView(this);
        this.hpZ.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.hpZ.setClickable(true);
        this.hpZ.setFocusable(true);
        this.HzH = new PlayableLandingBackupLayout(this);
        this.HzH.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.zc = new ShadowImageView(this);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(zn.cJ(this, 28.0f), zn.cJ(this, 28.0f));
        layoutParams2.leftMargin = zn.cJ(this, 12.0f);
        layoutParams2.topMargin = zn.cJ(this, 20.0f);
        this.zc.setLayoutParams(layoutParams2);
        this.zc.setScaleType(ImageView.ScaleType.CENTER);
        this.zc.setImageDrawable(com.bytedance.sdk.openadsdk.utils.hm.Qhi(this, "tt_unmute_wrapper"));
        this.Gm = new ShadowTextView(this);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, zn.cJ(this, 28.0f));
        layoutParams3.gravity = BadgeDrawable.TOP_END;
        layoutParams3.leftMargin = zn.cJ(this, 16.0f);
        layoutParams3.rightMargin = zn.cJ(this, 80.0f);
        layoutParams3.topMargin = zn.cJ(this, 20.0f);
        this.Gm.setLayoutParams(layoutParams3);
        this.Gm.setGravity(17);
        this.Gm.setText(MQ.Qhi(this, "tt_reward_feedback"));
        this.Gm.setTextColor(-1);
        this.Gm.setTextSize(14.0f);
        this.WAv = new PAGRelativeLayout(this);
        FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(zn.cJ(this, 28.0f), zn.cJ(this, 28.0f));
        layoutParams4.gravity = BadgeDrawable.TOP_END;
        layoutParams4.topMargin = zn.cJ(this, 20.0f);
        layoutParams4.rightMargin = zn.cJ(this, 24.0f);
        this.WAv.setLayoutParams(layoutParams4);
        this.WAv.setBackground(com.bytedance.sdk.openadsdk.utils.hm.Qhi(this, "tt_mute_btn_bg"));
        this.WAv.setGravity(17);
        this.WAv.setVisibility(8);
        PAGImageView pAGImageView = new PAGImageView(this);
        pAGImageView.setLayoutParams(new RelativeLayout.LayoutParams(zn.cJ(this, 12.0f), zn.cJ(this, 12.0f)));
        pAGImageView.setImageDrawable(MQ.ac(this, "tt_video_close_drawable"));
        pAGImageView.setVisibility(0);
        this.WAv.addView(pAGImageView);
        pAGFrameLayout.addView(this.fl);
        pAGFrameLayout.addView(this.pA);
        pAGFrameLayout.addView(this.HzH);
        pAGFrameLayout.addView(this.hpZ);
        pAGFrameLayout.addView(this.zc);
        pAGFrameLayout.addView(this.Gm);
        pAGFrameLayout.addView(this.WAv);
        return pAGFrameLayout;
    }

    private void fl() {
        if (this.FQ != null) {
            return;
        }
        if (com.bytedance.sdk.openadsdk.core.hm.cJ().HzH()) {
            com.bytedance.sdk.openadsdk.hpZ.Sf.Qhi(MND);
        }
        com.bytedance.sdk.openadsdk.hpZ.Qhi qhi = new com.bytedance.sdk.openadsdk.hpZ.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.8
            @Override // com.bytedance.sdk.openadsdk.hpZ.Qhi
            public void Qhi(int i, String str) {
                super.Qhi(i, str);
                if (bxS.hpZ(TTPlayableLandingPageActivity.this.pM)) {
                    TTPlayableLandingPageActivity.this.Eh.sendMessage(TTPlayableLandingPageActivity.this.Qhi(3, bxS.Qhi(i)));
                    TTPlayableLandingPageActivity.this.WAv();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.hpZ.Qhi
            public com.bytedance.sdk.openadsdk.hpZ.fl Qhi() {
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

            @Override // com.bytedance.sdk.openadsdk.hpZ.Qhi
            public void Qhi(JSONObject jSONObject) {
                com.bytedance.sdk.openadsdk.cJ.ac.cJ(TTPlayableLandingPageActivity.this.pM, "embeded_ad", "playable_track", jSONObject);
            }
        };
        com.bytedance.sdk.openadsdk.hpZ.ac acVar = new com.bytedance.sdk.openadsdk.hpZ.ac() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.9
            @Override // com.bytedance.sdk.openadsdk.hpZ.ac
            public void Qhi(String str, JSONObject jSONObject) {
                TTPlayableLandingPageActivity.this.MQ.Qhi(str, jSONObject);
            }
        };
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cid", this.kYc);
            jSONObject.put("log_extra", this.tP);
            this.FQ = hm.Qhi(getApplicationContext(), this.fl.getWebView(), acVar, qhi).Tgh(this.bxS).fl(com.bytedance.sdk.openadsdk.common.Qhi.Qhi(HzH.Qhi())).Qhi(com.bytedance.sdk.openadsdk.common.Qhi.Qhi()).ac(jSONObject).cJ(com.bytedance.sdk.openadsdk.common.Qhi.fl()).Qhi("sdkEdition", com.bytedance.sdk.openadsdk.common.Qhi.ac()).CJ(com.bytedance.sdk.openadsdk.common.Qhi.CJ()).ac(false).Qhi(this.ip).Qhi(bxS.ABk(this.pM)).cJ(bxS.ABk(this.pM)).CJ(true);
        } catch (Throwable unused) {
        }
        if (this.FQ == null) {
            ABk.Qhi("Pangle", "new PlayablePlugin Object failed, mPlayablePlugin is null");
            return;
        }
        if (!TextUtils.isEmpty(bxS.CJ(this.pM))) {
            this.FQ.ac(bxS.CJ(this.pM));
        }
        Set<String> Gm = this.FQ.Gm();
        final WeakReference weakReference = new WeakReference(this.FQ);
        for (String str : Gm) {
            if (!"subscribe_app_ad".equals(str) && !"adInfo".equals(str) && !"webview_time_track".equals(str) && !"download_app_ad".equals(str)) {
                this.MQ.Qhi().Qhi(str, new com.bytedance.sdk.component.Qhi.Tgh<JSONObject, JSONObject>() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.10
                    @Override // com.bytedance.sdk.component.Qhi.Tgh
                    public JSONObject Qhi(JSONObject jSONObject2, com.bytedance.sdk.component.Qhi.ROR ror) {
                        try {
                            hm hmVar = (hm) weakReference.get();
                            if (hmVar == null) {
                                return null;
                            }
                            return hmVar.CJ(Qhi(), jSONObject2);
                        } catch (Throwable unused2) {
                            return null;
                        }
                    }
                });
            }
        }
    }

    private void Tgh() {
        if (this.pM.ip() == 4) {
            this.sDy = com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.Tgh.Qhi(this.ABk, this.pM, "interaction");
        }
    }

    private void ROR() {
        int i = HzH.CJ().Eh(String.valueOf(this.pM.Hy())).HzH;
        if (i >= 0) {
            this.Eh.sendEmptyMessageDelayed(1, i * 1000);
        } else {
            zn.Qhi((View) this.WAv, 0);
        }
    }

    private void Qhi(Bundle bundle) {
        Intent intent = getIntent();
        if (intent != null) {
            this.iMK = intent.getIntExtra("sdk_version", 1);
            this.kYc = intent.getStringExtra("adid");
            this.tP = intent.getStringExtra("log_extra");
            this.EBS = intent.getIntExtra("source", -1);
            this.aP = intent.getBooleanExtra("ad_pending_download", false);
            this.bxS = intent.getStringExtra("url");
            this.lG = intent.getStringExtra("gecko_id");
            this.Dww = intent.getStringExtra("web_title");
            if (com.bytedance.sdk.openadsdk.multipro.cJ.ac()) {
                String stringExtra = intent.getStringExtra(TTAdConstant.MULTI_PROCESS_MATERIALMETA);
                if (stringExtra != null) {
                    try {
                        this.pM = com.bytedance.sdk.openadsdk.core.cJ.Qhi(new JSONObject(stringExtra));
                    } catch (Exception e2) {
                        ABk.Qhi("TTPWPActivity", "TTPlayableLandingPageActivity - onCreate MultiGlobalInfo : ", e2);
                    }
                }
            } else {
                this.pM = Dww.Qhi().cJ();
                Dww.Qhi().Tgh();
            }
        }
        if (bundle != null) {
            try {
                this.iMK = bundle.getInt("sdk_version", 1);
                this.kYc = bundle.getString("adid");
                this.tP = bundle.getString("log_extra");
                this.EBS = bundle.getInt("source", -1);
                this.aP = bundle.getBoolean("ad_pending_download", false);
                this.bxS = bundle.getString("url");
                this.Dww = bundle.getString("web_title");
                String string = bundle.getString("material_meta", null);
                if (!TextUtils.isEmpty(string)) {
                    this.pM = com.bytedance.sdk.openadsdk.core.cJ.Qhi(new JSONObject(string));
                }
            } catch (Throwable unused) {
            }
        }
        if (this.pM == null) {
            ABk.Qhi("TTPWPActivity", "material is null, no data to display");
            finish();
            return;
        }
        try {
            this.ip = HzH.CJ().HzH(this.pM.lB().getCodeId());
        } catch (Throwable th) {
            ABk.Qhi("TTPWPActivity", th.getMessage());
        }
    }

    private void Sf() {
        SSWebView sSWebView = this.fl;
        if (sSWebView == null) {
            return;
        }
        sSWebView.setLandingPage(true);
        this.fl.setTag("landingpage");
        this.fl.setMaterialMeta(this.pM.ne());
        zc Qhi = new zc(this.pM, this.fl.getWebView(), new Gm() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.11
            @Override // com.bytedance.sdk.openadsdk.cJ.Gm
            public void Qhi(int i) {
                ac.Qhi.Qhi(TTPlayableLandingPageActivity.this.es, TTPlayableLandingPageActivity.this.zn.get(), TTPlayableLandingPageActivity.this.js.get(), TTPlayableLandingPageActivity.this.Jma.get() - TTPlayableLandingPageActivity.this.js.get(), TTPlayableLandingPageActivity.this.pM, "embeded_ad", i);
            }
        }, this.yN).Qhi(true);
        this.jPH = Qhi;
        Qhi.Qhi("embeded_ad");
        this.jPH.Qhi(this.xyz);
        this.jPH.Qhi(this.FQ);
        this.fl.setWebViewClient(new com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh(this.ABk, this.MQ, this.kYc, this.jPH, true) { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.12
            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                super.onPageFinished(webView, str);
                TTPlayableLandingPageActivity.this.Sf = true;
                if (TTPlayableLandingPageActivity.this.isFinishing()) {
                    return;
                }
                if (TTPlayableLandingPageActivity.this.FQ != null) {
                    TTPlayableLandingPageActivity.this.FQ.Sf(str);
                }
                try {
                    TTPlayableLandingPageActivity.this.CJ.cJ();
                } catch (Throwable unused) {
                }
                try {
                    if (TTPlayableLandingPageActivity.this.pA != null) {
                        TTPlayableLandingPageActivity.this.pA.setVisibility(8);
                    }
                    if (TTPlayableLandingPageActivity.this.Tgh) {
                        TTPlayableLandingPageActivity.this.WAv();
                        TTPlayableLandingPageActivity.this.Qhi("py_loading_success");
                        if (this.ac != null) {
                            this.ac.cJ(true);
                        }
                    }
                } catch (Throwable unused2) {
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                if (TTPlayableLandingPageActivity.this.bxS != null && webResourceRequest != null && webResourceRequest.getUrl() != null && TTPlayableLandingPageActivity.this.bxS.equals(webResourceRequest.getUrl().toString())) {
                    TTPlayableLandingPageActivity.this.Tgh = false;
                }
                if (TTPlayableLandingPageActivity.this.FQ != null && webResourceRequest != null) {
                    try {
                        TTPlayableLandingPageActivity.this.FQ.Qhi(webResourceRequest.isForMainFrame(), webResourceRequest.getUrl().toString(), webResourceResponse.getStatusCode());
                    } catch (Throwable unused) {
                    }
                }
                super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView, webResourceRequest, webResourceError);
                TTPlayableLandingPageActivity.this.Tgh = false;
                if (TTPlayableLandingPageActivity.this.FQ == null || webResourceError == null || webResourceRequest == null) {
                    return;
                }
                TTPlayableLandingPageActivity.this.FQ.Qhi(webResourceError.getErrorCode(), String.valueOf(webResourceError.getDescription()), String.valueOf(webResourceRequest.getUrl()));
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                super.onReceivedError(webView, i, str, str2);
            }

            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.Tgh, android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                try {
                    if (TTPlayableLandingPageActivity.this.FQ != null) {
                        TTPlayableLandingPageActivity.this.FQ.hm(str);
                    }
                    if (!TextUtils.isEmpty(TTPlayableLandingPageActivity.this.lG)) {
                        TTPlayableLandingPageActivity.this.Jma.incrementAndGet();
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    WebResourceResponseModel Qhi2 = com.bytedance.sdk.openadsdk.fl.cJ.Qhi().Qhi(TTPlayableLandingPageActivity.this.PAe, TTPlayableLandingPageActivity.this.lG, str);
                    long currentTimeMillis2 = System.currentTimeMillis();
                    if (TTPlayableLandingPageActivity.this.xyz != null) {
                        Eh.Qhi Qhi3 = Eh.Qhi(str);
                        int i = (Qhi2 == null || Qhi2.getWebResourceResponse() == null) ? 2 : 1;
                        if (Qhi3 == Eh.Qhi.HTML) {
                            TTPlayableLandingPageActivity.this.xyz.Qhi(str, currentTimeMillis, currentTimeMillis2, i);
                        } else if (Qhi3 == Eh.Qhi.JS) {
                            TTPlayableLandingPageActivity.this.xyz.cJ(str, currentTimeMillis, currentTimeMillis2, i);
                        }
                    }
                    if (Qhi2 != null && Qhi2.getWebResourceResponse() != null) {
                        TTPlayableLandingPageActivity.this.js.incrementAndGet();
                        if (TTPlayableLandingPageActivity.this.FQ != null) {
                            TTPlayableLandingPageActivity.this.FQ.WAv(str);
                        }
                        return Qhi2.getWebResourceResponse();
                    }
                    if (Qhi2 != null && Qhi2.getMsg() == 2) {
                        TTPlayableLandingPageActivity.this.zn.incrementAndGet();
                    }
                    return super.shouldInterceptRequest(webView, str);
                } catch (Exception unused) {
                    return super.shouldInterceptRequest(webView, str);
                }
            }
        });
        Qhi(this.fl);
        com.bytedance.sdk.openadsdk.utils.tP.Qhi(this.fl, this.bxS);
        hm hmVar = this.FQ;
        if (hmVar != null) {
            hmVar.ROR(this.bxS);
        }
        this.fl.setWebChromeClient(new com.bytedance.sdk.openadsdk.core.widget.Qhi.fl(this.MQ, this.jPH) { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.13
            @Override // com.bytedance.sdk.openadsdk.core.widget.Qhi.fl, android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                super.onProgressChanged(webView, i);
                if (TTPlayableLandingPageActivity.this.isFinishing()) {
                    return;
                }
                try {
                    TTPlayableLandingPageActivity.this.CJ.Qhi(i);
                } catch (Throwable unused) {
                }
                if (TTPlayableLandingPageActivity.this.pA != null) {
                    if (i == 100) {
                        TTPlayableLandingPageActivity.this.Sf = true;
                        TTPlayableLandingPageActivity.this.pA.setVisibility(8);
                        TTPlayableLandingPageActivity.this.WAv();
                        return;
                    }
                    TTPlayableLandingPageActivity.this.pA.setProgress(i);
                }
            }
        });
        this.fl.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.14
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                if (TTPlayableLandingPageActivity.this.jPH != null) {
                    TTPlayableLandingPageActivity.this.jPH.Qhi(motionEvent);
                    return false;
                }
                return false;
            }
        });
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        if (bundle == null) {
            bundle = new Bundle();
        }
        try {
            tP tPVar = this.pM;
            bundle.putString("material_meta", tPVar != null ? tPVar.mZ().toString() : null);
            bundle.putInt("sdk_version", this.iMK);
            bundle.putString("adid", this.kYc);
            bundle.putString("log_extra", this.tP);
            bundle.putInt("source", this.EBS);
            bundle.putBoolean("ad_pending_download", this.aP);
            bundle.putString("url", this.bxS);
            bundle.putString("web_title", this.Dww);
            bundle.putString("event_tag", "embeded_ad");
        } catch (Throwable unused) {
        }
        super.onSaveInstanceState(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    private void hm() {
        RelativeLayout relativeLayout = this.WAv;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (TTPlayableLandingPageActivity.this.xyz != null) {
                        TTPlayableLandingPageActivity.this.xyz.Sf();
                    }
                    TTPlayableLandingPageActivity.this.Eh.sendMessage(TTPlayableLandingPageActivity.this.Qhi(4, 0));
                    TTPlayableLandingPageActivity.this.Qhi("playable_close");
                    TTPlayableLandingPageActivity.this.finish();
                }
            });
        }
        ShadowTextView shadowTextView = this.Gm;
        if (shadowTextView != null) {
            shadowTextView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTPlayableLandingPageActivity.this.cJ();
                }
            });
        }
        ShadowImageView shadowImageView = this.zc;
        if (shadowImageView != null) {
            shadowImageView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTPlayableLandingPageActivity tTPlayableLandingPageActivity = TTPlayableLandingPageActivity.this;
                    tTPlayableLandingPageActivity.ip = !tTPlayableLandingPageActivity.ip;
                    TTPlayableLandingPageActivity tTPlayableLandingPageActivity2 = TTPlayableLandingPageActivity.this;
                    tTPlayableLandingPageActivity2.ac(tTPlayableLandingPageActivity2.ip);
                    if (TTPlayableLandingPageActivity.this.FQ != null) {
                        TTPlayableLandingPageActivity.this.FQ.Qhi(TTPlayableLandingPageActivity.this.ip);
                    }
                }
            });
        }
        this.fl.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
        zn.Qhi((View) this.fl, 4);
        this.hpZ.cJ(this.pM, this.dIT);
    }

    protected void Qhi() {
        if (this.hpZ == null) {
            return;
        }
        tP tPVar = this.pM;
        if (tPVar != null && !bxS.ROR(tPVar)) {
            this.hpZ.ac();
            return;
        }
        this.hpZ.cJ(this.pM, this.dIT);
        if (this.hpZ.getDownloadButton() != null) {
            com.bytedance.sdk.openadsdk.core.cJ.Qhi qhi = new com.bytedance.sdk.openadsdk.core.cJ.Qhi(this, this.pM, "embeded_ad", this.EBS) { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.5
                @Override // com.bytedance.sdk.openadsdk.core.cJ.Qhi, com.bytedance.sdk.openadsdk.core.cJ.cJ, com.bytedance.sdk.openadsdk.core.cJ.ac
                public void Qhi(View view, float f2, float f3, float f4, float f5, SparseArray<ac.Qhi> sparseArray, boolean z) {
                    if (this.Tgh == null || this.Tgh.tP() != 1 || z) {
                        super.Qhi(view, f2, f3, f4, f5, sparseArray, z);
                        TTPlayableLandingPageActivity.this.aP = true;
                        TTPlayableLandingPageActivity.this.NFd = true;
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("playable_url", TTPlayableLandingPageActivity.this.bxS);
                        } catch (JSONException e2) {
                            ABk.Qhi("TTPWPActivity", "onClick JSON ERROR", e2);
                        }
                        com.bytedance.sdk.openadsdk.cJ.ac.cJ(TTPlayableLandingPageActivity.this.pM, this.ROR, "click_playable_download_button_loading", jSONObject);
                    }
                }
            };
            qhi.Qhi(this.sDy);
            this.hpZ.getDownloadButton().setOnClickListener(qhi);
        }
        if (bxS.hm(this.pM)) {
            this.Eh.sendMessageDelayed(Qhi(2, bxS.Qhi(2)), bxS.iMK(this.pM));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void WAv() {
        if (this.lB.getAndSet(true)) {
            return;
        }
        if (bxS.hpZ(this.pM) && (!this.Sf || !this.Tgh)) {
            if (this.HzH == null || this.hpZ == null) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.cJ.Qhi qhi = new com.bytedance.sdk.openadsdk.core.cJ.Qhi(this, this.pM, "embeded_ad", this.EBS);
            qhi.Qhi(this.sDy);
            this.HzH.Qhi(this.pM, "embeded_ad", qhi);
            zn.Qhi((View) this.HzH, 0);
            zn.Qhi((View) this.hpZ, 8);
            zn.Qhi((View) this.zc, 8);
            return;
        }
        SSWebView sSWebView = this.fl;
        if (sSWebView == null || this.hpZ == null) {
            return;
        }
        zn.Qhi((View) sSWebView, 0);
        zn.Qhi((View) this.hpZ, 8);
    }

    private void Qhi(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.widget.Qhi.ac.Qhi(this.ABk).Qhi(false).cJ(false).Qhi(sSWebView.getWebView());
        sSWebView.setUserAgentString(com.bytedance.sdk.openadsdk.utils.HzH.Qhi(sSWebView.getWebView(), this.iMK));
        sSWebView.setMixedContentMode(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(String str) {
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(System.currentTimeMillis(), this.pM, "embeded_ad", str);
    }

    private void Gm() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.pM);
        this.xyz = new kYc(3, "embeded_ad", this.pM);
        this.MQ = new NFd(this);
        this.MQ.cJ(this.fl).Qhi(this.pM).Qhi(arrayList).ac(this.kYc).CJ(this.tP).cJ("embeded_ad").cJ(this.EBS).Qhi(this).Qhi(this.xyz).Qhi(this.CJ).Qhi(this.fl).fl(this.pM.bIO());
        fl();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh = this.xyz;
        if (tgh != null) {
            tgh.WAv();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.activity.TTBaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        NFd nFd = this.MQ;
        if (nFd != null) {
            nFd.WAv();
            SSWebView sSWebView = this.fl;
            if (sSWebView != null) {
                this.MQ.cJ(sSWebView.getVisibility() == 0);
            }
        }
        NFd nFd2 = this.qMt;
        if (nFd2 != null) {
            nFd2.WAv();
        }
        hm hmVar = this.FQ;
        if (hmVar != null) {
            hmVar.cJ(true);
        }
        zc zcVar = this.jPH;
        if (zcVar != null) {
            zcVar.ROR();
        }
        DeviceUtils.AudioInfoReceiver.Qhi((com.bytedance.sdk.openadsdk.WAv.Sf) this);
        if (DeviceUtils.ROR() == 0) {
            this.ip = true;
        }
        ac(this.ip);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        NFd nFd = this.MQ;
        if (nFd != null) {
            nFd.cJ(false);
        }
        hm hmVar = this.FQ;
        if (hmVar != null) {
            hmVar.Qhi(true);
            this.FQ.cJ(false);
        }
        DeviceUtils.AudioInfoReceiver.cJ((com.bytedance.sdk.openadsdk.WAv.Sf) this);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh = this.xyz;
        if (tgh != null) {
            tgh.hm();
        }
        zc zcVar = this.jPH;
        if (zcVar != null) {
            zcVar.Sf();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh = this.xyz;
        if (tgh != null) {
            tgh.Sf();
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh = this.xyz;
        if (tgh != null) {
            tgh.Qhi(true);
            this.xyz.zc();
        }
        this.Eh.removeCallbacksAndMessages(null);
        try {
            if (getWindow() != null) {
                ((ViewGroup) getWindow().getDecorView()).removeAllViews();
            }
        } catch (Throwable unused) {
        }
        if (!TextUtils.isEmpty(this.lG)) {
            ac.Qhi.Qhi(this.js.get(), this.Jma.get(), this.pM);
        }
        com.bytedance.sdk.openadsdk.fl.cJ.Qhi().Qhi(this.PAe);
        SSWebView sSWebView = this.fl;
        if (sSWebView != null) {
            lG.Qhi(sSWebView.getWebView());
            this.fl.zc();
        }
        this.fl = null;
        NFd nFd = this.MQ;
        if (nFd != null) {
            nFd.Gm();
        }
        NFd nFd2 = this.qMt;
        if (nFd2 != null) {
            nFd2.Gm();
        }
        hm hmVar = this.FQ;
        if (hmVar != null) {
            hmVar.js();
        }
        zc zcVar = this.jPH;
        if (zcVar != null) {
            zcVar.ac(true);
        }
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public void Qhi(Message message) {
        int i = message.what;
        if (i == 1) {
            zn.Qhi((View) this.WAv, 0);
        } else if (i != 2) {
        } else {
            PlayableLoadingView playableLoadingView = this.hpZ;
            if (playableLoadingView == null || !playableLoadingView.CJ()) {
                int i2 = message.arg1;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("remove_loading_page_type", message.arg1);
                    if (message.arg2 != 0) {
                        jSONObject.put("remove_loading_page_reason", message.arg2);
                    }
                    jSONObject.put("playable_url", this.bxS);
                    PlayableLoadingView playableLoadingView2 = this.hpZ;
                    jSONObject.put("duration", playableLoadingView2 != null ? playableLoadingView2.getDisplayDuration() : 0L);
                } catch (JSONException e2) {
                    ABk.Qhi("TTPWPActivity", "handleMsg json error", e2);
                }
                com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.pM, "embeded_ad", "remove_loading_page", jSONObject);
                this.Eh.removeMessages(2);
                PlayableLoadingView playableLoadingView3 = this.hpZ;
                if (playableLoadingView3 != null) {
                    playableLoadingView3.ac();
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.cJ.fl
    public void cJ(boolean z) {
        com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.fl flVar;
        this.aP = true;
        this.NFd = z;
        if (!z) {
            try {
                Toast.makeText(this.ABk, "Download later", 0).show();
            } catch (Throwable unused) {
            }
        }
        if (!this.NFd || (flVar = this.sDy) == null) {
            return;
        }
        flVar.CJ();
    }

    protected void cJ() {
        if (this.pM == null || isFinishing()) {
            return;
        }
        if (this.ac.get()) {
            zc();
            return;
        }
        if (this.Qhi == null) {
            ac();
        }
        this.Qhi.Qhi(new CQU.Qhi() { // from class: com.bytedance.sdk.openadsdk.activity.TTPlayableLandingPageActivity.6
            @Override // com.bytedance.sdk.openadsdk.core.CQU.Qhi
            public void Qhi() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.CQU.Qhi
            public void Qhi(int i, String str) {
                if (TTPlayableLandingPageActivity.this.ac.get() || TextUtils.isEmpty(str)) {
                    return;
                }
                TTPlayableLandingPageActivity.this.ac.set(true);
                TTPlayableLandingPageActivity.this.ABk();
            }
        });
        com.bytedance.sdk.openadsdk.core.CQU cqu = this.Qhi;
        if (cqu != null) {
            cqu.Qhi();
        }
    }

    void ac() {
        if (this.pM != null) {
            this.Qhi = new com.bytedance.sdk.openadsdk.dislike.cJ(this, this.pM.EGK(), this.pM.VnT(), this.pM.mZ().toString(), "playable");
        }
        if (this.cJ == null) {
            this.cJ = new TTAdDislikeToast(this);
            ((FrameLayout) findViewById(16908290)).addView(this.cJ);
        }
    }

    private void zc() {
        TTAdDislikeToast tTAdDislikeToast = this.cJ;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.Qhi(TTAdDislikeToast.getDislikeTip());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ABk() {
        TTAdDislikeToast tTAdDislikeToast = this.cJ;
        if (tTAdDislikeToast != null) {
            tTAdDislikeToast.Qhi(TTAdDislikeToast.getDislikeSendTip());
        }
    }

    protected void ac(boolean z) {
        Drawable Qhi;
        try {
            this.ip = z;
            if (z) {
                Qhi = com.bytedance.sdk.openadsdk.utils.hm.Qhi(this.ABk, "tt_mute_wrapper");
            } else {
                Qhi = com.bytedance.sdk.openadsdk.utils.hm.Qhi(this.ABk, "tt_unmute_wrapper");
            }
            this.zc.setImageDrawable(Qhi);
            hm hmVar = this.FQ;
            if (hmVar != null) {
                hmVar.Qhi(z);
            }
        } catch (Exception e2) {
            ABk.Qhi("TTPWPActivity", e2.getMessage());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.WAv.Sf
    public void Qhi(int i) {
        ac(i <= 0);
    }
}
