package com.bytedance.sdk.component.Qhi;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Base64;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
/* compiled from: WebViewBridge.java */
/* loaded from: classes2.dex */
public class pM extends Qhi {
    static final /* synthetic */ boolean WAv = true;
    protected String Sf;
    protected WebView hm;

    @Override // com.bytedance.sdk.component.Qhi.Qhi
    protected Context Qhi(Gm gm) {
        if (gm.fl != null) {
            return gm.fl;
        }
        if (gm.Qhi != null) {
            return gm.Qhi.getContext();
        }
        throw new IllegalStateException("WebView cannot be null!");
    }

    @Override // com.bytedance.sdk.component.Qhi.Qhi
    protected String Qhi() {
        return this.hm.getUrl();
    }

    @Override // com.bytedance.sdk.component.Qhi.Qhi
    protected void cJ(Gm gm) {
        this.hm = gm.Qhi;
        this.Sf = gm.ac;
        if (gm.iMK) {
            return;
        }
        ac();
    }

    protected void ac() {
        if (!WAv && this.hm == null) {
            throw new AssertionError();
        }
        this.hm.addJavascriptInterface(this, this.Sf);
    }

    @Override // com.bytedance.sdk.component.Qhi.Qhi
    @JavascriptInterface
    public void invokeMethod(String str) {
        super.invokeMethod(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.Qhi.Qhi
    public void cJ() {
        super.cJ();
        CJ();
    }

    protected void CJ() {
        this.hm.removeJavascriptInterface(this.Sf);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.component.Qhi.Qhi
    public void Qhi(String str, HzH hzH) {
        if (hzH != null && !TextUtils.isEmpty(hzH.Sf)) {
            String str2 = hzH.Sf;
            Qhi(str, String.format("javascript:(function(){   const iframe = document.querySelector(atob('%s'));   if (iframe && iframe.contentWindow) {        iframe.contentWindow.postMessage(%s, atob('%s'));   }})()", Base64.encodeToString(String.format("iframe[src=\"%s\"", str2).getBytes(), 2), str, Base64.encodeToString(str2.getBytes(), 2)));
            return;
        }
        super.Qhi(str, hzH);
    }

    @Override // com.bytedance.sdk.component.Qhi.Qhi
    protected void Qhi(String str) {
        Qhi(str, "javascript:" + this.Sf + "._handleMessageFromToutiao(" + str + ")");
    }

    private void Qhi(String str, final String str2) {
        if (this.Tgh || TextUtils.isEmpty(str2)) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: com.bytedance.sdk.component.Qhi.pM.1
            @Override // java.lang.Runnable
            public void run() {
                if (pM.this.Tgh) {
                    return;
                }
                try {
                    pM.this.hm.evaluateJavascript(str2, null);
                } catch (Throwable unused) {
                }
            }
        };
        if (Looper.myLooper() != Looper.getMainLooper()) {
            this.CJ.post(runnable);
        } else {
            runnable.run();
        }
    }
}
