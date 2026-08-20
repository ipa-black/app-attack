package com.bytedance.sdk.openadsdk.cJ;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.webkit.JavascriptInterface;
import android.webkit.WebBackForwardList;
import android.webkit.WebView;
import com.bytedance.sdk.component.widget.PangleWebView;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.CJ.MQ;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.model.bxS;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.lG;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.explorestack.iab.vast.VastError;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.io.IOException;
import java.util.HashMap;
import java.util.Random;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: LandingPageLog.java */
/* loaded from: classes2.dex */
public class zc {
    private static final int[] cJ = {10, 30, 50, 75, 100};
    private String ABk;
    private long CJ;
    private long CQU;
    private long Dww;
    private long EBS;
    private final boolean Eh;
    private volatile int FQ;
    private boolean Gm;
    private com.bytedance.sdk.openadsdk.hpZ.hm HzH;
    private Gm Jma;
    private final AtomicBoolean MND;
    private String MQ;
    private WebView NFd;
    private int PAe;
    private long Qe;
    public ROR.Qhi Qhi;
    private final AtomicBoolean ROR;
    private final AtomicBoolean Sf;
    private final AtomicBoolean Tgh;
    private int WAv;
    private final AtomicBoolean YB;
    private final AtomicInteger aP;
    private int ac;
    private long bxS;
    private String cjC;
    private String dIT;
    private final AtomicInteger es;
    private int fl;
    private final AtomicBoolean hm;
    private boolean hpZ;
    private final Context iMK;
    private volatile long ip;
    private volatile long jPH;
    private volatile long js;
    private hm kYc;
    private com.bytedance.sdk.openadsdk.cJ.ac.Tgh lB;
    private boolean lG;
    private com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR pA;
    private boolean pM;
    private long qMt;
    private boolean sDy;
    private final tP tP;
    private volatile long xyz;
    private final AtomicBoolean yN;
    private String zc;
    private final AtomicInteger zn;

    public tP Qhi() {
        return this.tP;
    }

    public zc(tP tPVar, WebView webView, Gm gm, int i) {
        this(tPVar, webView);
        this.Jma = gm;
        this.PAe = i;
    }

    public zc(tP tPVar, WebView webView) {
        this.ac = 0;
        this.CJ = -1L;
        this.fl = 1;
        this.Tgh = new AtomicBoolean(false);
        this.ROR = new AtomicBoolean(false);
        this.Sf = new AtomicBoolean(false);
        this.hm = new AtomicBoolean(false);
        this.WAv = -1;
        this.MQ = "landingpage";
        this.qMt = 0L;
        this.EBS = 0L;
        this.bxS = 0L;
        this.Dww = 0L;
        this.CQU = 0L;
        this.pM = false;
        this.Eh = false;
        this.aP = new AtomicInteger(0);
        this.sDy = false;
        this.lG = false;
        this.js = 0L;
        this.zn = new AtomicInteger(0);
        this.es = new AtomicInteger(0);
        this.yN = new AtomicBoolean(false);
        this.FQ = 0;
        this.PAe = -1;
        this.MND = new AtomicBoolean(false);
        this.YB = new AtomicBoolean(false);
        Context Qhi2 = com.bytedance.sdk.openadsdk.core.HzH.Qhi();
        this.iMK = Qhi2;
        this.tP = tPVar;
        this.NFd = webView;
        if (tPVar != null && tPVar.xyz()) {
            com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR ror = new com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR(this.NFd, tPVar, Qhi2);
            this.pA = ror;
            this.Qhi = ror.ac();
        }
        if (webView == null) {
            return;
        }
        if (tPVar != null && tPVar.jPH() && com.bytedance.sdk.openadsdk.core.settings.HzH.YD().vml()) {
            this.kYc = new hm(tPVar, webView);
        }
        if (webView instanceof PangleWebView) {
            this.Qe = ((PangleWebView) this.NFd).Qhi;
        } else {
            this.Qe = System.currentTimeMillis();
        }
        try {
            this.NFd.addJavascriptInterface(new Qhi(), "JS_LANDING_PAGE_LOG_OBJ");
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("LandingPageLog", "addJavascriptInterface exception", e2);
        }
        if (tPVar != null && tPVar.KW() != null) {
            this.CJ = tPVar.KW().optLong("page_id", -1L);
        }
        this.cjC = String.valueOf(SystemClock.elapsedRealtime());
    }

