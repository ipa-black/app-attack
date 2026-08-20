package com.bytedance.sdk.openadsdk.common;

import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.iMK;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.settings.HzH;
import com.bytedance.sdk.openadsdk.utils.lG;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
import org.json.JSONObject;
/* compiled from: ArbitrageLoadingStyle.java */
/* loaded from: classes2.dex */
public class cJ implements CQU.Qhi {
    private final SSWebView CJ;
    private String Gm;
    private boolean HzH;
    private int MQ;
    private final tP Qhi;
    private float Sf;
    private long WAv;
    private WebView ac;
    private final boolean cJ;
    private ArbitrageLoadingLayout fl;
    private int hm;
    private long hpZ;
    private int iMK;
    private boolean pA;
    private String Tgh = "landingpage";
    private final Handler ROR = new CQU(iMK.cJ().getLooper(), this);
    private final AtomicBoolean zc = new AtomicBoolean(false);
    private Pattern ABk = null;
    private long tP = -1;
    private final List<Integer> kYc = new ArrayList();

    public cJ(tP tPVar, SSWebView sSWebView, String str, boolean z) {
        this.Qhi = tPVar;
        this.CJ = sSWebView;
        this.cJ = z;
        Qhi();
    }

    public void Qhi(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.Tgh = str;
    }

    private void Qhi() {
        SSWebView sSWebView = this.CJ;
        if (sSWebView != null) {
            this.ac = sSWebView.getWebView();
            View arbitrageLoadingView = this.CJ.getArbitrageLoadingView();
            if (arbitrageLoadingView instanceof ArbitrageLoadingLayout) {
                this.fl = (ArbitrageLoadingLayout) arbitrageLoadingView;
            }
        }
        this.hm = HzH.YD().IC();
        this.Sf = HzH.YD().cJP();
    }

    public void Qhi(WebView webView, String str, boolean z) {
        if (z && Tgh()) {
            CJ();
        }
    }

    public void Qhi(WebView webView, String str) {
        tP tPVar = this.Qhi;
        if (tPVar == null || !com.bytedance.sdk.component.widget.cJ.Qhi(tPVar.WAv().Qhi(), str)) {
            return;
        }
        this.iMK++;
        com.bytedance.sdk.component.utils.Sf.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.cJ.1
            @Override // java.lang.Runnable
            public void run() {
                if (cJ.this.Tgh()) {
                    cJ.this.CJ();
                }
            }
        });
    }

    public void Qhi(WebView webView, int i) {
        ArbitrageLoadingLayout arbitrageLoadingLayout = this.fl;
        if (arbitrageLoadingLayout != null) {
            arbitrageLoadingLayout.Qhi(i);
        }
        if (this.HzH) {
            if (Qhi(i, 30)) {
                Qhi(30, webView);
            }
            if (Qhi(i, 50)) {
                Qhi(50, webView);
            }
            if (Qhi(i, 70)) {
                Qhi(70, webView);
            }
        }
        if (this.fl == null || i != 100) {
            return;
        }
        Qhi(1);
    }

    public void cJ(WebView webView, String str, boolean z) {
        if (!z || this.fl == null) {
            return;
        }
        Qhi(1);
    }

    public void ac(WebView webView, String str, boolean z) {
        this.kYc.clear();
        this.HzH = z;
        if (z) {
            this.pA = true;
        }
        this.MQ = ROR();
    }

    private void cJ() {
        Handler handler = this.ROR;
        if (handler != null) {
            handler.sendEmptyMessageDelayed(1, this.hm);
        }
    }

    private void ac() {
        Handler handler = this.ROR;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void CJ() {
        if (lG.fl()) {
            fl();
        } else {
            com.bytedance.sdk.component.utils.Sf.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.cJ.2
                @Override // java.lang.Runnable
                public void run() {
                    cJ.this.fl();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fl() {
        this.pA = false;
        if (this.zc.getAndSet(true)) {
            return;
        }
        this.WAv = SystemClock.elapsedRealtime();
        this.hpZ = System.currentTimeMillis();
        Sf();
        WebView webView = this.ac;
        if (webView != null) {
            this.Gm = webView.getUrl();
        }
        ArbitrageLoadingLayout arbitrageLoadingLayout = this.fl;
        if (arbitrageLoadingLayout == null) {
            return;
        }
        arbitrageLoadingLayout.setVisibility(0);
        this.fl.Qhi(this.Qhi);
        this.fl.Qhi();
        this.fl.setAlpha(this.Sf);
        this.fl.setOnTouchListener(new View.OnTouchListener() { // from class: com.bytedance.sdk.openadsdk.common.cJ.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return true;
            }
        });
        ac();
        cJ();
    }

    private void Qhi(final int i) {
        com.bytedance.sdk.component.utils.Sf.cJ().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.common.cJ.4
            @Override // java.lang.Runnable
            public void run() {
                if (cJ.this.fl != null) {
                    cJ.this.zc.set(false);
                    cJ.this.fl.Qhi(cJ.this.Qhi, cJ.this.Tgh, i, cJ.this.Gm, cJ.this.WAv, cJ.this.pA, cJ.this.iMK, cJ.this.hpZ);
                    cJ.this.iMK = 0;
                }
            }
        });
        ac();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Tgh() {
        return ROR() > 0 && !this.zc.get();
    }

    private int ROR() {
        try {
            return this.ac.copyBackForwardList().getCurrentIndex() + 1;
        } catch (Throwable unused) {
            return 0;
        }
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public void Qhi(Message message) {
        if (message.what == 1) {
            Qhi(0);
        }
    }

    public void Qhi(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            this.tP = SystemClock.elapsedRealtime();
        }
    }

    private boolean Qhi(int i, int i2) {
        if (i < i2 || this.kYc.contains(Integer.valueOf(i2)) || this.MQ < 2) {
            return false;
        }
        this.kYc.add(Integer.valueOf(i2));
        return true;
    }

    private void Qhi(int i, WebView webView) {
        new Object[]{Integer.valueOf(i)};
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("load_progress", i);
            jSONObject.put("progress_timestamp", System.currentTimeMillis());
            jSONObject.put("arbi_current_url", webView.getUrl());
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.cJ.ac.ac(this.Qhi, this.Tgh, jSONObject);
    }

    private void Sf() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("loading_show_interval", SystemClock.elapsedRealtime() - this.tP);
            jSONObject.put("loading_show_timestamp", this.hpZ);
            WebView webView = this.ac;
            jSONObject.put("arbi_current_url", webView != null ? webView.getUrl() : "");
        } catch (Throwable unused) {
        }
        com.bytedance.sdk.openadsdk.cJ.ac.cJ(this.Qhi, this.Tgh, jSONObject);
    }
}
