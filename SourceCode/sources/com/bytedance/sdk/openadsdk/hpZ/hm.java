package com.bytedance.sdk.openadsdk.hpZ;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewTreeObserver;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import io.bidmachine.utils.IabUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: PlayablePlugin.java */
/* loaded from: classes2.dex */
public class hm {
    private Runnable ABk;
    private int EGK;
    private boolean Ewb;
    private Runnable Gm;
    private ROR Gy;
    private int HWc;
    private String IC;
    private boolean KW;
    private boolean Ki;
    private int LcF;
    private String LpL;
    private boolean Ls;
    private String Ohm;
    private WeakReference<View> PER;
    private int Px;
    private JSONObject ReL;
    private Context Ri;
    private ac SL;
    private int SNp;
    private String SO;
    private int Ug;
    private WebView Ura;
    private int VV;
    private Qhi VnT;
    private Runnable WAv;
    private String Wrw;
    private String XH;
    private int YD;
    private int eG;
    private String eN;
    private com.bytedance.sdk.openadsdk.hpZ.Qhi et;
    private JSONObject gT;
    private Runnable hm;
    private Runnable iMK;
    private String mZ;
    private int ne;
    private cJ pA;
    private String rP;
    private String sRC;
    private String vml;
    private float wp;
    private boolean yy;
    private int zTC;
    private final String Tgh = "playable_stuck_check_ping";
    private final String ROR = "playable_apply_media_permission_callback";
    private final Handler Sf = new Handler(Looper.getMainLooper());
    private final Handler zc = new Handler(Looper.getMainLooper());
    private boolean hpZ = true;
    private boolean HzH = true;
    private boolean kYc = true;
    public final String Qhi = "PL_sdk_playable_global_viewable";
    public final String cJ = "PL_sdk_page_screen_blank";
    public final String ac = "PL_sdk_playable_destroy_analyze_summary";
    public final String CJ = "PL_sdk_playable_hardware_dialog_cancel";
    public final String fl = "PL_sdk_playable_hardware_dialog_setting";
    private Set<String> tP = new HashSet(Arrays.asList("adInfo", "appInfo", "subscribe_app_ad", "download_app_ad"));
    private String MQ = null;
    private String qMt = "embeded_ad";
    private boolean EBS = true;
    private boolean bxS = true;
    private boolean Dww = false;
    private String CQU = "";
    private long pM = 10;
    private long Eh = 10;
    private int aP = TypedValues.TransitionType.TYPE_DURATION;
    private long NFd = 0;
    private long sDy = 0;
    private long lB = -1;
    private long lG = -1;
    private long Jma = -1;
    private long js = -1;
    private long zn = -1;
    private long es = -1;
    private long yN = -1;
    private String FQ = "";
    private String PAe = "";
    private String ip = "";
    private String xyz = "";
    private int jPH = 0;
    private int MND = 0;
    private boolean dIT = false;
    private int Qe = 0;
    private int YB = -1;
    private int cjC = 0;
    private int Dq = 0;
    private int Hf = 0;
    private String NBs = null;
    private boolean dI = false;
    private int dVA = 0;
    private int zjb = 0;
    private int ots = 0;
    private int HLI = 0;
    private long oU = 0;
    private long pv = 0;
    private int gga = 0;
    private int Oy = 0;
    private int DaO = 0;
    private JSONObject rB = new JSONObject();
    private Map<String, String> HUk = new HashMap();
    private JSONObject TKG = new JSONObject();
    private String cJP = "";
    private float bM = 0.0f;
    private float pF = 0.0f;
    private boolean mz = false;
    private boolean sqa = false;
    private boolean iWr = false;
    private List<JSONObject> ejU = new ArrayList();
    private boolean cfS = true;
    private volatile boolean Hy = true;
    private volatile boolean yBk = true;
    private ViewTreeObserver.OnGlobalLayoutListener bIO = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.hpZ.hm.1
        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            try {
                View view = (View) hm.this.PER.get();
                if (view == null) {
                    return;
                }
                hm.this.cJ(view);
            } catch (Throwable th) {
                Sf.Qhi("PlayablePlugin", "onSizeChanged error", th);
            }
        }
    };
    private int jWV = -1;

    /* compiled from: PlayablePlugin.java */
    /* loaded from: classes2.dex */
    public enum Qhi {
        LAND_PAGE,
        FEED,
        OTHER,
        FEED_AWEME
    }

    static /* synthetic */ int ABk(hm hmVar) {
        int i = hmVar.MND;
        hmVar.MND = i + 1;
        return i;
    }

    static /* synthetic */ int zc(hm hmVar) {
        int i = hmVar.jPH;
        hmVar.jPH = i + 1;
        return i;
    }

    private hm(Context context, WebView webView, ac acVar, com.bytedance.sdk.openadsdk.hpZ.Qhi qhi, Qhi qhi2) {
        this.EGK = -2;
        this.EGK = 0;
        this.VnT = qhi2;
        this.Ura = webView;
        WAv.Qhi(webView);
        Qhi(webView);
        Qhi(context, acVar, qhi);
    }

    private void Qhi(Context context, ac acVar, com.bytedance.sdk.openadsdk.hpZ.Qhi qhi) {
        this.MQ = UUID.randomUUID().toString();
        this.Ri = context;
        this.et = qhi;
        this.SL = acVar;
        Gm.Qhi(qhi);
        this.Gy = new ROR(this);
        yN();
    }

    private void yN() {
        this.pA = new cJ(this, this.aP);
        this.hm = new Runnable() { // from class: com.bytedance.sdk.openadsdk.hpZ.hm.3
            @Override // java.lang.Runnable
            public void run() {
                if (hm.this.EBS) {
                    hm.this.EBS = false;
                    hm.this.Sf.removeCallbacks(hm.this.WAv);
                    hm.this.Qhi(2, "ContainerLoadTimeOut");
                }
            }
        };
        this.WAv = new Runnable() { // from class: com.bytedance.sdk.openadsdk.hpZ.hm.4
            @Override // java.lang.Runnable
            public void run() {
                if (hm.this.EBS) {
                    hm.this.EBS = false;
                    hm.this.Hy = false;
                    hm.this.Sf.removeCallbacks(hm.this.hm);
                    hm.this.Qhi(3, "JSSDKLoadTimeOut");
                }
            }
        };
        this.ABk = new Runnable() { // from class: com.bytedance.sdk.openadsdk.hpZ.hm.5
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                if (hm.this.Ura != null) {
                    hm.this.Ura.evaluateJavascript("javascript:typeof playable_callJS === 'function' && playable_callJS()", new ValueCallback<String>() { // from class: com.bytedance.sdk.openadsdk.hpZ.hm.5.1
                        @Override // android.webkit.ValueCallback
                        /* renamed from: Qhi */
                        public void onReceiveValue(String str) {
                            if (hm.this.pA != null) {
                                hm.this.pA.Qhi(System.currentTimeMillis());
                            }
                        }
                    });
                }
                if (hm.this.zc != null) {
                    hm.this.zc.postDelayed(this, 500L);
                }
            }
        };
        this.iMK = new Runnable() { // from class: com.bytedance.sdk.openadsdk.hpZ.hm.6
            @Override // java.lang.Runnable
            public void run() {
                System.currentTimeMillis();
                hm.this.Qhi("playable_stuck_check_ping", new JSONObject());
                if (hm.this.zc != null) {
                    hm.this.zc.postDelayed(this, 500L);
                }
            }
        };
        this.Gm = new Runnable() { // from class: com.bytedance.sdk.openadsdk.hpZ.hm.7
            @Override // java.lang.Runnable
            public void run() {
                if (hm.this.pv > 0) {
                    if (hm.this.pv - hm.this.oU <= hm.this.aP) {
                        hm.this.lB();
                        hm.this.oU = 0L;
                        hm.this.pv = 0L;
                        return;
                    }
                    hm.this.cJ(1, "Clicking on the hot zone causes the program to freeze.");
                    return;
                }
                hm.this.cJ(1, "Clicking on the hot zone causes the program to freeze.");
            }
        };
    }

    private boolean Gm(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.contains("/union-fe/playable/") || str.contains("/union-fe-sg/playable/") || str.contains("/union-fe-i18n/playable/");
    }

    public void Qhi(View view) {
        if (view == null) {
            return;
        }
        try {
            this.PER = new WeakReference<>(view);
            cJ(view);
            view.getViewTreeObserver().addOnGlobalLayoutListener(this.bIO);
        } catch (Throwable th) {
            Sf.Qhi("PlayablePlugin", "setViewForScreenSize error", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(View view) {
        if (view == null) {
            return;
        }
        try {
            if (this.Oy == view.getWidth() && this.DaO == view.getHeight()) {
                return;
            }
            this.Oy = view.getWidth();
            this.DaO = view.getHeight();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(IabUtils.KEY_WIDTH, this.Oy);
            jSONObject.put(IabUtils.KEY_HEIGHT, this.DaO);
            Qhi("resize", jSONObject);
            this.rB = jSONObject;
        } catch (Throwable th) {
            Sf.Qhi("PlayablePlugin", "resetViewDataJsonByView error", th);
        }
    }

    public Context Qhi() {
        return this.Ri;
    }

    public hm Qhi(String str, String str2) {
        this.HUk.put(str, str2);
        return this;
    }

    public Map<String, String> cJ() {
        return this.HUk;
    }

    public hm Qhi(String str) {
        this.mZ = str;
        return this;
    }

    public hm cJ(String str) {
        this.SO = str;
        return this;
    }

    public JSONObject ac() {
        return this.gT;
    }

    public hm ac(String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("playable_style", str);
            this.gT = jSONObject;
        } catch (Throwable th) {
            Sf.Qhi("PlayablePlugin", "setPlayableStyle error", th);
        }
        return this;
    }

    public String CJ() {
        return this.SO;
    }

    public String fl() {
        return this.mZ;
    }

    public hm CJ(String str) {
        this.XH = str;
        return this;
    }

    public String Tgh() {
        return this.XH;
    }

    public hm fl(String str) {
        this.Ohm = str;
        return this;
    }

    public String ROR() {
        return this.Ohm;
    }

    public hm Qhi(boolean z) {
        this.Ki = z;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("endcard_mute", this.Ki);
            Qhi("volumeChange", jSONObject);
        } catch (Throwable th) {
            Sf.Qhi("PlayablePlugin", "setIsMute error", th);
        }
        return this;
    }

    public boolean Sf() {
        return this.Ki;
    }

    public hm Qhi(long j) {
        if (j <= 0) {
            this.pM = 10L;
        } else {
            this.pM = j;
        }
        return this;
    }

    public hm cJ(long j) {
        if (j <= 0) {
            this.Eh = 10L;
        } else {
            this.Eh = j;
        }
        return this;
    }

    public void Qhi(int i) {
        this.jWV = i;
    }

    public hm cJ(boolean z) {
        if (this.jWV == -1 || this.yy == z) {
            return this;
        }
        this.yy = z;
        JSONObject jSONObject = new JSONObject();
        try {
            if (!this.yy) {
                jSONObject.put("playable_background_show_type", this.zjb);
            }
        } catch (JSONException unused) {
        }
        ac(this.yy ? "PL_sdk_viewable_true" : "PL_sdk_viewable_false", jSONObject);
        if (this.lG == -1 && this.yy) {
            this.lG = System.currentTimeMillis();
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("render_type", this.jWV == 1 ? 1 : 2);
                int i = this.jWV;
                if (i != -1) {
                    jSONObject2.put("webview_state", i);
                }
            } catch (JSONException unused2) {
            }
            ac("PL_sdk_page_show", jSONObject2);
        }
        if (this.lG != -1 && !this.yy && !this.mz) {
            this.mz = true;
        }
        if (this.yy) {
            this.lB = System.currentTimeMillis();
        } else if (this.lB != -1) {
            this.NFd += System.currentTimeMillis() - this.lB;
            this.lB = -1L;
        }
        try {
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("viewStatus", this.yy);
            Qhi("viewableChange", jSONObject3);
        } catch (Throwable th) {
            Sf.Qhi("PlayablePlugin", "setViewable error", th);
        }
        if (this.yy) {
            lB();
        } else {
            lG();
        }
        return this;
    }

    public boolean hm() {
        return this.yy;
    }

    public hm ac(boolean z) {
        this.Ls = z;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("send_click", this.Ls);
            Qhi("change_playable_click", jSONObject);
        } catch (Throwable th) {
            Sf.Qhi("PlayablePlugin", "setPlayableClick error", th);
        }
        return this;
    }

    public JSONObject WAv() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("send_click", this.Ls);
            return jSONObject;
        } catch (Throwable th) {
            Sf.Qhi("PlayablePlugin", "getPlayableClickStatus error", th);
            return new JSONObject();
        }
    }

    public Set<String> Gm() {
        return this.Gy.Qhi();
    }

    public JSONObject zc() {
        try {
            boolean Qhi2 = Tgh.Qhi(this.Ri, "android.permission.RECORD_AUDIO");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(IronSourceConstants.EVENTS_RESULT, Qhi2);
            return jSONObject;
        } catch (Throwable th) {
            Sf.Qhi("PlayablePlugin", "getCameraPermission error", th);
            return new JSONObject();
        }
    }

    public JSONObject ABk() {
        try {
            boolean Qhi2 = Tgh.Qhi(this.Ri, "android.permission.CAMERA");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(IronSourceConstants.EVENTS_RESULT, Qhi2);
            return jSONObject;
        } catch (Throwable th) {
            Sf.Qhi("PlayablePlugin", "getCameraPermission error", th);
            return new JSONObject();
        }
    }

    public JSONObject iMK() {
        boolean Qhi2;
        boolean Qhi3;
        try {
            boolean z = true;
            if (Build.VERSION.SDK_INT >= 33) {
                Qhi2 = Tgh.Qhi(this.Ri, "android.permission.READ_MEDIA_IMAGES");
                Qhi3 = true;
            } else {
                Qhi2 = Tgh.Qhi(this.Ri, "android.permission.READ_EXTERNAL_STORAGE");
                Qhi3 = Tgh.Qhi(this.Ri, "android.permission.WRITE_EXTERNAL_STORAGE");
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("isHasRead", Qhi2);
            jSONObject.put("isHasWrite", Qhi3);
            if (!Qhi2 || !Qhi3) {
                z = false;
            }
            jSONObject.put(IronSourceConstants.EVENTS_RESULT, z);
            return jSONObject;
        } catch (Throwable th) {
            Sf.Qhi("PlayablePlugin", "getCameraPermission error", th);
            return new JSONObject();
        }
    }

    public void Qhi(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.hpZ.Qhi qhi = this.et;
        if (qhi == null || qhi.cJ(jSONObject) || jSONObject == null) {
            return;
        }
        String optString = jSONObject.optString("resource_base64");
        if (TextUtils.isEmpty(optString)) {
            return;
        }
        int optInt = jSONObject.optInt("resource_type", -1);
        String optString2 = jSONObject.optString("resource_name", "playable_media");
        if (optInt == 1) {
            cJ(optString2, optString);
        }
    }

    public void cJ(JSONObject jSONObject) {
        if (this.et != null) {
            try {
                jSONObject.optBoolean("isPrevent", false);
            } catch (Exception unused) {
            }
        }
    }

    public JSONObject pA() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("scene_type", this.VnT.ordinal());
            jSONObject.put("safe_area_top_height", this.bM);
            jSONObject.put("safe_area_bottom_height", this.pF);
            jSONObject.put("playable_enter_from", this.Dq);
            jSONObject.put("playable_retry_count", this.cjC);
            jSONObject.put("playable_card_session", this.FQ);
            jSONObject.put("playable_video_session", this.PAe);
            jSONObject.put("playable_network_type", hpZ());
            jSONObject.put("aweme_id", this.xyz);
            return jSONObject;
        } catch (Throwable th) {
            Sf.Qhi("PlayablePlugin", "playableInfo error", th);
            return new JSONObject();
        }
    }

    public void Qhi(String str, JSONObject jSONObject) {
        if (Sf.Qhi() && jSONObject != null) {
            jSONObject.toString();
        }
        ac acVar = this.SL;
        if (acVar != null) {
            acVar.Qhi(str, jSONObject);
        }
    }

    public void cJ(String str, String str2) {
        Bitmap Qhi2;
        if (TextUtils.isEmpty(str2) || (Qhi2 = Tgh.Qhi(str2)) == null) {
            return;
        }
        MediaStore.Images.Media.insertImage(this.Ri.getContentResolver(), Qhi2, str, "");
    }

    public String hpZ() {
        com.bytedance.sdk.openadsdk.hpZ.Qhi qhi;
        if (TextUtils.isEmpty(this.ip) && (qhi = this.et) != null) {
            this.ip = qhi.Qhi().toString();
        }
        return this.ip;
    }

    public com.bytedance.sdk.openadsdk.hpZ.Qhi HzH() {
        return this.et;
    }

    public JSONObject kYc() {
        if (this.rB.isNull(IabUtils.KEY_WIDTH)) {
            View view = this.PER.get();
            if (view == null) {
                return this.rB;
            }
            cJ(view);
        }
        return this.rB;
    }

    public JSONObject tP() {
        return this.TKG;
    }

    public hm ac(JSONObject jSONObject) {
        this.TKG = jSONObject;
        return this;
    }

    public hm Tgh(String str) {
        Uri parse;
        String scheme;
        int indexOf;
        String decode;
        this.cJP = str;
        try {
            parse = Uri.parse(str);
            scheme = parse.getScheme();
        } catch (Throwable unused) {
        }
        if (!"http".equalsIgnoreCase(scheme) && !"https".equalsIgnoreCase(scheme)) {
            String host = parse.getHost();
            if (!"webview".equalsIgnoreCase(host) && (host == null || !host.contains("webview"))) {
                if ("lynxview".equalsIgnoreCase(host) || (host != null && host.contains("lynxview"))) {
                    if (this.EGK == -1) {
                        cJ(2);
                    } else {
                        cJ(1);
                    }
                }
                this.Wrw = str;
                return this;
            }
            cJ(0);
            String queryParameter = parse.getQueryParameter("url");
            if (!TextUtils.isEmpty(queryParameter) && (decode = Uri.decode(queryParameter)) != null) {
                int indexOf2 = decode.indexOf("?");
                str = indexOf2 != -1 ? decode.substring(0, indexOf2) : decode;
            }
            this.Wrw = str;
            return this;
        }
        cJ(0);
        if (str != null && (indexOf = str.indexOf("?")) != -1) {
            str = str.substring(0, indexOf);
        }
        this.Wrw = str;
        return this;
    }

    public hm cJ(int i) {
        this.EGK = i;
        return this;
    }

    public JSONObject MQ() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("devicePixelRatio", this.wp);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put(IabUtils.KEY_WIDTH, this.VV);
            jSONObject2.put(IabUtils.KEY_HEIGHT, this.Px);
            jSONObject.put("screen", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("x", this.SNp);
            jSONObject3.put("y", this.HWc);
            jSONObject3.put(IabUtils.KEY_WIDTH, this.YD);
            jSONObject3.put(IabUtils.KEY_HEIGHT, this.eG);
            jSONObject.put("webview", jSONObject3);
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("x", this.ne);
            jSONObject4.put("y", this.Ug);
            jSONObject4.put(IabUtils.KEY_WIDTH, this.zTC);
            jSONObject4.put(IabUtils.KEY_HEIGHT, this.LcF);
            jSONObject.put("visible", jSONObject4);
        } catch (Throwable th) {
            Sf.Qhi("PlayablePlugin", "getViewport error", th);
        }
        return jSONObject;
    }

    public void qMt() {
        com.bytedance.sdk.openadsdk.hpZ.Qhi qhi = this.et;
        if (qhi != null) {
            qhi.cJ();
        }
    }

    public void EBS() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.zn > 0) {
                jSONObject.put("playable_material_interactable_duration", System.currentTimeMillis() - this.zn);
            } else {
                jSONObject.put("playable_material_interactable_duration", 0L);
            }
            if (this.Jma > 0) {
                long currentTimeMillis = System.currentTimeMillis() - this.Jma;
                this.yN = currentTimeMillis;
                jSONObject.put("playable_material_interactable_load_duration", currentTimeMillis);
            } else {
                jSONObject.put("playable_material_interactable_load_duration", 0L);
            }
            ac("PL_sdk_material_interactable", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void CJ(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.NBs = jSONObject.optString("section");
        }
    }

    public void bxS() {
        this.YB = 2;
    }

    public void Dww() {
        this.dI = true;
    }

    public void CQU() {
        if (this.et != null) {
            Qhi qhi = Qhi.FEED_AWEME;
        }
    }

    public void pM() {
        if (this.et != null) {
            Qhi qhi = Qhi.FEED_AWEME;
        }
    }

    public void fl(JSONObject jSONObject) {
        this.ReL = jSONObject;
        this.Hf++;
        lG();
        this.Sf.removeCallbacks(this.Gm);
        if (this.bxS) {
            this.es = System.currentTimeMillis();
            this.oU = System.currentTimeMillis();
            this.pv = 0L;
            int i = this.EGK;
            if (i == 0) {
                WebView webView = this.Ura;
                if (webView != null) {
                    webView.evaluateJavascript("javascript:typeof playable_callJS === 'function' && playable_callJS()", new ValueCallback<String>() { // from class: com.bytedance.sdk.openadsdk.hpZ.hm.8
                        @Override // android.webkit.ValueCallback
                        /* renamed from: Qhi */
                        public void onReceiveValue(String str) {
                            hm.this.pv = System.currentTimeMillis();
                        }
                    });
                }
            } else if (i == 1 || i == 2) {
                Qhi("playable_stuck_check_ping", new JSONObject());
            }
            this.Sf.postDelayed(this.Gm, this.aP);
        }
    }

    public void Eh() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.zn > 0) {
                jSONObject.put("playable_material_first_frame_show_duration", System.currentTimeMillis() - this.zn);
            } else {
                jSONObject.put("playable_material_first_frame_show_duration", 0L);
            }
            if (this.Jma > 0) {
                jSONObject.put("playable_material_first_frame_load_duration", System.currentTimeMillis() - this.Jma);
            } else {
                jSONObject.put("playable_material_first_frame_load_duration", 0L);
            }
            ac("PL_sdk_material_first_frame_show", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void Tgh(JSONObject jSONObject) {
        cJ(2, jSONObject != null ? jSONObject.optString("error_msg", "The material directly invokes the exception pocket mask on the client") : "The material directly invokes the exception pocket mask on the client");
    }

    public void aP() {
        cJ cJVar;
        this.pv = System.currentTimeMillis();
        int i = this.EGK;
        if ((i == 1 || i == 2) && (cJVar = this.pA) != null) {
            cJVar.Qhi(System.currentTimeMillis());
        }
    }

    public JSONObject ROR(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        int optInt = jSONObject.optInt(SessionDescription.ATTR_TYPE, 0);
        JSONObject jSONObject2 = new JSONObject();
        if (optInt != 1) {
            if (optInt != 2) {
                return optInt != 3 ? jSONObject2 : iMK();
            }
            return ABk();
        }
        return zc();
    }

    public JSONObject Sf(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new JSONObject();
        }
        int optInt = jSONObject.optInt(SessionDescription.ATTR_TYPE, 0);
        JSONObject jSONObject2 = new JSONObject();
        if (optInt == 1) {
            jSONObject2.put(IronSourceConstants.EVENTS_RESULT, Tgh.cJ(this.Ri, "android.permission.RECORD_AUDIO"));
        } else if (optInt != 2) {
            if (optInt == 3) {
                jSONObject2.put(IronSourceConstants.EVENTS_RESULT, Tgh.Qhi(this.Ri));
            }
            return jSONObject2;
        } else {
            jSONObject2.put(IronSourceConstants.EVENTS_RESULT, Tgh.cJ(this.Ri, "android.permission.CAMERA"));
        }
        return jSONObject2;
    }

    public void ROR(String str) {
        this.gga = 1;
        JSONObject jSONObject = new JSONObject();
        try {
            long currentTimeMillis = System.currentTimeMillis();
            this.Jma = currentTimeMillis;
            long j = this.lG;
            jSONObject.put("playable_page_show_duration", j != -1 ? currentTimeMillis - j : 0L);
        } catch (Throwable th) {
            Sf.Qhi("PlayablePlugin", "reportUrlLoadStart error", th);
        }
        ac("PL_sdk_html_load_start", jSONObject);
        this.Hy = true;
        this.yBk = true;
        if (this.cfS) {
            NFd();
            this.Hy = false;
            this.yBk = false;
        }
        if (this.HzH) {
            try {
                StringBuffer stringBuffer = new StringBuffer();
                StringBuffer stringBuffer2 = new StringBuffer();
                StringBuffer stringBuffer3 = new StringBuffer();
                if (Tgh.Qhi(this.Ri, Tgh.zc)) {
                    stringBuffer.append("Microphone_");
                    stringBuffer2.append(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                    if (Tgh.cJ(this.Ri, "android.permission.RECORD_AUDIO")) {
                        stringBuffer3.append(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (Tgh.Qhi(this.Ri, Tgh.Gm)) {
                    stringBuffer.append("Magetometer_");
                    stringBuffer2.append(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                    stringBuffer3.append(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (Tgh.Qhi(this.Ri, Tgh.WAv)) {
                    stringBuffer.append("Accelerometer_");
                    stringBuffer2.append(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                    stringBuffer3.append(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (Tgh.Qhi(this.Ri, Tgh.hm)) {
                    stringBuffer.append("Gyro_");
                    stringBuffer2.append(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                    stringBuffer3.append(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (Tgh.Qhi(this.Ri, Tgh.Sf)) {
                    stringBuffer.append("Camera_");
                    stringBuffer2.append(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                    if (Tgh.cJ(this.Ri, "android.permission.CAMERA")) {
                        stringBuffer3.append(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                if (Tgh.Qhi(this.Ri, Tgh.ROR)) {
                    stringBuffer.append("Photo");
                    stringBuffer2.append(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                    if (Tgh.Qhi(this.Ri)) {
                        stringBuffer3.append(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                    } else {
                        stringBuffer3.append("0");
                    }
                } else {
                    stringBuffer2.append("0");
                    stringBuffer3.append("0");
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("playable_available_hardware_name", stringBuffer.toString());
                jSONObject2.put("playable_available_hardware_code", stringBuffer2.toString());
                jSONObject2.put("playable_available_hardware_auth_code", stringBuffer3.toString());
                ac("PL_sdk_hardware_detect", jSONObject2);
                this.HzH = false;
            } catch (Throwable th2) {
                Sf.Qhi("PlayablePlugin", "Hardware detect error", th2);
            }
        }
    }

    public void NFd() {
        int i;
        int i2 = this.EGK;
        if (i2 == 0 || i2 == 1 || i2 == 2) {
            if (this.Hy) {
                this.Sf.postDelayed(this.hm, this.pM * 1000);
            }
            if ((this.yBk && Gm(this.Wrw)) || (i = this.EGK) == 1 || i == 2) {
                this.Sf.postDelayed(this.WAv, this.Eh * 1000);
            }
        }
    }

    public void Sf(String str) {
        WebView webView;
        boolean z = this.gga == -1;
        this.gga = 2;
        if (!z) {
            this.vml = str;
            JSONObject jSONObject = new JSONObject();
            try {
                long currentTimeMillis = System.currentTimeMillis();
                this.js = currentTimeMillis;
                long j = this.Jma;
                jSONObject.put("playable_html_load_start_duration", j != -1 ? currentTimeMillis - j : 0L);
                jSONObject.put("playable_has_show", zn());
            } catch (Throwable th) {
                Sf.Qhi("PlayablePlugin", "reportUrlLoadFinish error", th);
            }
            ac("PL_sdk_html_load_finish", jSONObject);
        }
        this.Hy = false;
        this.Sf.removeCallbacks(this.hm);
        try {
            if (this.EGK == 0) {
                if (this.hpZ && (webView = this.Ura) != null) {
                    this.hpZ = false;
                    webView.evaluateJavascript(es(), new ValueCallback<String>() { // from class: com.bytedance.sdk.openadsdk.hpZ.hm.9
                        @Override // android.webkit.ValueCallback
                        public /* bridge */ /* synthetic */ void onReceiveValue(String str2) {
                        }
                    });
                }
                lB();
            }
        } catch (Throwable th2) {
            Sf.Qhi("PlayablePlugin", "crashMonitor error", th2);
        }
    }

    public void sDy() {
        this.yBk = false;
        this.Sf.removeCallbacks(this.WAv);
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.Jma > 0) {
                jSONObject.put("playable_jssdk_load_success_duration", System.currentTimeMillis() - this.Jma);
            } else {
                jSONObject.put("playable_jssdk_load_success_duration", 0L);
            }
            ac("PL_sdk_jssdk_load_success", jSONObject);
        } catch (JSONException unused) {
        }
    }

    public void hm(JSONObject jSONObject) {
        if (jSONObject != null) {
            boolean optBoolean = jSONObject.optBoolean(FirebaseAnalytics.Param.SUCCESS, true);
            if (optBoolean) {
                this.gga = 3;
                lB();
            } else {
                this.gga = -2;
            }
            if (optBoolean || !this.EBS) {
                return;
            }
            this.EBS = false;
            this.Hy = false;
            this.yBk = false;
            this.Sf.removeCallbacks(this.hm);
            this.Sf.removeCallbacks(this.WAv);
            Qhi(4, "CaseRenderFail");
        }
    }

    private void ac(int i, String str) {
        com.bytedance.sdk.openadsdk.hpZ.Qhi qhi = this.et;
        if (qhi != null) {
            qhi.Qhi(i, str);
        }
    }

    protected void Qhi(int i, String str) {
        lG();
        ac(i, str);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_code", i);
            jSONObject.put("playable_msg", str);
        } catch (Throwable th) {
            Sf.Qhi("PlayablePlugin", "reportRenderFatal error", th);
        }
        ac("PL_sdk_global_faild", jSONObject);
    }

    public void cJ(int i, String str) {
        this.YB = i;
        if (this.ReL == null) {
            this.ReL = new JSONObject();
        }
        try {
            this.ReL.put("playable_stuck_type", i);
            this.ReL.put("playable_stuck_reason", str);
            if (this.es > 0) {
                this.ReL.put("playable_stuck_duration", System.currentTimeMillis() - this.es);
            } else {
                this.ReL.put("playable_stuck_duration", 0L);
            }
        } catch (Throwable unused) {
        }
        ac("PL_sdk_page_stuck", this.ReL);
        lG();
        if (this.et == null || i != 2) {
            return;
        }
        this.ReL = new JSONObject();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void cJ(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        fl(str, jSONObject);
    }

    private String ac(String str, String str2) {
        String queryParameter;
        String queryParameter2;
        if (TextUtils.isEmpty(this.IC) && !TextUtils.isEmpty(this.cJP)) {
            Uri parse = Uri.parse(this.cJP);
            String host = parse.getHost();
            if ("lynxview".equalsIgnoreCase(host) || (host != null && host.contains("lynxview"))) {
                queryParameter = parse.getQueryParameter("surl");
                queryParameter2 = parse.getQueryParameter("playable_hash");
            } else {
                queryParameter = "";
                queryParameter2 = "";
            }
            Uri.Builder appendQueryParameter = new Uri.Builder().scheme(parse.getScheme()).authority(host).appendQueryParameter("surl", queryParameter);
            if (!TextUtils.isEmpty(queryParameter2)) {
                appendQueryParameter.appendQueryParameter("playable_hash", queryParameter2);
            }
            this.IC = appendQueryParameter.toString();
        }
        return this.IC;
    }

    private String CJ(String str, String str2) {
        String format = String.format("rubeex://playable-minigamelite?id=%1s&schema=%2s", str, Uri.encode(str2));
        this.Wrw = format;
        return format;
    }

    private void FQ() {
        String str;
        if (this.TKG == null || (str = this.Wrw) == null || str.contains("/cid_")) {
            return;
        }
        String optString = this.TKG.optString("cid");
        if (TextUtils.isEmpty(optString)) {
            return;
        }
        String host = Uri.parse(this.Wrw).getHost();
        if (TextUtils.isEmpty(host)) {
            this.Wrw += "/cid_" + optString;
        } else {
            this.Wrw = this.Wrw.replace(host, host + "/cid_" + optString);
        }
    }

    private void fl(String str, JSONObject jSONObject) {
        try {
            int i = this.EGK;
            if (i == 0) {
                if (this.VnT != Qhi.LAND_PAGE && !Gm(this.Wrw)) {
                    FQ();
                }
                jSONObject.put("playable_url", this.Wrw);
            } else {
                if (i != 3 && i != 4) {
                    if (i == 1 || i == 2) {
                        jSONObject.put("playable_url", ac(this.eN, this.sRC));
                    }
                }
                jSONObject.put("playable_url", CJ(this.rP, this.LpL));
            }
            jSONObject.put("playable_render_type", this.EGK);
            if (this.et != null) {
                if (this.EGK == 0 && (this.VnT != Qhi.LAND_PAGE || Gm(this.Wrw))) {
                    this.et.Qhi(jSONObject);
                } else if (this.EGK != 0) {
                    this.et.Qhi(jSONObject);
                }
            }
        } catch (JSONException unused) {
        }
    }

    public void ac(String str, JSONObject jSONObject) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        try {
            if (!this.dIT && this.MND > 0) {
                this.dIT = true;
            }
            if ("PL_sdk_html_load_start".equals(str) || "PL_sdk_html_load_finish".equals(str) || "PL_sdk_html_load_error".equals(str)) {
                jSONObject.put("usecache", this.Ewb ? 1 : 0);
            }
            jSONObject.put("playable_event", str);
            jSONObject.put("playable_ts", System.currentTimeMillis());
            jSONObject.put("playable_viewable", this.yy);
            jSONObject.put("playable_session_id", this.MQ);
            int i = this.EGK;
            if (i == 0) {
                if (this.VnT != Qhi.LAND_PAGE && !Gm(this.Wrw)) {
                    FQ();
                }
                jSONObject.put("playable_url", this.Wrw);
            } else {
                if (i != 3 && i != 4) {
                    if (i == 1 || i == 2) {
                        jSONObject.put("playable_url", ac(this.eN, this.sRC));
                    }
                }
                jSONObject.put("playable_url", CJ(this.rP, this.LpL));
            }
            jSONObject.put("playable_full_url", this.cJP);
            jSONObject.put("playable_replay_count", this.Qe);
            jSONObject.put("playable_is_prerender", this.KW);
            jSONObject.put("playable_is_preload", this.dIT);
            jSONObject.put("playable_render_type", this.EGK);
            jSONObject.put("playable_scenes_type", this.VnT.ordinal());
            String str2 = "";
            jSONObject.put("playable_gecko_key", TextUtils.isEmpty(this.eN) ? "" : this.eN);
            if (!TextUtils.isEmpty(this.sRC)) {
                str2 = this.sRC;
            }
            jSONObject.put("playable_gecko_channel", str2);
            jSONObject.put("playable_sdk_version", "6.6.0");
            jSONObject.put("playable_minigamelite_id", this.rP);
            jSONObject.put("playable_minigamelite_schema", this.LpL);
            jSONObject.put("playable_is_debug", this.sqa);
            jSONObject.put("playable_retry_count", this.cjC);
            jSONObject.put("playable_enter_from", this.Dq);
            jSONObject.put("playable_sequence", this.Hf);
            jSONObject.put("playable_current_section", this.NBs);
            jSONObject.put("is_playable_finish", this.dI);
            jSONObject.put("playable_card_session", this.FQ);
            jSONObject.put("playable_video_session", this.PAe);
            jSONObject.put("playable_network_type", hpZ());
            jSONObject.put("playable_lynx_version", this.CQU);
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("ad_extra_data", jSONObject);
            jSONObject2.put("tag", this.qMt);
            jSONObject2.put("nt", 4);
            jSONObject2.put("category", "umeng");
            jSONObject2.put("is_ad_event", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
            jSONObject2.put("refer", "playable");
            jSONObject2.put("value", this.TKG.opt("cid"));
            jSONObject2.put("log_extra", this.TKG.opt("log_extra"));
            int i2 = this.EGK;
            if (i2 != -1 && i2 != -2) {
                if (this.et != null) {
                    List<JSONObject> list = this.ejU;
                    if (list != null && !list.isEmpty()) {
                        for (JSONObject jSONObject3 : this.ejU) {
                            JSONObject optJSONObject = jSONObject3.optJSONObject("ad_extra_data");
                            if (optJSONObject != null) {
                                optJSONObject.put("playable_render_type", this.EGK);
                                optJSONObject.put("playable_url", this.Wrw);
                            }
                            this.et.Qhi(optJSONObject);
                        }
                        this.ejU.clear();
                    }
                    if (this.EGK == 0 && (this.VnT != Qhi.LAND_PAGE || Gm(this.Wrw))) {
                        this.et.Qhi(jSONObject);
                        return;
                    } else if (this.EGK != 0) {
                        this.et.Qhi(jSONObject);
                        return;
                    } else {
                        return;
                    }
                }
                return;
            }
            if (this.ejU == null) {
                this.ejU = new ArrayList();
            }
            this.ejU.add(jSONObject2);
        } catch (Throwable th) {
            Sf.Qhi("PlayablePlugin", "reportEvent error", th);
        }
    }

    public void hm(String str) {
        this.Sf.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.hpZ.hm.10
            @Override // java.lang.Runnable
            public void run() {
                hm.zc(hm.this);
            }
        });
    }

    public void WAv(String str) {
        this.Sf.post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.hpZ.hm.2
            @Override // java.lang.Runnable
            public void run() {
                hm.ABk(hm.this);
            }
        });
    }

    public void lB() {
        if (this.bxS) {
            this.es = System.currentTimeMillis();
            if (this.VnT == Qhi.FEED_AWEME) {
                if (this.yy && this.gga == 3) {
                    cJ cJVar = this.pA;
                    if (cJVar != null && cJVar.cJ()) {
                        PAe();
                    } else if (this.pA == null) {
                        this.pA = new cJ(this, this.aP);
                        PAe();
                    }
                }
            } else if (this.yy && this.gga == 2) {
                cJ cJVar2 = this.pA;
                if (cJVar2 != null && cJVar2.cJ()) {
                    PAe();
                } else if (this.pA == null) {
                    this.pA = new cJ(this, this.aP);
                    PAe();
                }
            }
        }
    }

    private void PAe() {
        Runnable runnable;
        Runnable runnable2;
        this.pA.Qhi(System.currentTimeMillis());
        Handler handler = this.zc;
        if (handler != null) {
            int i = this.EGK;
            if (i == 0 && (runnable2 = this.ABk) != null) {
                handler.post(runnable2);
            } else if ((i == 1 || i == 2) && (runnable = this.iMK) != null) {
                handler.post(runnable);
            }
            this.pA.Qhi(500);
        }
    }

    public void lG() {
        try {
            cJ cJVar = this.pA;
            if (cJVar != null) {
                cJVar.Qhi();
            }
            Handler handler = this.zc;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable th) {
            new StringBuilder("The stuttering detection has been paused due to a crash.-- ").append(th);
        }
    }

    public void Jma() {
        this.Oy = 0;
        this.DaO = 0;
        this.wp = 0.0f;
        this.VV = 0;
        this.Px = 0;
        this.HWc = 0;
        this.SNp = 0;
        this.YD = 0;
        this.eG = 0;
        this.Ug = 0;
        this.ne = 0;
        this.zTC = 0;
        this.LcF = 0;
    }

    public void js() {
        if (this.iWr) {
            return;
        }
        this.iWr = true;
        this.sDy = 0L;
        this.HzH = true;
        Jma();
        try {
            View view = this.PER.get();
            if (view != null) {
                view.getViewTreeObserver().removeOnGlobalLayoutListener(this.bIO);
            }
        } catch (Throwable unused) {
        }
        try {
            this.Gy.cJ();
        } catch (Throwable unused2) {
        }
        try {
            cJ cJVar = this.pA;
            if (cJVar != null) {
                cJVar.Qhi();
                this.pA = null;
            }
            Handler handler = this.zc;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
        } catch (Throwable th) {
            new StringBuilder("crash -- ").append(th);
        }
        try {
            if (!TextUtils.isEmpty(this.Wrw)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("playable_all_times", this.jPH);
                jSONObject.put("playable_hit_times", this.MND);
                int i = this.jPH;
                if (i > 0) {
                    jSONObject.put("playable_hit_ratio", this.MND / (i * 1.0d));
                } else {
                    jSONObject.put("playable_hit_ratio", 0);
                }
                ac("PL_sdk_preload_times", jSONObject);
            }
        } catch (Throwable unused3) {
        }
        try {
            if (!TextUtils.isEmpty(this.Wrw)) {
                if (this.lB != -1) {
                    this.NFd += System.currentTimeMillis() - this.lB;
                    this.lB = -1L;
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("playable_user_play_duration", this.NFd);
                ac("PL_sdk_user_play_duration", jSONObject2);
            }
        } catch (Throwable unused4) {
        }
        this.Hy = false;
        this.yBk = false;
        this.Sf.removeCallbacks(this.hm);
        this.Sf.removeCallbacks(this.WAv);
        this.Sf.removeCallbacksAndMessages(null);
    }

    public void Qhi(int i, String str, String str2) {
        this.gga = -1;
        this.vml = str2;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("playable_code", i);
            jSONObject.put("playable_msg", str);
            jSONObject.put("playable_fail_url", str2);
            jSONObject.put("playable_has_show", zn());
        } catch (Throwable th) {
            Sf.Qhi("PlayablePlugin", "onWebReceivedError error", th);
        }
        ac("PL_sdk_html_load_error", jSONObject);
        if (this.EBS) {
            this.EBS = false;
            this.Hy = false;
            this.yBk = false;
            this.Sf.removeCallbacks(this.hm);
            this.Sf.removeCallbacks(this.WAv);
            Qhi(1, "ContainerLoadFail");
        }
    }

    public int zn() {
        return (this.lG == -1 || !this.yy) ? 1 : 2;
    }

    public void Qhi(boolean z, String str, int i) {
        if (z) {
            this.gga = -1;
            this.vml = str;
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("playable_code", i);
                jSONObject.put("playable_msg", "url load error");
                jSONObject.put("playable_fail_url", str);
                jSONObject.put("playable_has_show", zn());
            } catch (Throwable th) {
                Sf.Qhi("PlayablePlugin", "onWebReceivedHttpError error", th);
            }
            ac("PL_sdk_html_load_error", jSONObject);
            if (this.EBS) {
                this.EBS = false;
                this.Hy = false;
                this.yBk = false;
                this.Sf.removeCallbacks(this.hm);
                this.Sf.removeCallbacks(this.WAv);
                Qhi(1, "ContainerLoadFail");
            }
        }
    }

    public String es() {
        return "function playable_callJS(){return \"Android call the JS method is callJS\";}";
    }

    public JSONObject CJ(String str, JSONObject jSONObject) {
        System.currentTimeMillis();
        if (Sf.Qhi() && jSONObject != null) {
            jSONObject.toString();
        }
        JSONObject Qhi2 = this.Gy.Qhi(str, jSONObject);
        if (Sf.Qhi()) {
            System.currentTimeMillis();
            if (Qhi2 != null) {
                Qhi2.toString();
            }
        }
        return Qhi2;
    }

    public hm CJ(boolean z) {
        this.cfS = z;
        return this;
    }

    public void fl(boolean z) {
        this.Ewb = z;
    }

    public static hm Qhi(Context context, WebView webView, ac acVar, com.bytedance.sdk.openadsdk.hpZ.Qhi qhi) {
        if (webView == null || acVar == null || qhi == null) {
            return null;
        }
        return new hm(context, webView, acVar, qhi, Qhi.LAND_PAGE);
    }
}