    public void Qhi(long j) {
        this.EBS = j;
    }

    public void Qhi(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR ror = this.pA;
        if (ror != null) {
            ror.Qhi(str);
        }
        hm hmVar = this.kYc;
        if (hmVar != null) {
            hmVar.CJ(str);
        }
        this.MQ = str;
    }

    public void Qhi(int i) {
        this.PAe = i;
    }

    public com.bytedance.sdk.openadsdk.cJ.ac.Tgh cJ() {
        return this.lB;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh) {
        this.lB = tgh;
    }

    public zc Qhi(boolean z) {
        this.sDy = z;
        return this;
    }

    public boolean ac() {
        return this.lG;
    }

    public void cJ(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.dIT = str;
    }

    public void Qhi(com.bytedance.sdk.openadsdk.hpZ.hm hmVar) {
        this.HzH = hmVar;
    }

    public void cJ(boolean z) {
        this.lG = z;
    }

    public void CJ() {
        if (hm()) {
            this.ip = SystemClock.elapsedRealtime();
            ac.Qhi(this.tP, this.dIT);
        }
    }

    public void fl() {
        if (hm()) {
            this.xyz = SystemClock.elapsedRealtime();
            Tgh();
        }
    }

    public void Tgh() {
        if (hm() && this.xyz > 0 && this.jPH > 0 && !this.MND.getAndSet(true)) {
            ac.cJ(this.jPH - this.xyz, this.tP, this.dIT, (String) null);
        }
    }

