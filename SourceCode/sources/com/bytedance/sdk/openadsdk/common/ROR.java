package com.bytedance.sdk.openadsdk.common;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR;
import com.bytedance.sdk.openadsdk.utils.iMK;
/* compiled from: LandingPageNewStyleManager.java */
/* loaded from: classes2.dex */
public class ROR {
    private SSWebView CJ;
    private final tP Qhi;
    private WAv ROR;
    private Sf Sf;
    private final String Tgh;
    private final Context ac;
    private RelativeLayout cJ;
    private ImageView fl;

    public ROR(Context context, tP tPVar, String str) {
        this.ac = context;
        this.Qhi = tPVar;
        this.Tgh = str;
        Tgh();
    }

    private static RelativeLayout Qhi(Context context) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setBackgroundColor(-1);
        relativeLayout.addView(new LandingPageBrowserNewTitleBar(context));
        SSWebView sSWebView = new SSWebView(context);
        sSWebView.setId(iMK.MND);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(12);
        layoutParams.addRule(3, iMK.pv);
        relativeLayout.addView(sSWebView, layoutParams);
        LandingPageBrowserNewBottomBar landingPageBrowserNewBottomBar = new LandingPageBrowserNewBottomBar(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(landingPageBrowserNewBottomBar.getLayoutParams());
        layoutParams2.addRule(12);
        relativeLayout.addView(landingPageBrowserNewBottomBar, layoutParams2);
        return relativeLayout;
    }

    private void Tgh() {
        RelativeLayout Qhi = Qhi(this.ac);
        this.cJ = Qhi;
        this.CJ = (SSWebView) Qhi.findViewById(iMK.MND);
        WAv wAv = new WAv(this.ac, (RelativeLayout) this.cJ.findViewById(iMK.pv), this.Qhi);
        this.ROR = wAv;
        this.fl = wAv.ac();
        this.Sf = new Sf(this.ac, (LinearLayout) this.cJ.findViewById(iMK.Ri), this.CJ, this.Qhi, this.Tgh);
    }

    public void Qhi() {
        WAv wAv = this.ROR;
        if (wAv != null) {
            wAv.Qhi();
        }
        Sf sf = this.Sf;
        if (sf != null) {
            sf.Qhi();
        }
    }

    public void cJ() {
        WAv wAv = this.ROR;
        if (wAv != null) {
            wAv.cJ();
        }
        Sf sf = this.Sf;
        if (sf != null) {
            sf.cJ();
        }
    }

    public ImageView ac() {
        return this.fl;
    }

    public SSWebView CJ() {
        return this.CJ;
    }

    public View fl() {
        return this.cJ;
    }

    public void Qhi(WebView webView, int i, ROR.Qhi qhi) {
        WAv wAv = this.ROR;
        if (wAv != null) {
            wAv.Qhi(i);
        }
        Sf sf = this.Sf;
        if (sf != null) {
            sf.Qhi(webView, qhi);
        }
    }
}
