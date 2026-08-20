package com.bytedance.sdk.openadsdk.core;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import android.view.View;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import androidx.core.app.NotificationCompat;
import com.amazon.aps.shared.APSAnalytics;
import com.appodeal.ads.modules.common.internal.Constants;
import com.bytedance.JProtect;
import com.bytedance.sdk.component.utils.CQU;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity;
import com.bytedance.sdk.openadsdk.core.cJ.ac;
import com.bytedance.sdk.openadsdk.core.model.pA;
import com.bytedance.sdk.openadsdk.core.tP;
import com.bytedance.sdk.openadsdk.utils.DeviceUtils;
import com.bytedance.sdk.openadsdk.utils.js;
import com.bytedance.sdk.openadsdk.utils.zn;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.onesignal.outcomes.OSOutcomeConstants;
import com.onesignal.outcomes.data.OutcomeEventsTable;
import com.unity3d.services.core.request.metrics.AdOperationMetric;
import io.bidmachine.utils.IabUtils;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: TTAndroidObject.java */
/* loaded from: classes2.dex */
public class NFd implements com.bytedance.sdk.component.adexpress.fl.cJ, CQU.Qhi, com.bytedance.sdk.openadsdk.Sf.cJ {
    private static final Map<String, Boolean> Sf;
    private int ABk;
    private WeakReference<SSWebView> CJ;
    private com.bytedance.sdk.openadsdk.WAv.fl CQU;
    private com.bytedance.sdk.openadsdk.WAv.Tgh Dww;
    private com.bytedance.sdk.openadsdk.Sf.fl EBS;
    private com.bytedance.sdk.openadsdk.core.cJ.fl Eh;
    private WeakReference<View> Gm;
    private com.bytedance.sdk.openadsdk.core.model.tP HzH;
    private Context MND;
    private com.bytedance.sdk.openadsdk.core.nativeexpress.ABk MQ;
    private com.bytedance.sdk.openadsdk.WAv.WAv NFd;
    private com.bytedance.sdk.openadsdk.core.widget.Qhi.Qhi PAe;
    private Qhi Qe;
    protected Map<String, Object> Qhi;
    private com.bytedance.sdk.openadsdk.core.widget.ac ROR;
    private String Tgh;
    private String WAv;
    private com.bytedance.sdk.openadsdk.WAv.cJ aP;
    private com.bytedance.sdk.openadsdk.WAv.Qhi bxS;
    boolean cJ;
    private com.bytedance.sdk.openadsdk.core.video.ac.cJ dIT;
    private com.bytedance.sdk.component.Qhi.kYc es;
    private com.bytedance.sdk.openadsdk.Sf.ac hm;
    private String iMK;
    private com.bytedance.sdk.openadsdk.WAv.ROR ip;
    private boolean jPH;
    private JSONObject kYc;
    private List<com.bytedance.sdk.openadsdk.core.model.tP> lB;
    private HashMap<String, WAv> lG;
    private int pA;
    private JSONObject pM;
    private JSONObject qMt;
    private com.bytedance.sdk.component.adexpress.cJ.zc tP;
    private boolean xyz;
    private String yN;
    private String zc;
    private com.bytedance.sdk.openadsdk.cJ.ac.Tgh zn;
    private boolean hpZ = true;
    private boolean sDy = true;
    private boolean Jma = false;
    private boolean js = false;
    boolean ac = false;
    private boolean FQ = false;
    private final com.bytedance.sdk.component.utils.CQU fl = new com.bytedance.sdk.component.utils.CQU(Looper.getMainLooper(), this);