    public void Qhi(WebView webView, int i) {
        if (webView == null) {
            return;
        }
        if (this.js == 0) {
            this.js = SystemClock.elapsedRealtime();
        }
        if (this.bxS == 0 && i > 0) {
            this.bxS = System.currentTimeMillis();
        } else if (this.Dww == 0 && i == 100) {
            this.Dww = System.currentTimeMillis();
        }
        if (this.ac != cJ.length && ("landingpage".equals(this.MQ) || "landingpage_endcard".equals(this.MQ) || "landingpage_split_screen".equals(this.MQ) || "landingpage_direct".equals(this.MQ) || "aggregate_page".equals(this.MQ))) {
            int i2 = this.ac;
            while (true) {
                int[] iArr = cJ;
                if (i2 >= iArr.length || i < iArr[this.ac]) {
                    break;
                }
                int i3 = i2 + 1;
                this.ac = i3;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", webView.getUrl());
                    long j = this.CJ;
                    if (j != -1) {
                        jSONObject.put("page_id", j);
                    }
                    jSONObject.putOpt("render_type", "h5");
                    jSONObject.putOpt("render_type_2", 0);
                    jSONObject.put("pct", iArr[i2]);
                } catch (Exception unused) {
                }
                Qhi("progress_load_finish", jSONObject);
                i2 = i3;
            }
        }
        if (i == 100) {
            Qhi(webView.getUrl(), "progress", Math.min(this.Dww - this.bxS, (long) TTAdConstant.AD_MAX_EVENT_TIME));
        }
    }

    private void Qhi(String str, String str2, long j) {
        if (this.Sf.compareAndSet(false, true)) {
            JSONObject jSONObject = new JSONObject();
            try {
                if (str.length() > 200) {
                    int indexOf = str.indexOf(38, 200);
                    int i = VastError.ERROR_CODE_GENERAL_WRAPPER;
                    if (indexOf == -1 || indexOf > 300) {
                        indexOf = str.indexOf(63);
                    }
                    if (indexOf != -1 && indexOf <= 300) {
                        i = indexOf;
                    }
                    str = str.substring(0, i);
                }
                jSONObject.put("url", str);
                jSONObject.put(SessionDescription.ATTR_TYPE, str2);
            } catch (Throwable unused) {
            }
            Qhi("load_finish_progress", jSONObject, j);
        }
    }

    public void Qhi(WebView webView, String str, Bitmap bitmap, boolean z) {
        this.hpZ = z;
        com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR ror = this.pA;
        if (ror != null && z) {
            ror.cJ(str);
            this.pA.cJ();
        }
        hm hmVar = this.kYc;
        if (hmVar != null && z) {
            hmVar.Qhi(str);
        }
        WebView webView2 = this.NFd;
        if (webView2 != null) {
            try {
                WebBackForwardList copyBackForwardList = webView2.copyBackForwardList();
                if (copyBackForwardList != null && copyBackForwardList.getCurrentIndex() > this.FQ) {
                    this.zn.incrementAndGet();
                }
                this.FQ = copyBackForwardList.getCurrentIndex();
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("LandingPageLog", "copyBackForwardList exception", e2);
            }
        }
        if (this.js == 0) {
            this.js = SystemClock.elapsedRealtime();
        }
        com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh = this.lB;
        if (tgh != null) {
            tgh.fl();
        }
        if (this.Tgh.compareAndSet(false, true)) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.putOpt("render_type", "h5");
                jSONObject.putOpt("render_type_2", 0);
                int i = this.PAe;
                if (i >= 0) {
                    jSONObject.putOpt("preload_status", Integer.valueOf(i));
                }
            } catch (Exception unused) {
            }
            Qhi("load_start", jSONObject);
        }
    }

    public void Qhi(WebView webView, String str, boolean z) {
        com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR ror = this.pA;
        if (ror != null && z) {
            ror.Qhi();
        }
        com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh = this.lB;
        if (tgh != null) {
            tgh.Tgh();
        }
        hm hmVar = this.kYc;
        if (hmVar != null && z) {
            hmVar.cJ(str);
        }
        if (webView != null && !this.pM && this.sDy) {
            this.pM = true;
            com.bytedance.sdk.component.utils.zc.Qhi(webView, "javascript:\nfunction sendScroll(){\n   var totalH = document.body.scrollHeight || document.documentElement.scrollHeight;\n   var clientH = window.innerHeight || document.documentElement.clientHeight;\n   var scrollH = document.body.scrollTop || document.documentElement.scrollTop;\n   var validH = scrollH + clientH;\n   var result = (validH/totalH*100).toFixed(2);\n   console.log('LandingPageLogscroll status: (' + scrollH + '+' + clientH + ')/' + totalH + '=' + result);\n   window.JS_LANDING_PAGE_LOG_OBJ.readPercent(result);\n}\nsendScroll();\nwindow.addEventListener('scroll', function(e){\n    sendScroll();\n});");
        }
        if (this.ROR.compareAndSet(false, true)) {
            if (this.fl != 3) {
                this.fl = 2;
            }
            this.qMt = System.currentTimeMillis();
            boolean z2 = this.fl == 2;
            int WAv = WAv();
            if (z2) {
                long j = this.Dww - this.bxS;
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("error_code", this.WAv);
                    jSONObject.put("error_msg", this.zc);
                    jSONObject.put("error_url", this.ABk);
                    int i = this.PAe;
                    if (i >= 0) {
                        jSONObject.put("preload_status", i);
                    }
                    jSONObject.put("first_page", WAv);
                    jSONObject.putOpt("render_type", "h5");
                    jSONObject.putOpt("render_type_2", 0);
                    jSONObject.put("url", this.tP.YB());
                    jSONObject.put("preload_h5_type", this.tP.jN());
                } catch (Exception unused) {
                }
                Qhi(z, "0");
                long min = Math.min(j, (long) TTAdConstant.AD_MAX_EVENT_TIME);
                Qhi("load_finish", jSONObject, min);
                if (hm()) {
                    this.jPH = SystemClock.elapsedRealtime();
                    Tgh();
                    ac.Qhi(this.tP, this.dIT, this.jPH - this.ip);
                }
                Qhi(str, "load_finish", min);
                Gm gm = this.Jma;
                if (gm != null) {
                    gm.Qhi(WAv);
                    return;
                }
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("error_code", this.WAv);
                jSONObject2.put("error_msg", this.zc);
                jSONObject2.put("error_url", this.ABk);
                jSONObject2.put("first_page", WAv);
                int i2 = this.PAe;
                if (i2 >= 0) {
                    jSONObject2.put("preload_status", i2);
                }
                jSONObject2.putOpt("render_type", "h5");
                jSONObject2.putOpt("render_type_2", 0);
                jSONObject2.put("url", this.tP.YB());
                jSONObject2.put("preload_h5_type", this.tP.jN());
            } catch (Exception unused2) {
            }
            Qhi(z, "2");
            Qhi("load_fail", jSONObject2);
            if (hm()) {
                ac.Qhi(this.tP, this.dIT, SystemClock.elapsedRealtime() - this.ip, this.WAv, this.zc, this.ABk);
            }
            if (this.Gm) {
                jSONObject2.remove("render_type");
                jSONObject2.remove("render_type_2");
                Qhi("load_fail_main", jSONObject2);
            }
        }
    }

    private boolean hm() {
        tP tPVar;
        return this.lG && (tPVar = this.tP) != null && tPVar.Ttc();
    }

    private String ac(String str) {
        return "javascript:".concat(String.valueOf(str));
    }

    public void Qhi(WebView webView, int i, String str, String str2, String str3, boolean z) {
        com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh = this.lB;
        if (tgh != null) {
            tgh.Qhi((JSONObject) null);
        }
        if ((str3 == null || !str3.startsWith("image")) && this.fl != 2) {
            this.fl = 3;
        }
        this.WAv = i;
        this.zc = str;
        this.ABk = str2;
        this.Gm = z;
    }

    public void ROR() {
        if (this.CQU == 0) {
            this.CQU = System.currentTimeMillis();
        }
        this.qMt = System.currentTimeMillis();
        if ("landingpage".equals(this.MQ) || "landingpage_endcard".equals(this.MQ) || "landingpage_split_screen".equals(this.MQ) || "landingpage_direct".equals(this.MQ) || "aggregate_page".equals(this.MQ)) {
            if (this.YB.compareAndSet(false, true)) {
                MQ.Qhi().Qhi("landingStart", this.tP, this.cjC);
            } else {
                MQ.Qhi().Qhi("landingContinue", this.tP, this.cjC);
            }
        }
    }

    public void Sf() {
        if (("landingpage".equals(this.MQ) || "landingpage_endcard".equals(this.MQ) || "landingpage_split_screen".equals(this.MQ) || "landingpage_direct".equals(this.MQ) || "aggregate_page".equals(this.MQ)) && this.fl == 2) {
            if (this.EBS > 0 || !ac()) {
                long currentTimeMillis = System.currentTimeMillis() - Math.max(this.qMt, this.EBS);
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("load_status", this.fl);
                    jSONObject.put("max_scroll_percent", this.aP.get());
                    jSONObject.put("jump_times", this.zn.getAndSet(0));
                    jSONObject.put("click_times", this.es.getAndSet(0));
                    jSONObject.putOpt("render_type", "h5");
                    jSONObject.putOpt("render_type_2", 0);
                } catch (JSONException unused) {
                }
                this.hm.set(true);
                Qhi("stay_page", jSONObject, Math.min(currentTimeMillis, (long) TTAdConstant.AD_MAX_EVENT_TIME));
                MQ.Qhi().Qhi("landingPause", this.tP, this.cjC);
            }
        }
    }

    public void Qhi(SSWebView sSWebView) {
        int oU;
        Bitmap Qhi2;
        tP tPVar;
        if ((!"landingpage".equals(this.MQ) && !"landingpage_endcard".equals(this.MQ) && !"landingpage_split_screen".equals(this.MQ) && !"landingpage_direct".equals(this.MQ) && !"aggregate_page".equals(this.MQ)) || (oU = com.bytedance.sdk.openadsdk.core.HzH.CJ().oU()) == 0 || new Random().nextInt(100) + 1 > oU || sSWebView == null || sSWebView.getWebView() == null || sSWebView.getVisibility() != 0 || (Qhi2 = zn.Qhi(sSWebView)) == null || (tPVar = this.tP) == null) {
            return;
        }
        zn.Qhi(tPVar, this.MQ, "landing_page_blank", Qhi2, sSWebView.getUrl(), this.CJ);
    }

    public void ac(boolean z) {
        WebView webView = this.NFd;
        if (webView != null) {
            try {
                webView.removeJavascriptInterface("JS_LANDING_PAGE_LOG_OBJ");
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ABk.Qhi("LandingPageLog", "removeJavascriptInterface exception", e2);
            }
        }
        if (this.ROR.compareAndSet(false, true)) {
            Qhi(z, IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
            if (this.sDy) {
                ac.Qhi(this.tP, this.MQ, System.currentTimeMillis() - this.CQU, this.PAe, WAv());
            }
        } else if (this.fl == 2 && !this.hm.get()) {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("load_status", this.fl);
                jSONObject.put("max_scroll_percent", this.aP.get());
                jSONObject.put("jump_times", this.zn.getAndSet(0));
                jSONObject.put("click_times", this.es.getAndSet(0));
                jSONObject.putOpt("render_type", "h5");
                jSONObject.putOpt("render_type_2", 0);
            } catch (JSONException unused) {
            }
            Qhi("stay_page", jSONObject, 0L);
        }
        this.NFd = null;
        if ("landingpage".equals(this.MQ) || "landingpage_endcard".equals(this.MQ) || "landingpage_split_screen".equals(this.MQ) || "landingpage_direct".equals(this.MQ) || "aggregate_page".equals(this.MQ)) {
            MQ.Qhi().Qhi("landingFinish", this.tP, this.cjC);
        }
    }

    public void cJ(WebView webView, String str, boolean z) {
        hm hmVar = this.kYc;
        if (hmVar == null || !z) {
            return;
        }
        hmVar.Qhi(webView, str);
    }

    private void Qhi(String str, JSONObject jSONObject) {
        Qhi(str, jSONObject, -1L);
    }

    private void Qhi(final String str, final JSONObject jSONObject, final long j) {
        if (!this.sDy || this.tP == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.openadsdk.hpZ.hm hmVar = this.HzH;
        final int zn = hmVar != null ? hmVar.zn() : -1;
        ac.Qhi(System.currentTimeMillis(), this.tP, this.MQ, str, new com.bytedance.sdk.openadsdk.Gm.ac.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.zc.1
            @Override // com.bytedance.sdk.openadsdk.Gm.ac.Qhi
            public JSONObject Qhi() {
                if (jSONObject != null) {
                    try {
                        boolean cJ2 = bxS.cJ(zc.this.tP);
                        jSONObject.put("is_playable", cJ2 ? 1 : 0);
                        jSONObject.put("usecache", com.bytedance.sdk.openadsdk.core.video.cJ.Qhi.Qhi().Qhi(zc.this.tP) ? 1 : 0);
                        if (cJ2 && ("load_finish".equals(str) || "load_fail".equals(str))) {
                            jSONObject.put("playable_has_show", zn);
                        }
                    } catch (JSONException unused) {
                    }
                    try {
                        JSONObject jSONObject2 = new JSONObject();
                        try {
                            jSONObject2.put("ad_extra_data", jSONObject.toString());
                            long j2 = j;
                            if (j2 > 0) {
                                jSONObject2.put("duration", j2);
                            }
                        } catch (JSONException unused2) {
                        }
                        return jSONObject2;
                    } catch (JSONException unused3) {
                        return null;
                    }
                }
                return null;
            }
        });
    }

    /* compiled from: LandingPageLog.java */
    /* loaded from: classes2.dex */
    private class Qhi {
        private Qhi() {
        }

        @JavascriptInterface
        public void readPercent(String str) {
            int i = 0;
            try {
                int intValue = Float.valueOf(str).intValue();
                if (intValue > 100) {
                    i = 100;
                } else if (intValue >= 0) {
                    i = intValue;
                }
            } catch (Throwable unused) {
            }
            zc.this.aP.set(i);
        }

        @JavascriptInterface
        public String getUrl() {
            return "";
        }
    }

    public void Qhi(MotionEvent motionEvent) {
        com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR ror = this.pA;
        if (ror != null && this.hpZ) {
            ror.Qhi(motionEvent);
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.js != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                this.es.incrementAndGet();
                if (this.yN.getAndSet(true)) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                try {
                    jSONObject.put("url", this.tP.YB());
                } catch (JSONException unused) {
                }
                Qhi("click_time", jSONObject, Math.max(SystemClock.elapsedRealtime() - this.js, 0L));
            }
        }
    }

    public void Qhi(String str, boolean z) {
        com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR ror = this.pA;
        if (ror != null && z) {
            ror.ac(str);
        }
        hm hmVar = this.kYc;
        if (hmVar == null || !z) {
            return;
        }
        hmVar.ac(str);
    }

    public void cJ(int i) {
        com.bytedance.sdk.openadsdk.core.widget.Qhi.ROR ror = this.pA;
        if (ror == null || !this.hpZ) {
            return;
        }
        ror.Qhi(i);
    }

    private void Qhi(boolean z, final String str) {
        if (z) {
            final int WAv = WAv();
            ac.Qhi(new com.bytedance.sdk.component.Sf.hm("sendPrefLog") { // from class: com.bytedance.sdk.openadsdk.cJ.zc.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        com.bytedance.sdk.openadsdk.core.settings.Sf pM = com.bytedance.sdk.openadsdk.core.HzH.CJ().pM();
                        boolean Qhi2 = zc.this.Qhi(pM, str);
                        if (Qhi2) {
                            if (!TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.settings.Sf.cJ)) {
                                zc.this.Qhi(WAv, str);
                            } else if (TextUtils.isEmpty(pM.ac) || !Qhi2) {
                            } else {
                                String str2 = pM.ac;
                                com.bytedance.sdk.component.ROR.cJ.cJ ac = com.bytedance.sdk.openadsdk.iMK.ac.Qhi().cJ().ac();
                                ac.cJ(str2);
                                HashMap hashMap = new HashMap();
                                hashMap.put("content-type", "application/json; charset=utf-8");
                                ac.CJ(hashMap);
                                ac.Qhi(9);
                                ac.Qhi("sendPrefLog");
                                ac.Qhi(new com.bytedance.sdk.component.ROR.Qhi.Qhi() { // from class: com.bytedance.sdk.openadsdk.cJ.zc.2.1
                                    @Override // com.bytedance.sdk.component.ROR.Qhi.Qhi
                                    public void Qhi(com.bytedance.sdk.component.ROR.cJ.ac acVar, IOException iOException) {
                                    }

                                    @Override // com.bytedance.sdk.component.ROR.Qhi.Qhi
                                    public void Qhi(com.bytedance.sdk.component.ROR.cJ.ac acVar, com.bytedance.sdk.component.ROR.cJ cJVar) {
                                        try {
                                            com.bytedance.sdk.openadsdk.core.settings.Sf.cJ = cJVar.CJ();
                                            zc.this.Qhi(WAv, str);
                                        } catch (Exception e2) {
                                            com.bytedance.sdk.component.utils.ABk.Qhi("LandingPageLog", "TTWebViewClient : onPageFinished", e2);
                                        }
                                    }
                                });
                            }
                        }
                    } catch (Throwable th) {
                        com.bytedance.sdk.component.utils.ABk.cJ(th.getMessage());
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(int i, String str) {
        try {
            if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.settings.Sf.cJ)) {
                return;
            }
            JSONObject jSONObject = new JSONObject();
            StringBuilder sb = new StringBuilder(com.bytedance.sdk.openadsdk.core.settings.Sf.cJ);
            jSONObject.putOpt("cid", Qhi().HLI());
            jSONObject.putOpt("ad_id", Qhi().HLI());
            jSONObject.put("log_extra", Qhi().EGK());
            js.Qhi(sb, "\"/** adInfo **/\"", jSONObject.toString());
            js.Qhi(sb, "\"/** first_page **/\"", String.valueOf(i));
            js.Qhi(sb, "\"/** ix_to_externalurl **/\"", this.CJ != -1 ? IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE : "0");
            js.Qhi(sb, "\"/** preload_status **/\"", this.PAe == 2 ? "2" : "0");
            js.Qhi(sb, "\"/** scene_state **/\"", str);
            js.Qhi(sb, "\"/** web_init_time **/\"", String.valueOf(this.Qe));
            js.Qhi(sb, "\"/** channel_name **/\"", "\"" + Qhi().Ri() + "\"");
            js.Qhi(sb, "\"/** session_id **/\"", "\"" + UUID.randomUUID().toString() + "\"");
            js.Qhi(sb, "\"/** web_url **/\"", "\"" + Qhi().YB() + "\"");
            String sb2 = sb.toString();
            if (TextUtils.isEmpty(sb2)) {
                return;
            }
            final String ac = ac(sb2);
            if (TextUtils.isEmpty(ac) || this.NFd == null) {
                return;
            }
            lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.zc.3
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.component.utils.zc.Qhi(zc.this.NFd, ac);
                }
            });
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.cJ(th.getMessage());
        }
    }

    private int WAv() {
        WebView webView = this.NFd;
        if (webView != null) {
            try {
                WebBackForwardList copyBackForwardList = webView.copyBackForwardList();
                if (copyBackForwardList != null) {
                    if (copyBackForwardList.getCurrentIndex() == 0) {
                        return 1;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Qhi(com.bytedance.sdk.openadsdk.core.settings.Sf sf, String str) {
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case 48:
                if (str.equals("0")) {
                    c2 = 0;
                    break;
                }
                break;
            case 49:
                if (str.equals(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE)) {
                    c2 = 1;
                    break;
                }
                break;
            case 50:
                if (str.equals("2")) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return sf.CJ;
            case 1:
                return sf.fl;
            case 2:
                return sf.Tgh;
            default:
                return false;
        }
    }
}
