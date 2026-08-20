package com.bytedance.sdk.openadsdk.cJ;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.bytedance.sdk.openadsdk.core.model.tP;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: WebviewTimeTrack.java */
/* loaded from: classes2.dex */
public class kYc implements com.bytedance.sdk.openadsdk.cJ.ac.Tgh {
    private Boolean CJ;
    private String Qhi;
    private JSONArray ROR;
    private JSONArray Sf;
    private JSONObject Tgh;
    private Boolean ac;
    private tP cJ;
    private Boolean fl;

    public kYc(int i, String str, tP tPVar) {
        this.Qhi = "embeded_ad";
        this.ac = Boolean.FALSE;
        this.CJ = Boolean.FALSE;
        this.fl = Boolean.FALSE;
        this.Qhi = str;
        this.cJ = tPVar;
        this.Tgh = new JSONObject();
        this.ROR = new JSONArray();
        this.Sf = new JSONArray();
        Qhi(this.Tgh, "webview_source", Integer.valueOf(i));
    }

    protected kYc() {
        this.Qhi = "embeded_ad";
        this.ac = Boolean.FALSE;
        this.CJ = Boolean.FALSE;
        this.fl = Boolean.FALSE;
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.fl
    public void Qhi() {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.1
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc kyc = kYc.this;
                kyc.Qhi(jSONObject, "render_sequence", Integer.valueOf(kyc.cJ.CQU()));
                if (kYc.this.cJ != null && kYc.this.cJ.es() != null) {
                    if (kYc.this.cJ.es().ABk()) {
                        kYc.this.Qhi(jSONObject, "webview_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.fl.Tgh.Qhi().CJ()));
                        kYc.this.Qhi(jSONObject, "available_cache_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.fl.Tgh.Qhi().CJ()));
                    } else {
                        kYc.this.Qhi(jSONObject, "webview_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.fl.Tgh.Qhi().ac()));
                        kYc.this.Qhi(jSONObject, "available_cache_count", Integer.valueOf(com.bytedance.sdk.component.adexpress.fl.Tgh.Qhi().ac()));
                    }
                }
                kYc kyc2 = kYc.this;
                kyc2.Qhi(kyc2.Tgh, "render_start", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.fl
    public void cJ() {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.12
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, "render_success", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.fl
    public void Qhi(final int i, final String str) {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.23
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc.this.Qhi(jSONObject, "code", Integer.valueOf(i));
                String str2 = str;
                if (str2 != null) {
                    kYc.this.Qhi(jSONObject, NotificationCompat.CATEGORY_MESSAGE, str2);
                }
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, "render_error", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.cJ
    public void ac() {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.24
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, "native_render_start", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.ac
    public void CJ() {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.25
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, "native_render_end", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.ROR
    public void fl() {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.26
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, "webview_load_start", (Object) jSONObject, false);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.ROR
    public void Tgh() {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.27
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, "webview_load_success", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.ROR
    public void Qhi(final JSONObject jSONObject) {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.28
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject2 = jSONObject;
                if (jSONObject2 == null) {
                    jSONObject2 = new JSONObject();
                }
                kYc.this.Qhi(jSONObject2, "ts", Long.valueOf(System.currentTimeMillis()));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, "webview_load_error", jSONObject2);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.ac
    public void ROR() {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.29
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, "native_endcard_show", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.ac
    public void Sf() {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.2
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, "native_endcard_close", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.ac
    public void hm() {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.3
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc.this.Qhi(jSONObject, SessionDescription.ATTR_TYPE, "native_enterBackground");
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.ROR, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.ac
    public void WAv() {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.4
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc.this.Qhi(jSONObject, SessionDescription.ATTR_TYPE, "native_enterForeground");
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.ROR, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.ROR
    public void Qhi(final String str, final long j, final long j2, final int i) {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.5
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(str) || j2 < j) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "start_ts", Long.valueOf(j));
                kYc.this.Qhi(jSONObject, "end_ts", Long.valueOf(j2));
                kYc.this.Qhi(jSONObject, "intercept_type", Integer.valueOf(i));
                kYc.this.Qhi(jSONObject, SessionDescription.ATTR_TYPE, "intercept_html");
                kYc.this.Qhi(jSONObject, "url", str);
                kYc.this.Qhi(jSONObject, "duration", Long.valueOf(j2 - j));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Sf, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.ROR
    public void cJ(final String str, final long j, final long j2, final int i) {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.6
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(str) || j2 < j) {
                    return;
                }
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "start_ts", Long.valueOf(j));
                kYc.this.Qhi(jSONObject, "end_ts", Long.valueOf(j2));
                kYc.this.Qhi(jSONObject, "intercept_type", Integer.valueOf(i));
                kYc.this.Qhi(jSONObject, SessionDescription.ATTR_TYPE, "intercept_js");
                kYc.this.Qhi(jSONObject, "url", str);
                kYc.this.Qhi(jSONObject, "duration", Long.valueOf(j2 - j));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Sf, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.ROR
    public void Qhi(final String str) {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.7
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc.this.Qhi(jSONObject, "jsb", str);
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, "webview_jsb_start", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.ROR
    public void cJ(final String str) {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.8
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(str)) {
                    return;
                }
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc.this.Qhi(jSONObject, "jsb", str);
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, "webview_jsb_end", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.ROR
    public void cJ(final JSONObject jSONObject) {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.9
            @Override // java.lang.Runnable
            public void run() {
                JSONObject jSONObject2;
                if (kYc.this.Tgh == null || (jSONObject2 = jSONObject) == null) {
                    return;
                }
                Iterator<String> keys = jSONObject2.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    kYc kyc = kYc.this;
                    kyc.Qhi(kyc.Tgh, next, jSONObject.opt(next));
                }
                kYc.this.CJ = Boolean.TRUE;
                kYc.this.zc();
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.Tgh
    public void Gm() {
        this.ac = Boolean.TRUE;
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.Tgh
    public void Qhi(boolean z) {
        this.fl = Boolean.valueOf(z);
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.Tgh
    public void zc() {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.10
            @Override // java.lang.Runnable
            public void run() {
                if (kYc.this.hpZ()) {
                    if (kYc.this.ROR != null && kYc.this.ROR.length() != 0) {
                        try {
                            kYc.this.Tgh.put("native_switchBackgroundAndForeground", kYc.this.ROR);
                        } catch (Exception unused) {
                        }
                    }
                    if (kYc.this.Sf != null && kYc.this.Sf.length() != 0) {
                        try {
                            kYc.this.Tgh.put("intercept_source", kYc.this.Sf);
                        } catch (Exception unused2) {
                        }
                    }
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("webview_time_track", kYc.this.Tgh);
                    } catch (JSONException e2) {
                        com.bytedance.sdk.component.utils.ABk.Qhi("WebviewTimeTrack", "trySendTrackInfo json error", e2);
                    }
                    if (com.bytedance.sdk.openadsdk.core.hm.cJ().HzH() && kYc.this.Tgh != null) {
                        JSONObject unused3 = kYc.this.Tgh;
                    }
                    ac.cJ(kYc.this.cJ, kYc.this.Qhi, "webview_time_track", jSONObject);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean hpZ() {
        if (this.fl.booleanValue()) {
            return true;
        }
        return this.CJ.booleanValue() && this.ac.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(JSONObject jSONObject, String str, Object obj, boolean z) {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (!z) {
            try {
                if (jSONObject.has(str)) {
                    return;
                }
            } catch (Exception unused) {
                return;
            }
        }
        jSONObject.put(str, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(JSONObject jSONObject, String str, Object obj) {
        Qhi(jSONObject, str, obj, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Qhi(JSONArray jSONArray, Object obj) {
        if (jSONArray != null && jSONArray.length() < 10) {
            try {
                jSONArray.put(obj);
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.Qhi
    public void ac(final String str) {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.11
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, str, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.Qhi
    public void cJ(final int i, final String str) {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.13
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc.this.Qhi(jSONObject, "code", Integer.valueOf(i));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, str, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.cJ
    public void ABk() {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.14
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, "native_render_end", jSONObject);
                long currentTimeMillis2 = System.currentTimeMillis();
                JSONObject jSONObject2 = new JSONObject();
                kYc.this.Qhi(jSONObject2, "ts", Long.valueOf(currentTimeMillis2));
                kYc kyc2 = kYc.this;
                kyc2.Qhi(kyc2.Tgh, "render_success", jSONObject2);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.cJ
    public void iMK() {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.15
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, "no_native_render", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.fl
    public void pA() {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.16
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, "render_failed", jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.Qhi
    public void CJ(final String str) {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.17
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, str, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.Qhi
    public void fl(final String str) {
        try {
            com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.18
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    kYc kyc = kYc.this;
                    kyc.Qhi(kyc.Tgh, str, jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.Qhi
    public void Tgh(final String str) {
        try {
            com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.19
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    kYc kyc = kYc.this;
                    kyc.Qhi(kyc.Tgh, str, jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.Qhi
    public void ac(final int i, final String str) {
        try {
            com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.20
                @Override // java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    JSONObject jSONObject = new JSONObject();
                    kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                    kYc.this.Qhi(jSONObject, "code", Integer.valueOf(i));
                    kYc kyc = kYc.this;
                    kyc.Qhi(kyc.Tgh, str, jSONObject);
                }
            });
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.Qhi
    public void ROR(final String str) {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.21
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc kyc = kYc.this;
                kyc.Qhi(kyc.Tgh, str, jSONObject);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.cJ.ac.ROR
    public void Qhi(final int i) {
        com.bytedance.sdk.component.utils.Sf.Qhi().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.cJ.kYc.22
            @Override // java.lang.Runnable
            public void run() {
                long currentTimeMillis = System.currentTimeMillis();
                JSONObject jSONObject = new JSONObject();
                kYc.this.Qhi(jSONObject, "ts", Long.valueOf(currentTimeMillis));
                kYc.this.Qhi(jSONObject, "isWebViewCache", Integer.valueOf(i));
                if (kYc.this.cJ != null && kYc.this.cJ.es() != null) {
                    if (!kYc.this.cJ.es().ABk()) {
                        kYc.this.Qhi(jSONObject, "engine_version", "v1");
                    } else {
                        kYc kyc = kYc.this;
                        kyc.Qhi(jSONObject, "engine_version", kyc.cJ.es().zc());
                    }
                }
                kYc kyc2 = kYc.this;
                kyc2.Qhi(kyc2.Tgh, "before_webview_request", jSONObject);
            }
        });
    }
}
