package com.bytedance.sdk.openadsdk.common;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebBackForwardList;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR;
import com.bytedance.sdk.openadsdk.utils.iMK;
import org.json.JSONObject;
/* compiled from: TTBottomNewStyleManager.java */
/* loaded from: classes2.dex */
public class Sf {
    private final String CJ;
    private final LinearLayout Qhi;
    private ImageView ROR;
    private ROR.Qhi Sf;
    private ImageView Tgh;
    private final tP ac;
    private final SSWebView cJ;
    private final Context fl;

    public Sf(Context context, LinearLayout linearLayout, SSWebView sSWebView, tP tPVar, String str) {
        this.fl = context;
        this.Qhi = linearLayout;
        this.cJ = sSWebView;
        this.ac = tPVar;
        this.CJ = str;
        ac();
    }

    private void ac() {
        this.Tgh = (ImageView) this.Qhi.findViewById(iMK.Ura);
        this.ROR = (ImageView) this.Qhi.findViewById(iMK.PER);
        this.Tgh.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.Sf.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Sf.this.cJ == null || !Sf.this.cJ.fl()) {
                    return;
                }
                if (Sf.this.Sf != null) {
                    Sf.this.Sf.Qhi();
                }
                Sf.this.Qhi("backward");
                Sf.this.cJ.Tgh();
            }
        });
        this.ROR.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.Sf.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Sf.this.cJ == null || !Sf.this.cJ.ROR()) {
                    return;
                }
                Sf.this.Qhi("forward");
                Sf.this.cJ.Sf();
            }
        });
        ((ImageView) this.Qhi.findViewById(iMK.Gy)).setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.Sf.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Sf.this.cJ != null) {
                    Sf.this.cJ("refresh");
                    Sf.this.cJ.CJ();
                }
            }
        });
        ((ImageView) this.Qhi.findViewById(iMK.et)).setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.Sf.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (Sf.this.cJ != null) {
                    Sf.this.cJ("external_btn_click");
                    Intent intent = new Intent("android.intent.action.VIEW");
                    String url = Sf.this.cJ.getUrl();
                    if (TextUtils.isEmpty(url)) {
                        return;
                    }
                    intent.setData(Uri.parse(url));
                    com.bytedance.sdk.component.utils.cJ.Qhi(Sf.this.fl, intent, null);
                }
            }
        });
        this.Qhi.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.Sf.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        });
        this.Tgh.setClickable(false);
        this.ROR.setClickable(false);
        this.Tgh.setColorFilter(Color.parseColor("#A8FFFFFF"), PorterDuff.Mode.ADD);
        this.ROR.setColorFilter(Color.parseColor("#A8FFFFFF"), PorterDuff.Mode.ADD);
    }

    public void Qhi(WebView webView, ROR.Qhi qhi) {
        this.Sf = qhi;
        try {
            if (this.Tgh != null) {
                if (webView.canGoBack()) {
                    this.Tgh.setClickable(true);
                    this.Tgh.clearColorFilter();
                } else {
                    this.Tgh.setClickable(false);
                    this.Tgh.setColorFilter(Color.parseColor("#A8FFFFFF"), PorterDuff.Mode.ADD);
                }
            }
            if (this.ROR != null) {
                if (webView.canGoForward()) {
                    this.ROR.setClickable(true);
                    this.ROR.clearColorFilter();
                    return;
                }
                this.ROR.setClickable(false);
                this.ROR.setColorFilter(Color.parseColor("#A8FFFFFF"), PorterDuff.Mode.ADD);
            }
        } catch (Throwable unused) {
        }
    }

    public void Qhi() {
        if (this.Qhi.getAlpha() == 0.0f) {
            ObjectAnimator.ofFloat(this.Qhi, "alpha", 0.0f, 1.0f).setDuration(300L).start();
        }
    }

    public void cJ() {
        if (this.Qhi.getAlpha() == 1.0f) {
            ObjectAnimator.ofFloat(this.Qhi, "alpha", 1.0f, 0.0f).setDuration(300L).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(String str) {
        WebBackForwardList copyBackForwardList;
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.cJ.getWebView() != null && (copyBackForwardList = this.cJ.getWebView().copyBackForwardList()) != null) {
                int currentIndex = copyBackForwardList.getCurrentIndex();
                String url = copyBackForwardList.getItemAtIndex(currentIndex).getUrl();
                if (TextUtils.isEmpty(url)) {
                    url = this.cJ.getUrl();
                }
                String str2 = "";
                if (str.equals("backward")) {
                    str2 = copyBackForwardList.getItemAtIndex(currentIndex - 1).getUrl();
                }
                int i = 1;
                if (str.equals("forward")) {
                    str2 = copyBackForwardList.getItemAtIndex(currentIndex + 1).getUrl();
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("url", url);
                jSONObject2.putOpt("next_url", str2);
                if (copyBackForwardList.getCurrentIndex() != 0) {
                    i = 0;
                }
                jSONObject2.putOpt("first_page", Integer.valueOf(i));
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            }
        } catch (Exception unused) {
        }
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(System.currentTimeMillis(), this.ac, this.CJ, str, jSONObject, (com.bytedance.sdk.openadsdk.cJ.Sf) null, (com.bytedance.sdk.openadsdk.cJ.cJ.Qhi) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(String str) {
        WebBackForwardList copyBackForwardList;
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.cJ.getWebView() != null && (copyBackForwardList = this.cJ.getWebView().copyBackForwardList()) != null) {
                String url = copyBackForwardList.getItemAtIndex(copyBackForwardList.getCurrentIndex()).getUrl();
                if (TextUtils.isEmpty(url)) {
                    url = this.cJ.getUrl();
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt("url", url);
                jSONObject2.putOpt("first_page", Integer.valueOf(copyBackForwardList.getCurrentIndex() == 0 ? 1 : 0));
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            }
        } catch (Exception unused) {
        }
        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(System.currentTimeMillis(), this.ac, this.CJ, str, jSONObject, (com.bytedance.sdk.openadsdk.cJ.Sf) null, (com.bytedance.sdk.openadsdk.cJ.cJ.Qhi) null);
    }
}
