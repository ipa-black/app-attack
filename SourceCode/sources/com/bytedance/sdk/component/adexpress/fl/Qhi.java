package com.bytedance.sdk.component.adexpress.fl;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.bytedance.sdk.component.adexpress.CJ.CQU;
import com.bytedance.sdk.component.adexpress.cJ.Sf;
import com.bytedance.sdk.component.adexpress.cJ.hm;
import com.bytedance.sdk.component.adexpress.cJ.iMK;
import com.bytedance.sdk.component.adexpress.cJ.pA;
import com.bytedance.sdk.component.adexpress.cJ.zc;
import com.bytedance.sdk.component.adexpress.theme.ThemeStatusBroadcastReceiver;
import com.bytedance.sdk.component.widget.SSWebView;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* compiled from: BaseWebViewRender.java */
/* loaded from: classes2.dex */
public abstract class Qhi implements com.bytedance.sdk.component.adexpress.Qhi, com.bytedance.sdk.component.adexpress.cJ.fl<SSWebView>, zc, com.bytedance.sdk.component.adexpress.theme.Qhi {
    private iMK ABk;
    private boolean Gm;
    protected JSONObject Qhi;
    private Context ROR;
    private String Sf;
    private volatile Sf WAv;
    protected SSWebView ac;
    protected boolean cJ;
    protected com.bytedance.sdk.component.adexpress.Qhi.ac.cJ fl;
    private String hm;
    private boolean iMK;
    private int pA;
    private hm zc;
    protected int CJ = 8;
    protected AtomicBoolean Tgh = new AtomicBoolean(false);
    private boolean hpZ = false;

    public abstract void ROR();

