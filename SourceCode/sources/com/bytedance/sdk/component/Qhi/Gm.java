package com.bytedance.sdk.component.Qhi;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.bytedance.sdk.component.Qhi.zc;
import java.util.LinkedHashSet;
import java.util.Set;
/* compiled from: Environment.java */
/* loaded from: classes2.dex */
public class Gm {
    hm CJ;
    WebView Qhi;
    boolean ROR;
    boolean Sf;
    boolean Tgh;
    pA WAv;
    Qhi cJ;
    Context fl;
    iMK hm;
    zc.Qhi hpZ;
    boolean iMK;
    boolean pA;
    String ac = "IESJSBridge";
    String Gm = "host";
    final Set<String> zc = new LinkedHashSet();
    final Set<String> ABk = new LinkedHashSet();

    /* JADX INFO: Access modifiers changed from: package-private */
    public Gm(WebView webView) {
        this.Qhi = webView;
    }

    Gm() {
    }

    public Gm Qhi(Qhi qhi) {
        this.cJ = qhi;
        return this;
    }

    public Gm Qhi(String str) {
        this.ac = str;
        return this;
    }

    public Gm Qhi(ABk aBk) {
        this.CJ = hm.Qhi(aBk);
        return this;
    }

    public Gm Qhi(boolean z) {
        this.Tgh = z;
        return this;
    }

    public Gm cJ(boolean z) {
        this.ROR = z;
        return this;
    }

    public Gm Qhi() {
        this.pA = true;
        return this;
    }

    public kYc cJ() {
        ac();
        return new kYc(this);
    }

    private void ac() {
        if ((this.Qhi == null && !this.iMK && this.cJ == null) || ((TextUtils.isEmpty(this.ac) && this.Qhi != null) || this.CJ == null)) {
            throw new IllegalArgumentException("Requested arguments aren't set properly when building JsBridge.");
        }
    }
}
