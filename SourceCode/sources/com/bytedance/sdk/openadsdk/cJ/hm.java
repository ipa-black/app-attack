package com.bytedance.sdk.openadsdk.cJ;

import android.os.SystemClock;
import android.text.TextUtils;
import android.webkit.WebBackForwardList;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.core.model.tP;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: ArbitrageLandingLog.java */
/* loaded from: classes2.dex */
public class hm {
    private final tP Qhi;
    private final WebView ROR;
    private int Tgh;
    private int fl;
    private long hm;
    private String Sf = "landingpage";
    private final Map<Integer, Long> cJ = new HashMap();
    private final List<Integer> ac = new ArrayList();
    private final Map<Integer, String> CJ = new HashMap();

    public hm(tP tPVar, WebView webView) {
        this.Qhi = tPVar;
        this.ROR = webView;
    }

    public void Qhi(String str) {
        if (Qhi(true)) {
            ac.Qhi(this.Qhi, this.Sf, this.fl, str);
            this.CJ.put(Integer.valueOf(this.fl), str);
            this.hm = SystemClock.elapsedRealtime();
        }
    }

    public void cJ(String str) {
        if (Qhi(false)) {
            ac.Qhi(this.Qhi, this.Sf, this.fl, str, (float) (SystemClock.elapsedRealtime() - this.hm));
        }
    }

    public void Qhi(WebView webView, String str) {
        tP tPVar = this.Qhi;
        if (tPVar == null || !com.bytedance.sdk.component.widget.cJ.Qhi(tPVar.WAv().Qhi(), str)) {
            return;
        }
        String str2 = this.CJ.get(Integer.valueOf(this.fl));
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        ac.Qhi(this.Qhi, this.Sf, this.fl, str2, str, 2);
    }

    public void ac(String str) {
        String str2 = this.CJ.get(Integer.valueOf(this.fl));
        if (TextUtils.isEmpty(str2)) {
            str2 = "";
        }
        String str3 = str2;
        int i = this.fl;
        if (i > 0) {
            ac.Qhi(this.Qhi, this.Sf, i, str3, str, 1);
        }
    }

    private boolean Qhi(boolean z) {
        int i = z ? this.fl : this.Tgh;
        cJ(z);
        int i2 = z ? this.fl : this.Tgh;
        return i2 > 0 && i2 != i;
    }

    private void cJ(boolean z) {
        try {
            WebBackForwardList copyBackForwardList = this.ROR.copyBackForwardList();
            if (copyBackForwardList != null) {
                if (z) {
                    this.fl = copyBackForwardList.getCurrentIndex() + 1;
                } else {
                    this.Tgh = copyBackForwardList.getCurrentIndex() + 1;
                }
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("ArbitrageLandingLog", th.toString());
        }
    }

    public void CJ(String str) {
        this.Sf = str;
    }
}