    /* compiled from: TTAndroidObject.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi();
    }

    /* compiled from: TTAndroidObject.java */
    /* loaded from: classes2.dex */
    public static class cJ {
        public JSONObject CJ;
        public String Qhi;
        public String ac;
        public String cJ;
        public int fl;
    }

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        Sf = concurrentHashMap;
        concurrentHashMap.put("log_event", Boolean.TRUE);
        concurrentHashMap.put("private", Boolean.TRUE);
        concurrentHashMap.put("dispatch_message", Boolean.TRUE);
        concurrentHashMap.put("custom_event", Boolean.TRUE);
        concurrentHashMap.put("log_event_v3", Boolean.TRUE);
    }

    public NFd Qhi(com.bytedance.sdk.openadsdk.core.widget.Qhi.Qhi qhi) {
        this.PAe = qhi;
        return this;
    }

    public NFd(Context context) {
        this.MND = context;
    }

    public NFd cJ(String str) {
        this.Tgh = str;
        return this;
    }

    public NFd Qhi(com.bytedance.sdk.openadsdk.core.widget.ac acVar) {
        this.ROR = acVar;
        return this;
    }

    public NFd Qhi(SSWebView sSWebView) {
        WebView webView = sSWebView.getWebView();
        if (webView == null) {
            return this;
        }
        try {
            com.bytedance.sdk.component.Qhi.kYc cJ2 = com.bytedance.sdk.component.Qhi.kYc.Qhi(webView).Qhi(new com.bytedance.sdk.openadsdk.hm.Qhi()).Qhi("ToutiaoJSBridge").Qhi(new com.bytedance.sdk.component.Qhi.ABk() { // from class: com.bytedance.sdk.openadsdk.core.NFd.1
                @Override // com.bytedance.sdk.component.Qhi.ABk
                public <T> T Qhi(String str, Type type) {
                    return null;
                }

                @Override // com.bytedance.sdk.component.Qhi.ABk
                public <T> String Qhi(T t) {
                    return null;
                }
            }).Qhi(hm.cJ().HzH()).cJ(true).Qhi().cJ();
            this.es = cJ2;
            com.bytedance.sdk.openadsdk.hm.Qhi.Tgh.Qhi(cJ2, this);
            com.bytedance.sdk.openadsdk.hm.Qhi.Qhi.Qhi(this.es, this);
            com.bytedance.sdk.openadsdk.hm.Qhi.cJ.Qhi(this.es, this);
            com.bytedance.sdk.openadsdk.hm.Qhi.ac.Qhi(this.es, this);
            com.bytedance.sdk.openadsdk.hm.Qhi.fl.Qhi(this.es, this);
            com.bytedance.sdk.openadsdk.hm.Qhi.Sf.Qhi(this.es, this);
            com.bytedance.sdk.openadsdk.hm.Qhi.WAv.Qhi(this.es, this);
            com.bytedance.sdk.openadsdk.hm.Qhi.hm.Qhi(this.es, sSWebView);
            com.bytedance.sdk.openadsdk.hm.Qhi.ROR.Qhi(this.es, this);
        } catch (Exception unused) {
        }
        return this;
    }

    public com.bytedance.sdk.component.Qhi.kYc Qhi() {
        return this.es;
    }

    private WebView ABk() {
        SSWebView sSWebView;
        WeakReference<SSWebView> weakReference = this.CJ;
        if (weakReference == null || (sSWebView = weakReference.get()) == null) {
            return null;
        }
        return sSWebView.getWebView();
    }

    public NFd cJ(SSWebView sSWebView) {
        this.CJ = new WeakReference<>(sSWebView);
        return this;
    }

    public NFd Qhi(com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh) {
        this.zn = tgh;
        return this;
    }

    public NFd Qhi(boolean z) {
        this.cJ = z;
        return this;
    }

    public NFd cJ(boolean z) {
        this.js = z;
        return this;
    }

    public NFd ac(String str) {
        this.WAv = str;
        return this;
    }

    public NFd Qhi(View view) {
        this.Gm = new WeakReference<>(view);
        return this;
    }

    @JProtect
    private JSONObject iMK() {
        View view;
        SSWebView sSWebView;
        try {
            view = this.Gm.get();
            sSWebView = this.CJ.get();
        } catch (Throwable unused) {
        }
        if (view == null || sSWebView == null) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.AndroidObject", "setCloseButtonInfo error closeButton is null");
            return null;
        }
        int[] cJ2 = zn.cJ(view);
        int[] cJ3 = zn.cJ((View) sSWebView);
        if (cJ2 != null && cJ3 != null) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("x", zn.ac(HzH.Qhi(), cJ2[0] - cJ3[0]));
            jSONObject.put("y", zn.ac(HzH.Qhi(), cJ2[1] - cJ3[1]));
            jSONObject.put("w", zn.ac(HzH.Qhi(), view.getWidth()));
            jSONObject.put("h", zn.ac(HzH.Qhi(), view.getHeight()));
            jSONObject.put("isExist", true);
            return jSONObject;
        }
        com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.AndroidObject", "setCloseButtonInfo error position or webViewPosition is null");
        return null;
    }

    public NFd Qhi(int i) {
        this.pA = i;
        return this;
    }

    public void cJ() {
        com.bytedance.sdk.component.Qhi.kYc kyc = this.es;
        if (kyc == null) {
            return;
        }
        kyc.Qhi();
        this.es = null;
    }

    public NFd Qhi(com.bytedance.sdk.openadsdk.core.model.tP tPVar) {
        this.HzH = tPVar;
        if (tPVar != null) {
            this.kYc = tPVar.et();
        }
        return this;
    }

    public NFd Qhi(com.bytedance.sdk.openadsdk.WAv.cJ cJVar) {
        this.aP = cJVar;
        return this;
    }

    public NFd Qhi(com.bytedance.sdk.openadsdk.WAv.WAv wAv) {
        this.NFd = wAv;
        return this;
    }

    public com.bytedance.sdk.openadsdk.core.model.tP ac() {
        return this.HzH;
    }

    public boolean CJ() {
        com.bytedance.sdk.openadsdk.core.model.tP tPVar = this.HzH;
        return tPVar != null && tPVar.bxS();
    }

    public NFd CJ(String str) {
        this.zc = str;
        return this;
    }

    public NFd cJ(int i) {
        this.ABk = i;
        return this;
    }

    public NFd fl(String str) {
        this.iMK = str;
        return this;
    }

    private List<String> pA() {
        return Arrays.asList("appInfo", "adInfo", "getTemplateInfo", "getTeMaiAds");
    }

    public NFd Qhi(Map<String, Object> map) {
        this.Qhi = map;
        return this;
    }

    public NFd Qhi(com.bytedance.sdk.component.adexpress.cJ.zc zcVar) {
        this.tP = zcVar;
        return this;
    }

    public NFd Qhi(com.bytedance.sdk.openadsdk.core.nativeexpress.ABk aBk) {
        this.MQ = aBk;
        return this;
    }

    public NFd Qhi(com.bytedance.sdk.openadsdk.Sf.fl flVar) {
        this.EBS = flVar;
        return this;
    }

    public NFd Qhi(com.bytedance.sdk.openadsdk.core.cJ.fl flVar) {
        this.Eh = flVar;
        return this;
    }

    public NFd Qhi(JSONObject jSONObject) {
        this.qMt = jSONObject;
        return this;
    }

    public NFd Qhi(com.bytedance.sdk.openadsdk.WAv.Qhi qhi) {
        this.bxS = qhi;
        return this;
    }

    public NFd Qhi(com.bytedance.sdk.openadsdk.WAv.Tgh tgh) {
        this.Dww = tgh;
        return this;
    }

    public NFd Qhi(com.bytedance.sdk.openadsdk.WAv.fl flVar) {
        this.CQU = flVar;
        return this;
    }

    public NFd Qhi(List<com.bytedance.sdk.openadsdk.core.model.tP> list) {
        this.lB = list;
        return this;
    }

    public NFd Qhi(com.bytedance.sdk.openadsdk.WAv.ROR ror) {
        this.ip = ror;
        return this;
    }

    public boolean fl() {
        return this.ac;
    }

    @JProtect
    private void Qhi(JSONObject jSONObject, int i) throws Exception {
        JSONArray jSONArray = new JSONArray();
        for (String str : pA()) {
            jSONArray.put(str);
        }
        jSONObject.put("appName", com.bytedance.sdk.openadsdk.common.Qhi.Qhi());
        jSONObject.put("innerAppName", com.bytedance.sdk.openadsdk.common.Qhi.fl());
        jSONObject.put("aid", com.bytedance.sdk.openadsdk.common.Qhi.cJ());
        jSONObject.put("sdkEdition", com.bytedance.sdk.openadsdk.common.Qhi.ac());
        jSONObject.put("appVersion", com.bytedance.sdk.openadsdk.common.Qhi.CJ());
        jSONObject.put("netType", com.bytedance.sdk.openadsdk.common.Qhi.Tgh());
        jSONObject.put("supportList", jSONArray);
        jSONObject.put("deviceId", com.bytedance.sdk.openadsdk.common.Qhi.Qhi(HzH.Qhi()));
        if (DeviceUtils.cJ(HzH.Qhi())) {
            jSONObject.put("device_platform", "Android_Pad");
        } else {
            jSONObject.put("device_platform", APSAnalytics.OS_NAME);
        }
        jSONObject.put(OSOutcomeConstants.DEVICE_TYPE, Build.VERSION.RELEASE);
    }

    private void ROR(JSONObject jSONObject) throws Exception {
        if (this.xyz) {
            com.bytedance.sdk.openadsdk.core.model.tP tPVar = this.HzH;
            if ((tPVar instanceof com.bytedance.sdk.openadsdk.core.model.MQ) && ((com.bytedance.sdk.openadsdk.core.model.MQ) tPVar).mvd()) {
                JSONArray jSONArray = new JSONArray();
                jSONObject.put("adInfos", jSONArray);
                for (com.bytedance.sdk.openadsdk.core.model.tP tPVar2 : ((com.bytedance.sdk.openadsdk.core.model.MQ) this.HzH).Gf()) {
                    JSONObject jSONObject2 = new JSONObject();
                    Qhi(jSONObject2, tPVar2);
                    jSONArray.put(jSONObject2);
                }
                return;
            }
        }
        Qhi(jSONObject, this.HzH);
    }

    private static void Qhi(JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.model.tP tPVar) throws Exception {
        String HLI = tPVar.HLI();
        if (!TextUtils.isEmpty(HLI)) {
            jSONObject.put("cid", HLI);
        }
        String EGK = tPVar.EGK();
        if (!TextUtils.isEmpty(EGK)) {
            jSONObject.put("log_extra", EGK);
        }
        String bIO = tPVar.bIO();
        if (!TextUtils.isEmpty(bIO)) {
            jSONObject.put("download_url", bIO);
        }
        jSONObject.put("dc", TextUtils.isEmpty(HzH.CJ().PAe()) ? HzH.CJ().PAe() : "SG");
        jSONObject.put("language", zc.Qhi());
        jSONObject.put("isRTL", com.bytedance.sdk.openadsdk.core.settings.HzH.YD().EGK());
    }

    private void Sf(JSONObject jSONObject) throws Exception {
        if (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.model.bxS.CJ(this.HzH))) {
            return;
        }
        jSONObject.put("playable_style", com.bytedance.sdk.openadsdk.core.model.bxS.CJ(this.HzH));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x034e, code lost:
        if (r4 != null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x0399, code lost:
        if (r4 != null) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:225:0x039b, code lost:
        r3 = r4;
     */
    @com.bytedance.JProtect
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.json.JSONObject Qhi(com.bytedance.sdk.openadsdk.core.NFd.cJ r23, int r24) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 1322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.NFd.Qhi(com.bytedance.sdk.openadsdk.core.NFd$cJ, int):org.json.JSONObject");
    }

    private void Qhi(JSONObject jSONObject, boolean z, String str) {
        com.bytedance.sdk.openadsdk.core.widget.ac acVar;
        if (z) {
            try {
                String optString = jSONObject.optString("ad_extra_data");
                if (TextUtils.isEmpty(optString) || new JSONObject(optString).optInt("agg_request_type", -1) != 1 || !Constants.CLICK.equals(str) || (acVar = this.ROR) == null) {
                    return;
                }
                acVar.Qhi();
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.AndroidObject", "callAggClickListener faile", th);
            }
        }
    }

    private boolean Qhi(JSONObject jSONObject, JSONObject jSONObject2) {
        String str;
        int i;
        String str2;
        if (jSONObject != null) {
            i = jSONObject.optInt("landingStyle");
            str = jSONObject.optString("url");
            str2 = jSONObject.optString("fallback_url");
        } else {
            str = null;
            i = -1;
            str2 = null;
        }
        boolean z = false;
        if (i == 1) {
            if (!com.bytedance.sdk.component.utils.hpZ.Qhi(str)) {
                try {
                    jSONObject2.put("invalid_url", 1);
                } catch (JSONException e2) {
                    com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.AndroidObject", "handleUrl, EX1->: ", e2);
                }
                return z;
            }
        } else if (i == 2) {
            try {
                if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                    jSONObject2.put("empty_url", 1);
                } else if (!com.bytedance.sdk.component.utils.hpZ.Qhi(str2)) {
                    jSONObject2.put("invalid_url", 1);
                }
            } catch (JSONException e3) {
                com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.AndroidObject", "handleUrl, EX2->: ", e3);
            }
            return z;
        }
        z = true;
        return z;
    }

    public void Tgh() {
        com.bytedance.sdk.openadsdk.WAv.cJ cJVar;
        if (this.jPH && (cJVar = this.aP) != null) {
            cJVar.Qhi();
            return;
        }
        Context context = this.MND;
        if ((context instanceof Activity) && com.bytedance.sdk.openadsdk.utils.MQ.Qhi((Activity) context)) {
            ((Activity) this.MND).finish();
        }
    }

    public void cJ(JSONObject jSONObject) {
        kYc.Qhi(hpZ(), this.MND instanceof Activity, jSONObject, this.HzH, this.yN, this.ABk, ABk(), this.ROR);
    }

    private Context hpZ() {
        WeakReference<SSWebView> weakReference = this.CJ;
        Activity Qhi2 = (weakReference == null || weakReference.get() == null) ? null : com.bytedance.sdk.component.utils.cJ.Qhi(this.CJ.get());
        return Qhi2 == null ? this.MND : Qhi2;
    }

    private void hm(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.cJ.ac.Tgh tgh;
        if (jSONObject == null || (tgh = this.zn) == null) {
            return;
        }
        tgh.cJ(jSONObject);
    }

    private void Qhi(String str, boolean z) {
        if (this.zn == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (z) {
            this.zn.Qhi(str);
        } else {
            this.zn.cJ(str);
        }
    }

    private void HzH() {
        com.bytedance.sdk.openadsdk.WAv.WAv wAv = this.NFd;
        if (wAv == null) {
            return;
        }
        wAv.Qhi();
    }

    private void kYc() {
        com.bytedance.sdk.openadsdk.WAv.WAv wAv = this.NFd;
        if (wAv == null) {
            return;
        }
        wAv.cJ();
    }

    private void WAv(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.WAv.cJ cJVar = this.aP;
        if (cJVar == null || jSONObject == null) {
            return;
        }
        cJVar.Qhi(jSONObject.optBoolean("isRenderSuc", false), jSONObject.optInt("code", -1), jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE, ""));
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.cJ
    @JavascriptInterface
    public String adInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            ROR(jSONObject);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.cJ
    @JavascriptInterface
    public String appInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            Qhi(jSONObject, 0);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.cJ
    @JavascriptInterface
    public String getTemplateInfo() {
        Qhi("getTemplateInfo", true);
        try {
            JSONObject jSONObject = this.qMt;
            if (jSONObject != null) {
                jSONObject.put("setting", qMt());
                com.bytedance.sdk.openadsdk.core.model.tP tPVar = this.HzH;
                if (tPVar != null) {
                    this.qMt.put("extension", tPVar.wp());
                }
            }
            Qhi("getTemplateInfo", false);
            return this.qMt.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.cJ
    @JavascriptInterface
    public void renderDidFinish(String str) {
        try {
            iMK(new JSONObject(str));
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.cJ
    @JavascriptInterface
    public void muteVideo(String str) {
        try {
            final JSONObject jSONObject = new JSONObject(str);
            com.bytedance.sdk.openadsdk.utils.lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.NFd.3
                @Override // java.lang.Runnable
                public void run() {
                    NFd.this.Gm(jSONObject);
                }
            });
        } catch (Exception unused) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.AndroidObject", "");
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.cJ
    @JavascriptInterface
    public void dynamicTrack(String str) {
        try {
            hpZ(new JSONObject(str));
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.cJ
    @JavascriptInterface
    public void changeVideoState(String str) {
        try {
            final JSONObject jSONObject = new JSONObject(str);
            com.bytedance.sdk.openadsdk.utils.lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.NFd.4
                @Override // java.lang.Runnable
                public void run() {
                    NFd.this.zc(jSONObject);
                }
            });
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.cJ
    @JavascriptInterface
    public void clickEvent(String str) {
        try {
            final JSONObject jSONObject = new JSONObject(str);
            com.bytedance.sdk.openadsdk.utils.lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.NFd.5
                @Override // java.lang.Runnable
                public void run() {
                    NFd.this.ac(jSONObject);
                }
            });
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.cJ
    @JavascriptInterface
    public void skipVideo() {
        com.bytedance.sdk.openadsdk.utils.lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.NFd.6
            @Override // java.lang.Runnable
            public void run() {
                NFd.this.tP();
            }
        });
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.cJ
    @JavascriptInterface
    public String getCurrentVideoState() {
        JSONObject jSONObject = new JSONObject();
        ABk(jSONObject);
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.cJ
    @JavascriptInterface
    public void initRenderFinish() {
        com.bytedance.sdk.openadsdk.utils.lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.NFd.7
            @Override // java.lang.Runnable
            public void run() {
                if (NFd.this.PAe != null) {
                    NFd.this.PAe.Qhi();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.cJ
    public void Qhi(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt("time");
            String optString = jSONObject.optString("flag");
            com.bytedance.sdk.openadsdk.core.nativeexpress.ABk aBk = this.MQ;
            if (aBk != null) {
                aBk.Qhi(optInt, optString);
            }
        } catch (JSONException unused) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.AndroidObject", "requestPauseVideo json exception");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void tP() {
        com.bytedance.sdk.openadsdk.core.nativeexpress.ABk aBk = this.MQ;
        if (aBk != null) {
            aBk.Qhi();
        }
    }

    private void MQ() {
        if (this.MND == null || TextUtils.isEmpty(HzH.CJ().es())) {
            return;
        }
        TTWebsiteActivity.Qhi(this.MND, this.HzH, this.yN);
    }

    public void ROR() {
        com.bytedance.sdk.openadsdk.core.nativeexpress.ABk aBk = this.MQ;
        if (aBk != null) {
            aBk.cJ();
        }
    }

    public void Tgh(String str) {
        this.yN = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Gm(JSONObject jSONObject) {
        if (this.MQ != null && jSONObject != null) {
            try {
                this.MQ.Qhi(jSONObject.optBoolean("mute", false));
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zc(JSONObject jSONObject) {
        if (this.MQ != null && jSONObject != null) {
            try {
                this.MQ.Qhi(jSONObject.optInt("stateType", -1));
            } catch (Exception unused) {
            }
        }
    }

    private boolean ABk(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.nativeexpress.ABk aBk = this.MQ;
        if (aBk != null && jSONObject != null) {
            double ac = aBk.ac();
            int CJ = this.MQ.CJ();
            try {
                jSONObject.put("currentTime", ac / 1000.0d);
                jSONObject.put(AdOperationMetric.INIT_STATE, CJ);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00ac A[Catch: Exception -> 0x00d2, TryCatch #0 {Exception -> 0x00d2, blocks: (B:5:0x000c, B:7:0x0011, B:9:0x0017, B:11:0x001b, B:13:0x0021, B:15:0x004e, B:24:0x0067, B:26:0x0080, B:28:0x009a, B:32:0x00a3, B:34:0x00ac, B:36:0x00b2, B:38:0x00c4, B:41:0x00cf, B:25:0x0074), top: B:44:0x000c }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b1  */
    @com.bytedance.JProtect
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.json.JSONObject qMt() {
        /*
            r10 = this;
            org.json.JSONObject r0 = new org.json.JSONObject
            r0.<init>()
            com.bytedance.sdk.openadsdk.core.settings.ROR r1 = com.bytedance.sdk.openadsdk.core.HzH.CJ()
            if (r1 != 0) goto Lc
            return r0
        Lc:
            com.bytedance.sdk.openadsdk.core.model.tP r1 = r10.HzH     // Catch: java.lang.Exception -> Ld2
            r2 = 0
            if (r1 == 0) goto L16
            int r1 = r1.Hy()     // Catch: java.lang.Exception -> Ld2
            goto L17
        L16:
            r1 = r2
        L17:
            com.bytedance.sdk.openadsdk.core.model.tP r3 = r10.HzH     // Catch: java.lang.Exception -> Ld2
            if (r3 == 0) goto L20
            int r3 = r3.sqa()     // Catch: java.lang.Exception -> Ld2
            goto L21
        L20:
            r3 = r2
        L21:
            com.bytedance.sdk.openadsdk.core.settings.ROR r4 = com.bytedance.sdk.openadsdk.core.HzH.CJ()     // Catch: java.lang.Exception -> Ld2
            java.lang.String r5 = java.lang.String.valueOf(r1)     // Catch: java.lang.Exception -> Ld2
            int r4 = r4.WAv(r5)     // Catch: java.lang.Exception -> Ld2
            com.bytedance.sdk.openadsdk.core.settings.ROR r5 = com.bytedance.sdk.openadsdk.core.HzH.CJ()     // Catch: java.lang.Exception -> Ld2
            java.lang.String r6 = java.lang.String.valueOf(r1)     // Catch: java.lang.Exception -> Ld2
            int r5 = r5.tP(r6)     // Catch: java.lang.Exception -> Ld2
            com.bytedance.sdk.openadsdk.core.settings.ROR r6 = com.bytedance.sdk.openadsdk.core.HzH.CJ()     // Catch: java.lang.Exception -> Ld2
            java.lang.String r7 = java.lang.String.valueOf(r1)     // Catch: java.lang.Exception -> Ld2
            boolean r6 = r6.Tgh(r7)     // Catch: java.lang.Exception -> Ld2
            com.bytedance.sdk.openadsdk.core.model.tP r7 = r10.HzH     // Catch: java.lang.Exception -> Ld2
            boolean r7 = com.bytedance.sdk.openadsdk.core.model.tP.fl(r7)     // Catch: java.lang.Exception -> Ld2
            r8 = 1
            if (r7 != 0) goto L5e
            com.bytedance.sdk.openadsdk.core.settings.ROR r7 = com.bytedance.sdk.openadsdk.core.HzH.CJ()     // Catch: java.lang.Exception -> Ld2
            java.lang.String r9 = java.lang.String.valueOf(r1)     // Catch: java.lang.Exception -> Ld2
            int r7 = r7.ABk(r9)     // Catch: java.lang.Exception -> Ld2
            if (r7 != r8) goto L5e
            r7 = r8
            goto L5f
        L5e:
            r7 = r2
        L5f:
            r9 = 7
            if (r3 == r9) goto L74
            r9 = 8
            if (r3 != r9) goto L67
            goto L74
        L67:
            com.bytedance.sdk.openadsdk.core.settings.ROR r3 = com.bytedance.sdk.openadsdk.core.HzH.CJ()     // Catch: java.lang.Exception -> Ld2
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.lang.Exception -> Ld2
            boolean r1 = r3.ac(r1)     // Catch: java.lang.Exception -> Ld2
            goto L80
        L74:
            com.bytedance.sdk.openadsdk.core.settings.ROR r3 = com.bytedance.sdk.openadsdk.core.HzH.CJ()     // Catch: java.lang.Exception -> Ld2
            java.lang.String r1 = java.lang.String.valueOf(r1)     // Catch: java.lang.Exception -> Ld2
            boolean r1 = r3.HzH(r1)     // Catch: java.lang.Exception -> Ld2
        L80:
            java.lang.String r3 = "voice_control"
            r0.put(r3, r1)     // Catch: java.lang.Exception -> Ld2
            java.lang.String r1 = "rv_skip_time"
            r0.put(r1, r4)     // Catch: java.lang.Exception -> Ld2
            java.lang.String r1 = "fv_skip_show"
            r0.put(r1, r6)     // Catch: java.lang.Exception -> Ld2
            java.lang.String r1 = "iv_skip_time"
            r0.put(r1, r5)     // Catch: java.lang.Exception -> Ld2
            java.lang.String r1 = "show_dislike"
            com.bytedance.sdk.openadsdk.core.model.tP r3 = r10.HzH     // Catch: java.lang.Exception -> Ld2
            if (r3 == 0) goto La2
            boolean r3 = r3.rB()     // Catch: java.lang.Exception -> Ld2
            if (r3 == 0) goto La2
            r3 = r8
            goto La3
        La2:
            r3 = r2
        La3:
            r0.put(r1, r3)     // Catch: java.lang.Exception -> Ld2
            java.lang.String r1 = "video_adaptation"
            com.bytedance.sdk.openadsdk.core.model.tP r3 = r10.HzH     // Catch: java.lang.Exception -> Ld2
            if (r3 == 0) goto Lb1
            int r3 = r3.aP()     // Catch: java.lang.Exception -> Ld2
            goto Lb2
        Lb1:
            r3 = r2
        Lb2:
            r0.put(r1, r3)     // Catch: java.lang.Exception -> Ld2
            java.lang.String r1 = "skip_change_to_close"
            r0.put(r1, r7)     // Catch: java.lang.Exception -> Ld2
            java.lang.String r1 = "bar_render_platform"
            com.bytedance.sdk.openadsdk.core.model.tP r3 = r10.HzH     // Catch: java.lang.Exception -> Ld2
            boolean r3 = r3.hU()     // Catch: java.lang.Exception -> Ld2
            if (r3 == 0) goto Lcf
            com.bytedance.sdk.openadsdk.core.settings.ROR r3 = com.bytedance.sdk.openadsdk.core.settings.HzH.YD()     // Catch: java.lang.Exception -> Ld2
            boolean r3 = r3.gT()     // Catch: java.lang.Exception -> Ld2
            if (r3 == 0) goto Lcf
            r2 = r8
        Lcf:
            r0.put(r1, r2)     // Catch: java.lang.Exception -> Ld2
        Ld2:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.NFd.qMt():org.json.JSONObject");
    }

    public void ac(JSONObject jSONObject) {
        String str;
        double d2;
        double d3;
        double d4;
        double d5;
        double d6;
        double d7;
        double d8;
        double d9;
        double d10;
        JSONObject jSONObject2;
        if (jSONObject == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.utils.qMt.Qhi("TTAD.AndroidObject", "trigger Class1 method1");
        try {
            String optString = jSONObject.optString("adId");
            int optInt = jSONObject.optInt("areaType", 1);
            String optString2 = jSONObject.optString("clickAreaType");
            JSONObject optJSONObject = jSONObject.optJSONObject("clickInfo");
            double d11 = 0.0d;
            if (optJSONObject != null) {
                double optDouble = optJSONObject.optDouble("down_x", 0.0d);
                d4 = optJSONObject.optDouble("down_y", 0.0d);
                double optDouble2 = optJSONObject.optDouble("up_x", 0.0d);
                double optDouble3 = optJSONObject.optDouble("up_y", 0.0d);
                double optDouble4 = optJSONObject.optDouble("down_time", 0.0d);
                double optDouble5 = optJSONObject.optDouble("up_time", 0.0d);
                double optDouble6 = optJSONObject.optDouble("button_x", 0.0d);
                double optDouble7 = optJSONObject.optDouble("button_y", 0.0d);
                double optDouble8 = optJSONObject.optDouble("button_width", 0.0d);
                double optDouble9 = optJSONObject.optDouble("button_height", 0.0d);
                jSONObject2 = optJSONObject.optJSONObject("rectInfo");
                d10 = optDouble9;
                d11 = optDouble;
                d3 = optDouble2;
                d5 = optDouble4;
                d6 = optDouble5;
                d7 = optDouble6;
                d8 = optDouble7;
                d9 = optDouble8;
                str = optString;
                d2 = optDouble3;
            } else {
                str = optString;
                d2 = 0.0d;
                d3 = 0.0d;
                d4 = 0.0d;
                d5 = 0.0d;
                d6 = 0.0d;
                d7 = 0.0d;
                d8 = 0.0d;
                d9 = 0.0d;
                d10 = 0.0d;
                jSONObject2 = null;
            }
            com.bytedance.sdk.openadsdk.core.model.pA Qhi2 = new pA.Qhi().CJ((float) d11).ac((float) d4).cJ((float) d3).Qhi((float) d2).cJ((long) d5).Qhi((long) d6).ac((int) d7).CJ((int) d8).fl((int) d9).Tgh((int) d10).Qhi(optString2).Qhi((SparseArray<ac.Qhi>) null).Qhi(true).cJ(optInt).Qhi(jSONObject2).Qhi(jSONObject.optInt("clickAreaCategory", -1)).cJ(optJSONObject).Qhi();
            com.bytedance.sdk.component.adexpress.cJ.zc zcVar = this.tP;
            if (zcVar != null) {
                zcVar.Qhi(null, optInt, Qhi2);
            }
            Qhi(str, optInt, Qhi2);
        } catch (Exception unused) {
            com.bytedance.sdk.component.adexpress.cJ.zc zcVar2 = this.tP;
            if (zcVar2 != null) {
                zcVar2.Qhi(null, -1, null);
            }
        }
    }

    @JProtect
    private void iMK(JSONObject jSONObject) {
        int i;
        double d2;
        double d3;
        JSONObject optJSONObject;
        boolean z;
        double d4;
        String optString;
        int optInt;
        com.bytedance.sdk.openadsdk.WAv.ROR ror;
        NFd nFd = this;
        if (nFd.tP == null || jSONObject == null) {
            return;
        }
        com.bytedance.sdk.component.adexpress.cJ.pA pAVar = new com.bytedance.sdk.component.adexpress.cJ.pA();
        pAVar.Qhi(1);
        try {
            boolean optBoolean = jSONObject.optBoolean("isRenderSuc");
            JSONObject optJSONObject2 = jSONObject.optJSONObject("AdSize");
            if (optJSONObject2 != null) {
                d2 = optJSONObject2.optDouble(IabUtils.KEY_WIDTH);
                d3 = optJSONObject2.optDouble(IabUtils.KEY_HEIGHT);
            } else {
                d2 = 0.0d;
                d3 = 0.0d;
            }
            optJSONObject = jSONObject.optJSONObject("videoInfo");
            if (optJSONObject != null) {
                try {
                    double optDouble = optJSONObject.optDouble("x");
                    double optDouble2 = optJSONObject.optDouble("y");
                    z = optBoolean;
                    double optDouble3 = optJSONObject.optDouble(IabUtils.KEY_WIDTH);
                    double optDouble4 = optJSONObject.optDouble(IabUtils.KEY_HEIGHT);
                    if (nFd.pA(optJSONObject)) {
                        d4 = d3;
                        pAVar.Qhi((float) optJSONObject.optDouble("borderRadiusTopLeft"));
                        pAVar.cJ((float) optJSONObject.optDouble("borderRadiusTopRight"));
                        pAVar.ac((float) optJSONObject.optDouble("borderRadiusBottomLeft"));
                        pAVar.CJ((float) optJSONObject.optDouble("borderRadiusBottomRight"));
                    } else {
                        d4 = d3;
                    }
                    pAVar.ac(optDouble);
                    pAVar.CJ(optDouble2);
                    pAVar.fl(optDouble3);
                    pAVar.Tgh(optDouble4);
                } catch (Exception unused) {
                    i = 101;
                    nFd = this;
                    pAVar.cJ(i);
                    pAVar.Qhi(Sf.Qhi(i));
                    nFd.tP.Qhi(pAVar);
                }
            } else {
                z = optBoolean;
                d4 = d3;
            }
            try {
                optString = jSONObject.optString("message", Sf.Qhi(101));
                optInt = jSONObject.optInt("code", 101);
            } catch (Exception unused2) {
                nFd = this;
                i = 101;
                pAVar.cJ(i);
                pAVar.Qhi(Sf.Qhi(i));
                nFd.tP.Qhi(pAVar);
            }
        } catch (Exception unused3) {
        }
        try {
            pAVar.Qhi(z);
            pAVar.Qhi(d2);
            pAVar.cJ(d4);
            pAVar.Qhi(optString);
            pAVar.cJ(optInt);
            nFd = this;
            nFd.tP.Qhi(pAVar);
            if (optJSONObject == null || (ror = nFd.ip) == null) {
                return;
            }
            ror.Qhi(pAVar);
        } catch (Exception unused4) {
            nFd = this;
            i = 101;
            pAVar.cJ(i);
            pAVar.Qhi(Sf.Qhi(i));
            nFd.tP.Qhi(pAVar);
        }
    }

    private boolean pA(JSONObject jSONObject) {
        return jSONObject.has("borderRadiusTopLeft") && jSONObject.has("borderRadiusBottomLeft") && jSONObject.has("borderRadiusTopRight") && jSONObject.has("borderRadiusBottomRight");
    }

    private void hpZ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            Uri parse = Uri.parse(jSONObject.optString("trackData"));
            if ("bytedance".equals(parse.getScheme().toLowerCase())) {
                com.bytedance.sdk.openadsdk.utils.HzH.Qhi(parse, this);
            }
        } catch (Exception unused) {
        }
    }

    private void HzH(JSONObject jSONObject) {
        if (jSONObject == null || this.EBS == null) {
            return;
        }
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("temaiProductIds");
            if (optJSONArray != null && optJSONArray.length() > 0) {
                this.EBS.Qhi(true, optJSONArray);
            } else {
                this.EBS.Qhi(false, null);
            }
        } catch (Exception unused) {
            this.EBS.Qhi(false, null);
        }
    }

    private boolean kYc(JSONObject jSONObject) {
        try {
            jSONObject.put("creatives", cJ(this.lB));
        } catch (Exception unused) {
        }
        return true;
    }

    private void Qhi(final cJ cJVar, final JSONObject jSONObject) {
        if (cJVar == null) {
            return;
        }
        try {
            Qhi(cJVar.CJ, new com.bytedance.sdk.openadsdk.WAv.ac() { // from class: com.bytedance.sdk.openadsdk.core.NFd.8
                @Override // com.bytedance.sdk.openadsdk.WAv.ac
                public void Qhi(boolean z, List<com.bytedance.sdk.openadsdk.core.model.tP> list) {
                    if (!z) {
                        NFd.this.cJ(cJVar.cJ, jSONObject);
                        return;
                    }
                    try {
                        jSONObject.put("creatives", NFd.cJ(list));
                        NFd.this.cJ(cJVar.cJ, jSONObject);
                    } catch (Exception unused) {
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    @JProtect
    private boolean Qhi(String str, int i, com.bytedance.sdk.openadsdk.core.model.pA pAVar) {
        HashMap<String, WAv> hashMap;
        if (TextUtils.isEmpty(str) || (hashMap = this.lG) == null || hashMap.get(str) == null) {
            return false;
        }
        throw null;
    }

    @JProtect
    public void Qhi(JSONObject jSONObject, final com.bytedance.sdk.openadsdk.WAv.ac acVar) {
        if (acVar == null) {
            return;
        }
        try {
            final com.bytedance.sdk.openadsdk.WAv.ac acVar2 = new com.bytedance.sdk.openadsdk.WAv.ac() { // from class: com.bytedance.sdk.openadsdk.core.NFd.9
                @Override // com.bytedance.sdk.openadsdk.WAv.ac
                public void Qhi(final boolean z, final List<com.bytedance.sdk.openadsdk.core.model.tP> list) {
                    com.bytedance.sdk.openadsdk.utils.lG.Qhi(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.NFd.9.1
                        @Override // java.lang.Runnable
                        public void run() {
                            acVar.Qhi(z, list);
                        }
                    });
                }
            };
            if (this.HzH != null && !TextUtils.isEmpty(this.zc)) {
                int sqa = this.HzH.sqa();
                AdSlot lB = this.HzH.lB();
                com.bytedance.sdk.openadsdk.core.model.qMt qmt = new com.bytedance.sdk.openadsdk.core.model.qMt();
                qmt.Tgh = true;
                if (this.HzH.es() != null) {
                    qmt.Sf = 2;
                }
                JSONObject jSONObject2 = this.kYc;
                if (jSONObject2 == null) {
                    jSONObject2 = new JSONObject();
                }
                if (jSONObject != null) {
                    Iterator<String> keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        jSONObject2.put(next, jSONObject.opt(next));
                    }
                }
                qmt.ROR = jSONObject2;
                HzH.ac().Qhi(lB, qmt, sqa, new tP.Qhi() { // from class: com.bytedance.sdk.openadsdk.core.NFd.10
                    @Override // com.bytedance.sdk.openadsdk.core.tP.Qhi
                    public void Qhi(int i, String str) {
                        acVar2.Qhi(false, null);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.tP.Qhi
                    public void Qhi(com.bytedance.sdk.openadsdk.core.model.Qhi qhi, com.bytedance.sdk.openadsdk.core.model.cJ cJVar) {
                        if (qhi.ac() != null && !qhi.ac().isEmpty()) {
                            com.bytedance.sdk.openadsdk.core.model.tP tPVar = qhi.ac().get(0);
                            if (tPVar != null) {
                                NFd.this.kYc = tPVar.et();
                            }
                            acVar2.Qhi(true, qhi.ac());
                            return;
                        }
                        acVar2.Qhi(false, null);
                        cJVar.Qhi(-3);
                        com.bytedance.sdk.openadsdk.core.model.cJ.Qhi(cJVar);
                    }
                });
                return;
            }
            acVar2.Qhi(false, null);
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ABk.Qhi("TTAD.AndroidObject", "get ads error", e2);
        }
    }

    public static JSONArray cJ(List<com.bytedance.sdk.openadsdk.core.model.tP> list) {
        JSONArray jSONArray = new JSONArray();
        if (list == null) {
            return jSONArray;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            jSONArray.put(list.get(i).mZ());
        }
        return jSONArray;
    }

    private boolean EBS() {
        com.bytedance.sdk.openadsdk.core.model.tP tPVar = this.HzH;
        if (tPVar == null || tPVar.et() == null || com.bytedance.sdk.openadsdk.core.model.bxS.cJ(this.HzH) || this.Jma || this.HzH.et().optInt("parent_type") != 2) {
            return false;
        }
        int sqa = this.HzH.sqa();
        if (sqa == 8 || sqa == 7) {
            this.Jma = true;
            return true;
        }
        return false;
    }

    public void ac(boolean z) {
        this.ac = z;
    }

    public boolean Sf() {
        return this.FQ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(String str, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", "callback");
            jSONObject2.put("__callback_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            tP(jSONObject2);
        } catch (Exception unused) {
        }
    }

    private void tP(JSONObject jSONObject) {
        WebView ABk;
        if (jSONObject == null || (ABk = ABk()) == null) {
            return;
        }
        com.bytedance.sdk.component.utils.zc.Qhi(ABk, "javascript:ToutiaoJSBridge._handleMessageFromToutiao(" + jSONObject + ")");
    }

    private void ac(String str, JSONObject jSONObject) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", "event");
            jSONObject2.put("__event_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            tP(jSONObject2);
        } catch (Exception unused) {
        }
    }

    private void ROR(String str) {
        try {
            JSONArray jSONArray = new JSONArray(new String(Base64.decode(str, 2)));
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                cJ cJVar = new cJ();
                try {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        cJVar.Qhi = optJSONObject.optString("__msg_type", null);
                        cJVar.cJ = optJSONObject.optString("__callback_id", null);
                        cJVar.ac = optJSONObject.optString("func");
                        cJVar.CJ = optJSONObject.optJSONObject(OutcomeEventsTable.COLUMN_NAME_PARAMS);
                        cJVar.fl = optJSONObject.optInt("JSSDK");
                    }
                } catch (Throwable unused) {
                }
                if (!TextUtils.isEmpty(cJVar.Qhi) && !TextUtils.isEmpty(cJVar.ac)) {
                    Message obtainMessage = this.fl.obtainMessage(11);
                    obtainMessage.obj = cJVar;
                    this.fl.sendMessage(obtainMessage);
                }
            }
        } catch (Exception unused2) {
        }
    }

    public boolean Qhi(Uri uri) {
        if (uri == null) {
            return false;
        }
        if ("bytedance".equals(uri.getScheme())) {
            return Sf.containsKey(uri.getHost());
        }
        return false;
    }

    public void cJ(final Uri uri) {
        try {
            String host = uri.getHost();
            if (!"log_event".equals(host) && !"custom_event".equals(host) && !"log_event_v3".equals(host)) {
                if ("private".equals(host) || "dispatch_message".equals(host)) {
                    hm(uri.toString());
                    return;
                }
                return;
            }
            com.bytedance.sdk.openadsdk.cJ.ac.Qhi(new com.bytedance.sdk.component.Sf.hm("log_event_handleUri") { // from class: com.bytedance.sdk.openadsdk.core.NFd.2
                @Override // java.lang.Runnable
                public void run() {
                    long j;
                    String str;
                    String queryParameter = uri.getQueryParameter("category");
                    String queryParameter2 = uri.getQueryParameter("tag");
                    NFd.this.yN = queryParameter2;
                    String queryParameter3 = uri.getQueryParameter("label");
                    if (NFd.this.Sf(queryParameter3)) {
                        long j2 = 0;
                        try {
                            j = Long.parseLong(uri.getQueryParameter("value"));
                        } catch (Exception unused) {
                            j = 0;
                        }
                        try {
                            j2 = Long.parseLong(uri.getQueryParameter("ext_value"));
                        } catch (Exception unused2) {
                        }
                        long j3 = j2;
                        String queryParameter4 = uri.getQueryParameter("extra");
                        JSONObject jSONObject = null;
                        if (!TextUtils.isEmpty(queryParameter4)) {
                            try {
                                JSONObject jSONObject2 = new JSONObject(queryParameter4);
                                try {
                                    jSONObject2.putOpt("ua_policy", Integer.valueOf(NFd.this.pA));
                                } catch (Exception unused3) {
                                }
                                jSONObject = jSONObject2;
                            } catch (Exception unused4) {
                            }
                        }
                        if (Constants.CLICK.equals(queryParameter3)) {
                            jSONObject = NFd.this.MQ(jSONObject);
                        }
                        if (!"landing_perf_error".equals(queryParameter3) && !"landing_perf_stats".equals(queryParameter3)) {
                            str = NFd.this.Qhi(queryParameter2, queryParameter3);
                        } else {
                            try {
                                JSONObject jSONObject3 = new JSONObject();
                                for (String str2 : uri.getQueryParameterNames()) {
                                    try {
                                        if ("extra".equals(str2)) {
                                            jSONObject3.put("ad_extra_data", new JSONObject(uri.getQueryParameter(str2)).optString("ad_extra_data"));
                                        } else {
                                            jSONObject3.put(str2, uri.getQueryParameter(str2));
                                        }
                                    } catch (Exception unused5) {
                                    }
                                }
                                str = NFd.this.Tgh;
                                jSONObject = jSONObject3;
                            } catch (Exception unused6) {
                                return;
                            }
                        }
                        com.bytedance.sdk.openadsdk.cJ.ac.Qhi(NFd.this.HzH, queryParameter, str, queryParameter3, j, j3, jSONObject, com.bytedance.sdk.openadsdk.core.model.HzH.CJ(NFd.this.HzH));
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Sf(String str) {
        if (!TextUtils.isEmpty(str) && "click_other".equals(str)) {
            return hm();
        }
        return true;
    }

    boolean hm() {
        com.bytedance.sdk.openadsdk.core.model.tP tPVar = this.HzH;
        return tPVar != null && tPVar.yN() == 1;
    }

    public void ac(int i) {
        com.bytedance.sdk.openadsdk.core.nativeexpress.ABk aBk = this.MQ;
        if (aBk != null) {
            aBk.cJ(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject MQ(JSONObject jSONObject) {
        if (this.Qhi != null) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            try {
                JSONObject jSONObject2 = new JSONObject();
                String optString = jSONObject.optString("ad_extra_data", null);
                if (optString != null) {
                    jSONObject2 = new JSONObject(optString);
                }
                for (Map.Entry<String, Object> entry : this.Qhi.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ABk.cJ(e2.toString());
            }
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String Qhi(String str, String str2) {
        if (com.bytedance.sdk.openadsdk.core.model.HzH.CJ(this.HzH)) {
            if (Constants.SHOW.equals(str2)) {
                return js.Qhi(this.ABk);
            }
            return "aggregate_page";
        } else if (this.aP != null) {
            return js.Qhi(this.ABk);
        } else {
            return this.tP == null ? js.cJ(this.ABk) : str;
        }
    }

    private void hm(String str) {
        int indexOf;
        if (str != null && str.startsWith("bytedance://")) {
            try {
                if (str.equals("bytedance://dispatch_message/")) {
                    WebView ABk = ABk();
                    if (ABk != null) {
                        com.bytedance.sdk.component.utils.zc.Qhi(ABk, "javascript:ToutiaoJSBridge._fetchQueue()");
                    }
                } else if (!str.startsWith("bytedance://private/setresult/") || (indexOf = str.indexOf(38, 30)) <= 0) {
                } else {
                    String substring = str.substring(30, indexOf);
                    String substring2 = str.substring(indexOf + 1);
                    if (!substring.equals("SCENE_FETCHQUEUE") || substring2.length() <= 0) {
                        return;
                    }
                    ROR(substring2);
                }
            } catch (Exception unused) {
            }
        }
    }

    public void WAv() {
        EBS();
    }

    public void Gm() {
        com.bytedance.sdk.openadsdk.Sf.ac acVar = this.hm;
        if (acVar != null) {
            acVar.Qhi();
        }
        this.MND = null;
        this.dIT = null;
    }

    @Override // com.bytedance.sdk.component.utils.CQU.Qhi
    public void Qhi(Message message) {
        if (message != null && message.what == 11 && (message.obj instanceof cJ)) {
            try {
                Qhi((cJ) message.obj, 1);
            } catch (Exception unused) {
            }
        }
    }

    private void bxS() {
        if (this.hm == null) {
            this.hm = com.bytedance.sdk.openadsdk.Sf.Qhi.Qhi(this, this.HzH);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.Sf.cJ
    public void Qhi(String str, JSONObject jSONObject) {
        ac(str, jSONObject);
    }

    @Override // com.bytedance.sdk.component.adexpress.fl.cJ
    @JavascriptInterface
    public void chooseAdResult(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt("video_choose");
            long optLong = jSONObject.optLong("video_choose_duration");
            com.bytedance.sdk.openadsdk.WAv.ROR ror = this.ip;
            if (ror != null) {
                ror.Qhi(optInt, optLong);
            }
        } catch (Exception unused) {
        }
    }

    public void zc() {
        Qhi qhi = this.Qe;
        if (qhi != null) {
            qhi.Qhi();
        }
    }

    public void CJ(boolean z) {
        this.xyz = z;
    }

    public void fl(boolean z) {
        this.jPH = z;
    }

    public void CJ(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.model.tP Qhi2 = com.bytedance.sdk.openadsdk.core.cJ.Qhi(jSONObject);
        if (Qhi2 != null) {
            boolean CJ = com.bytedance.sdk.openadsdk.core.model.HzH.CJ(this.HzH);
            Qhi(Qhi2, CJ ? js.cJ(this.ABk) : this.yN, !CJ);
        }
    }

    private void Qhi(com.bytedance.sdk.openadsdk.core.model.tP tPVar, String str, boolean z) {
        com.bytedance.sdk.openadsdk.core.cJ.Qhi qhi = new com.bytedance.sdk.openadsdk.core.cJ.Qhi(HzH.Qhi(), tPVar, str, this.ABk);
        qhi.Qhi(com.bytedance.sdk.openadsdk.pA.Qhi.Qhi.Tgh.Qhi(HzH.Qhi(), tPVar, str));
        if (!z) {
            qhi.Qhi(false);
        }
        qhi.onClick(null);
    }

    public JSONObject fl(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            JSONArray jSONArray = new JSONArray();
            com.bytedance.sdk.openadsdk.core.model.tP tPVar = this.HzH;
            if (tPVar instanceof com.bytedance.sdk.openadsdk.core.model.MQ) {
                List<com.bytedance.sdk.openadsdk.core.model.tP> ac = ((com.bytedance.sdk.openadsdk.core.model.MQ) tPVar).XJ().ac();
                for (int i = 0; i < ac.size(); i++) {
                    jSONArray.put(cJ(ac.get(i)));
                }
            }
            jSONObject2.put("creatives", jSONArray);
        } catch (JSONException unused) {
        }
        return jSONObject2;
    }

    private JSONObject cJ(com.bytedance.sdk.openadsdk.core.model.tP tPVar) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("is_ad_event", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
        jSONObject2.put("cid", tPVar.DS());
        jSONObject2.put("req_id", tPVar.jWV());
        jSONObject2.put("ad_id", tPVar.HLI());
        jSONObject2.put("log_extra", tPVar.EGK());
        jSONObject2.put("isRTL", com.bytedance.sdk.openadsdk.core.settings.HzH.YD().EGK());
        jSONObject.put("ad_info", jSONObject2);
        jSONObject.put("endcard_creative", tPVar.usK());
        return jSONObject;
    }

    public void Tgh(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.model.Qhi XJ;
        if (jSONObject == null) {
            return;
        }
        int optInt = jSONObject.optInt(FirebaseAnalytics.Param.INDEX);
        com.bytedance.sdk.openadsdk.core.model.tP tPVar = this.HzH;
        if (!(tPVar instanceof com.bytedance.sdk.openadsdk.core.model.MQ) || (XJ = ((com.bytedance.sdk.openadsdk.core.model.MQ) tPVar).XJ()) == null) {
            return;
        }
        List<com.bytedance.sdk.openadsdk.core.model.tP> ac = XJ.ac();
        if (optInt < 0 || optInt >= ac.size()) {
            return;
        }
        Qhi(ac.get(optInt), this.yN, false);
        com.bytedance.sdk.openadsdk.core.video.ac.cJ cJVar = this.dIT;
        if (cJVar != null) {
            cJVar.CJ();
        }
    }

    public void Qhi(com.bytedance.sdk.openadsdk.core.video.ac.cJ cJVar) {
        this.dIT = cJVar;
    }

    public void Qhi(Qhi qhi) {
        this.Qe = qhi;
    }
}