    /* JADX INFO: Access modifiers changed from: protected */
    public void WAv() {
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.fl
    public int ac() {
        return 0;
    }

    public abstract void cJ(int i);

    /* JADX INFO: Access modifiers changed from: protected */
    public void hm() {
    }

    public Qhi(Context context, iMK imk, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver) {
        this.Gm = false;
        this.ROR = context;
        this.ABk = imk;
        this.Sf = imk.CJ();
        themeStatusBroadcastReceiver.Qhi(this);
        if (com.bytedance.sdk.component.adexpress.fl.cJ()) {
            zc();
            return;
        }
        SSWebView ABk = ABk();
        this.ac = ABk;
        if (ABk == null) {
            Log.d("WebViewRender", "initWebView: create WebView");
            if (com.bytedance.sdk.component.adexpress.fl.Qhi() != null) {
                this.ac = new SSWebView(com.bytedance.sdk.component.adexpress.fl.Qhi());
                return;
            }
            return;
        }
        this.Gm = true;
        Log.d("WebViewRender", "initWebView: reuse WebView");
    }

    private void zc() {
        if (this.ROR == null && com.bytedance.sdk.component.adexpress.fl.Qhi() != null) {
            this.ROR = com.bytedance.sdk.component.adexpress.fl.Qhi();
        }
        if (this.ROR != null) {
            SSWebView ABk = ABk();
            this.ac = ABk;
            if (ABk == null) {
                Log.d("WebViewRender", "initWebView: create WebView by act");
                this.ac = new SSWebView(new MutableContextWrapper(this.ROR.getApplicationContext()));
                return;
            }
            this.Gm = true;
            Log.d("WebViewRender", "initWebView: reuse WebView");
        }
    }

    private SSWebView ABk() {
        if (this.ABk.bxS()) {
            return Tgh.Qhi().Qhi(this.ROR, this.Sf);
        }
        return Tgh.Qhi().cJ(this.ROR, this.Sf);
    }

    private void iMK() {
        if (this.ABk.bxS()) {
            Tgh.Qhi().cJ(this.ac);
        } else {
            Tgh.Qhi().ac(this.ac);
        }
    }

    public void Qhi(String str) {
        this.hm = str;
    }

    public SSWebView Qhi() {
        return this.ac;
    }

    public void Qhi(hm hmVar) {
        this.zc = hmVar;
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.fl
    public void Qhi(Sf sf) {
        this.WAv = sf;
        if (Qhi() == null || Qhi().getWebView() == null) {
            this.WAv.Qhi(102, "SSWebview null is " + (Qhi() == null) + " or Webview is null");
        } else if (TextUtils.isEmpty(this.hm)) {
            this.WAv.Qhi(102, "url is empty");
        } else {
            if (!this.ABk.bxS()) {
                if (!this.hpZ && !com.bytedance.sdk.component.adexpress.Qhi.cJ.cJ.Qhi(this.Qhi)) {
                    this.WAv.Qhi(103, "data null is " + (this.Qhi == null));
                    return;
                } else if (this.hpZ && !com.bytedance.sdk.component.adexpress.Qhi.cJ.cJ.cJ(this.Qhi)) {
                    this.WAv.Qhi(103, "choice ad data null is " + (this.Qhi == null));
                    return;
                }
            }
            this.ABk.fl().Qhi(this.Gm);
            if (this.Gm) {
                try {
                    this.ac.ABk();
                    this.ABk.fl();
                    com.bytedance.sdk.component.utils.zc.Qhi(this.ac.getWebView(), "javascript:window.SDK_RESET_RENDER();window.SDK_TRIGGER_RENDER();");
                    return;
                } catch (Exception e2) {
                    Tgh.Qhi().fl(this.ac);
                    this.WAv.Qhi(102, "load exception is " + e2.getMessage());
                    return;
                }
            }
            SSWebView Qhi = Qhi();
            Qhi.ABk();
            this.ABk.fl();
            Qhi.a_(this.hm);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.fl
    /* renamed from: cJ */
    public SSWebView fl() {
        return Qhi();
    }

    public void CJ() {
        if (this.Tgh.get()) {
            return;
        }
        this.Tgh.set(true);
        ROR();
        if (this.ac.getParent() != null) {
            ((ViewGroup) this.ac.getParent()).removeView(this.ac);
        }
        if (this.cJ) {
            iMK();
        } else {
            Tgh.Qhi().fl(this.ac);
        }
    }

    public void Tgh() {
        if (Qhi() == null) {
            return;
        }
        try {
            Qhi().getWebView().resumeTimers();
        } catch (Exception unused) {
        }
    }

    public void Qhi(boolean z) {
        this.iMK = z;
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.zc
    public void Qhi(final pA pAVar) {
        if (pAVar == null) {
            if (this.WAv != null) {
                this.WAv.Qhi(105, "renderResult is null");
                return;
            }
            return;
        }
        boolean ac = pAVar.ac();
        final float CJ = (float) pAVar.CJ();
        final float fl = (float) pAVar.fl();
        if (CJ <= 0.0f || fl <= 0.0f) {
            if (this.WAv != null) {
                this.WAv.Qhi(105, "width is " + CJ + "height is " + fl);
                return;
            }
            return;
        }
        this.cJ = ac;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Qhi(pAVar, CJ, fl);
        } else {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.fl.Qhi.1
                @Override // java.lang.Runnable
                public void run() {
                    Qhi.this.Qhi(pAVar, CJ, fl);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(pA pAVar, float f2, float f3) {
        pAVar.Gm();
        boolean z = this.cJ;
        if (!z || this.iMK) {
            if (!z) {
                Tgh.Qhi().fl(this.ac);
                return;
            } else {
                Qhi(pAVar.Gm(), pAVar.WAv());
                return;
            }
        }
        Qhi(f2, f3);
        cJ(this.CJ);
        if (this.WAv != null) {
            this.WAv.Qhi(Qhi(), pAVar);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.cJ.zc
    public void Qhi(View view, int i, com.bytedance.sdk.component.adexpress.ac acVar) {
        hm hmVar = this.zc;
        if (hmVar != null) {
            hmVar.Qhi(view, i, acVar);
        }
    }

    private void Qhi(float f2, float f3) {
        this.ABk.fl().fl();
        int Qhi = (int) CQU.Qhi(this.ROR, f2);
        int Qhi2 = (int) CQU.Qhi(this.ROR, f3);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) Qhi().getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new FrameLayout.LayoutParams(Qhi, Qhi2);
        }
        layoutParams.width = Qhi;
        layoutParams.height = Qhi2;
        Qhi().setLayoutParams(layoutParams);
    }

    private void Qhi(int i, String str) {
        if (this.WAv != null) {
            this.WAv.Qhi(i, str);
        }
    }

    private int cJ(Activity activity) {
        return activity.hashCode();
    }

    public void Sf() {
        hm();
        Activity Qhi = com.bytedance.sdk.component.utils.cJ.Qhi(this.ac);
        if (Qhi != null) {
            this.pA = cJ(Qhi);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.Qhi
    public void Qhi(Activity activity) {
        if (this.pA == 0 || activity == null || activity.hashCode() != this.pA) {
            return;
        }
        CJ();
        WAv();
    }

    public void Qhi(JSONObject jSONObject) {
        this.Qhi = jSONObject;
    }

    public iMK Gm() {
        return this.ABk;
    }

    public void cJ(boolean z) {
        this.hpZ = z;
    }
}
