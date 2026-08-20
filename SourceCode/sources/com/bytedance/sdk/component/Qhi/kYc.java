package com.bytedance.sdk.component.Qhi;

import android.webkit.WebView;
import com.bytedance.sdk.component.Qhi.fl;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: JsBridge2.java */
/* loaded from: classes2.dex */
public class kYc {
    static bxS Qhi;
    private final Gm CJ;
    private volatile boolean Tgh;
    private final WebView ac;
    private final Qhi cJ;
    private final List<pA> fl;

    public static Gm Qhi(WebView webView) {
        return new Gm(webView);
    }

    public kYc Qhi(String str, Tgh<?, ?> tgh) {
        return Qhi(str, (String) null, tgh);
    }

    public kYc Qhi(String str, String str2, Tgh<?, ?> tgh) {
        cJ();
        this.cJ.ROR.Qhi(str, tgh);
        return this;
    }

    public kYc Qhi(String str, fl.cJ cJVar) {
        return Qhi(str, (String) null, cJVar);
    }

    public kYc Qhi(String str, String str2, fl.cJ cJVar) {
        cJ();
        this.cJ.ROR.Qhi(str, cJVar);
        return this;
    }

    public void Qhi() {
        if (this.Tgh) {
            return;
        }
        this.cJ.cJ();
        this.Tgh = true;
        Iterator<pA> it = this.fl.iterator();
        while (it.hasNext()) {
            it.next();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public kYc(Gm gm) {
        ArrayList arrayList = new ArrayList();
        this.fl = arrayList;
        this.Tgh = false;
        this.CJ = gm;
        if (gm.Sf && Qhi != null) {
            throw null;
        }
        if (gm.Qhi != null) {
            if (gm.cJ == null) {
                this.cJ = new pM();
            } else {
                this.cJ = gm.cJ;
            }
        } else {
            this.cJ = gm.cJ;
        }
        this.cJ.Qhi(gm, (EBS) null);
        this.ac = gm.Qhi;
        arrayList.add(gm.WAv);
        CQU.Qhi(gm.ROR);
    }

    private void cJ() {
        if (this.Tgh) {
            WAv.Qhi(new IllegalStateException("JsBridge2 is already released!!!"));
        }
    }
}
