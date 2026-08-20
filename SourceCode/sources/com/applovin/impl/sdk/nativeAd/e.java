package com.applovin.impl.sdk.nativeAd;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.e.r;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.nativeAd.AppLovinNativeAdImpl;
import com.applovin.impl.sdk.nativeAd.a;
import com.applovin.impl.sdk.network.i;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class e extends com.applovin.impl.sdk.e.a implements a.InterfaceC0082a, AppLovinAdLoadListener {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f5883a;

    /* renamed from: e  reason: collision with root package name */
    private final JSONObject f5884e;

    /* renamed from: f  reason: collision with root package name */
    private final AppLovinNativeAdLoadListener f5885f;

    /* renamed from: g  reason: collision with root package name */
    private String f5886g;

    /* renamed from: h  reason: collision with root package name */
    private String f5887h;
    private String i;
    private String j;
    private Uri k;
    private Uri l;
    private com.applovin.impl.b.a m;
    private Uri n;
    private Uri o;
    private Uri p;
    private Uri q;
    private final List<String> r;
    private String s;
    private final List<i> t;
    private final List<i> u;
    private final List<i> v;
    private final List<i> w;

    public e(JSONObject jSONObject, JSONObject jSONObject2, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener, n nVar) {
        super("TaskRenderNativeAd", nVar);
        this.f5886g = "";
        this.f5887h = "";
        this.i = "";
        this.j = "";
        this.k = null;
        this.l = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = new ArrayList();
        this.t = new ArrayList();
        this.u = new ArrayList();
        this.v = new ArrayList();
        this.w = new ArrayList();
        this.f5883a = jSONObject;
        this.f5884e = jSONObject2;
        this.f5885f = appLovinNativeAdLoadListener;
    }

    private void a() {
        AppLovinNativeAdImpl build = new AppLovinNativeAdImpl.Builder(JsonUtils.shallowCopy(this.f5883a), JsonUtils.shallowCopy(this.f5884e), this.f5674b).setTitle(this.f5886g).setAdvertiser(this.f5887h).setBody(this.i).setCallToAction(this.j).setIconUri(this.k).setMainImageUri(this.l).setPrivacyIconUri(this.n).setVastAd(this.m).setPrivacyDestinationUri(this.o).setClickDestinationUri(this.p).setClickDestinationBackupUri(this.q).setClickTrackingUrls(this.r).setJsTracker(this.s).setImpressionRequests(this.t).setViewableMRC50Requests(this.u).setViewableMRC100Requests(this.v).setViewableVideo50Requests(this.w).build();
        build.getAdEventTracker().b();
        v vVar = this.f5676d;
        if (v.a()) {
            this.f5676d.b(this.f5675c, "Starting cache task for type: " + build.getType() + APSSharedUtil.TRUNCATE_SEPARATOR);
        }
        this.f5674b.V().a(new a(build, this.f5674b, this), o.a.MAIN);
    }

    private void a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        String string = JsonUtils.getString(jSONObject, "url", null);
        if (StringUtils.isValidString(string)) {
            this.p = Uri.parse(string);
            v vVar = this.f5676d;
            if (v.a()) {
                this.f5676d.b(this.f5675c, "Processed click destination URL: " + this.p);
            }
        }
        String string2 = JsonUtils.getString(jSONObject, "fallback", null);
        if (StringUtils.isValidString(string2)) {
            this.q = Uri.parse(string2);
            v vVar2 = this.f5676d;
            if (v.a()) {
                this.f5676d.b(this.f5675c, "Processed click destination backup URL: " + this.q);
            }
        }
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject, "clicktrackers", null);
        if (jSONArray != null) {
            try {
                this.r.addAll(JsonUtils.toList(jSONArray));
                v vVar3 = this.f5676d;
                if (v.a()) {
                    this.f5676d.b(this.f5675c, "Processed click tracking URLs: " + this.r);
                }
            } catch (Throwable th) {
                v vVar4 = this.f5676d;
                if (v.a()) {
                    this.f5676d.b(this.f5675c, "Failed to render click tracking URLs", th);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.f5885f.onNativeAdLoadFailed(-6);
    }

    private void b(final AppLovinNativeAdImpl appLovinNativeAdImpl) {
        AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.nativeAd.e.1
            @Override // java.lang.Runnable
            public void run() {
                v unused = e.this.f5676d;
                if (v.a()) {
                    e.this.f5676d.b(e.this.f5675c, "Preparing native ad view components...");
                }
                try {
                    appLovinNativeAdImpl.setUpNativeAdViewComponents();
                    v unused2 = e.this.f5676d;
                    if (v.a()) {
                        e.this.f5676d.b(e.this.f5675c, "Successfully prepared native ad view components");
                    }
                    appLovinNativeAdImpl.getAdEventTracker().c();
                    e.this.f5885f.onNativeAdLoaded(appLovinNativeAdImpl);
                } catch (Throwable th) {
                    v unused3 = e.this.f5676d;
                    if (v.a()) {
                        e.this.f5676d.b(e.this.f5675c, "Failed to prepare native ad view components", th);
                    }
                    e.this.b();
                }
            }
        });
    }

    @Override // com.applovin.impl.sdk.nativeAd.a.InterfaceC0082a
    public void a(AppLovinNativeAdImpl appLovinNativeAdImpl) {
        v vVar = this.f5676d;
        if (v.a()) {
            this.f5676d.b(this.f5675c, "Successfully cached and loaded ad");
        }
        b(appLovinNativeAdImpl);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        v vVar = this.f5676d;
        if (v.a()) {
            this.f5676d.b(this.f5675c, "VAST ad rendered successfully");
        }
        this.m = (com.applovin.impl.b.a) appLovinAd;
        a();
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        v vVar = this.f5676d;
        if (v.a()) {
            this.f5676d.e(this.f5675c, "VAST ad failed to render");
        }
        a();
    }

    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v14, types: [org.json.JSONObject, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v7, types: [org.json.JSONObject, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v90 */
    @Override // java.lang.Runnable
    public void run() {
        v vVar;
        String str;
        StringBuilder sb;
        v vVar2;
        String str2;
        StringBuilder sb2;
        String str3;
        StringBuilder append;
        v vVar3;
        String str4;
        StringBuilder sb3;
        String sb4;
        String str5;
        StringBuilder sb5;
        Uri uri;
        ?? r2 = 0;
        String string = JsonUtils.getString(this.f5883a, "privacy_icon_url", null);
        if (URLUtil.isValidUrl(string)) {
            this.n = Uri.parse(string);
        }
        String string2 = JsonUtils.getString(this.f5883a, "privacy_url", null);
        if (URLUtil.isValidUrl(string2)) {
            this.o = Uri.parse(string2);
        }
        JSONObject jSONObject = JsonUtils.getJSONObject(this.f5883a, "ortb_response", (JSONObject) null);
        if (jSONObject == null || jSONObject.length() == 0) {
            v vVar4 = this.f5676d;
            if (v.a()) {
                this.f5676d.e(this.f5675c, "No oRtb response provided: " + this.f5883a);
            }
            b();
            return;
        }
        String string3 = JsonUtils.getString(jSONObject, MediationMetaData.KEY_VERSION, null);
        JSONObject jSONObject2 = JsonUtils.getJSONObject(jSONObject, "value", (JSONObject) null);
        v vVar5 = this.f5676d;
        if (v.a()) {
            this.f5676d.b(this.f5675c, "Rendering native ad for oRTB version: " + string3);
        }
        JSONObject jSONObject3 = JsonUtils.getJSONObject(jSONObject2, "native", jSONObject2);
        a(JsonUtils.getJSONObject(jSONObject3, "link", (JSONObject) null));
        JSONArray jSONArray = JsonUtils.getJSONArray(jSONObject3, "assets", null);
        if (jSONArray == null || jSONArray.length() == 0) {
            v vVar6 = this.f5676d;
            if (v.a()) {
                this.f5676d.e(this.f5675c, "Unable to retrieve assets - failing ad load: " + this.f5883a);
            }
            b();
            return;
        }
        String str6 = "";
        int i = 0;
        while (i < jSONArray.length()) {
            JSONObject jSONObject4 = JsonUtils.getJSONObject(jSONArray, i, (JSONObject) r2);
            if (jSONObject4.has("title")) {
                this.f5886g = JsonUtils.getString(JsonUtils.getJSONObject(jSONObject4, "title", (JSONObject) r2), "text", r2);
                v vVar7 = this.f5676d;
                if (v.a()) {
                    this.f5676d.b(this.f5675c, "Processed title: " + this.f5886g);
                }
            } else if (jSONObject4.has("link")) {
                a(JsonUtils.getJSONObject(jSONObject4, "link", (JSONObject) r2));
            } else if (jSONObject4.has("img")) {
                int i2 = JsonUtils.getInt(jSONObject4, "id", -1);
                JSONObject jSONObject5 = JsonUtils.getJSONObject(jSONObject4, "img", (JSONObject) r2);
                int i3 = JsonUtils.getInt(jSONObject5, SessionDescription.ATTR_TYPE, -1);
                String string4 = JsonUtils.getString(jSONObject5, "url", r2);
                if (i3 == 1 || 3 == i2) {
                    this.k = Uri.parse(string4);
                    v vVar8 = this.f5676d;
                    if (v.a()) {
                        vVar2 = this.f5676d;
                        str2 = this.f5675c;
                        sb5 = new StringBuilder("Processed icon URL: ");
                        uri = this.k;
                        append = sb5.append(uri);
                    }
                } else if (i3 == 3 || 2 == i2) {
                    this.l = Uri.parse(string4);
                    v vVar9 = this.f5676d;
                    if (v.a()) {
                        vVar2 = this.f5676d;
                        str2 = this.f5675c;
                        sb5 = new StringBuilder("Processed main image URL: ");
                        uri = this.l;
                        append = sb5.append(uri);
                    }
                } else {
                    v vVar10 = this.f5676d;
                    if (v.a()) {
                        this.f5676d.d(this.f5675c, "Unrecognized image: " + jSONObject4);
                    }
                    int i4 = JsonUtils.getInt(jSONObject5, "w", -1);
                    int i5 = JsonUtils.getInt(jSONObject5, "h", -1);
                    if (i4 <= 0 || i5 <= 0) {
                        v vVar11 = this.f5676d;
                        if (v.a()) {
                            vVar3 = this.f5676d;
                            str4 = this.f5675c;
                            sb4 = "Skipping...";
                            vVar3.d(str4, sb4);
                        }
                    } else if (i4 / i5 > 1.0d) {
                        v vVar12 = this.f5676d;
                        if (v.a()) {
                            this.f5676d.b(this.f5675c, "Inferring main image from " + i4 + "x" + i5 + APSSharedUtil.TRUNCATE_SEPARATOR);
                        }
                        this.l = Uri.parse(string4);
                    } else {
                        v vVar13 = this.f5676d;
                        if (v.a()) {
                            this.f5676d.b(this.f5675c, "Inferring icon image from " + i4 + "x" + i5 + APSSharedUtil.TRUNCATE_SEPARATOR);
                        }
                        this.k = Uri.parse(string4);
                    }
                }
                str5 = append.toString();
                vVar2.b(str2, str5);
            } else {
                if (jSONObject4.has("video")) {
                    str6 = JsonUtils.getString(JsonUtils.getJSONObject(jSONObject4, "video", (JSONObject) null), "vasttag", null);
                    if (StringUtils.isValidString(str6)) {
                        v vVar14 = this.f5676d;
                        if (v.a()) {
                            vVar2 = this.f5676d;
                            str2 = this.f5675c;
                            str5 = "Processed VAST video";
                            vVar2.b(str2, str5);
                        }
                    } else {
                        v vVar15 = this.f5676d;
                        if (v.a()) {
                            vVar3 = this.f5676d;
                            str4 = this.f5675c;
                            sb3 = new StringBuilder("Ignoring invalid \"vasttag\" for video: ");
                            sb4 = sb3.append(jSONObject4).toString();
                        }
                    }
                } else if (jSONObject4.has("data")) {
                    int i6 = JsonUtils.getInt(jSONObject4, "id", -1);
                    JSONObject jSONObject6 = JsonUtils.getJSONObject(jSONObject4, "data", (JSONObject) null);
                    int i7 = JsonUtils.getInt(jSONObject6, SessionDescription.ATTR_TYPE, -1);
                    String string5 = JsonUtils.getString(jSONObject6, "value", null);
                    if (i7 == 1 || i6 == 8) {
                        this.f5887h = string5;
                        v vVar16 = this.f5676d;
                        if (v.a()) {
                            vVar2 = this.f5676d;
                            str2 = this.f5675c;
                            sb2 = new StringBuilder("Processed advertiser: ");
                            str3 = this.f5887h;
                            append = sb2.append(str3);
                        }
                    } else if (i7 == 2 || i6 == 4) {
                        this.i = string5;
                        v vVar17 = this.f5676d;
                        if (v.a()) {
                            vVar2 = this.f5676d;
                            str2 = this.f5675c;
                            sb2 = new StringBuilder("Processed body: ");
                            str3 = this.i;
                            append = sb2.append(str3);
                        }
                    } else if (i7 == 12 || i6 == 5) {
                        this.j = string5;
                        v vVar18 = this.f5676d;
                        if (v.a()) {
                            vVar2 = this.f5676d;
                            str2 = this.f5675c;
                            sb2 = new StringBuilder("Processed cta: ");
                            str3 = this.j;
                            append = sb2.append(str3);
                        }
                    } else {
                        v vVar19 = this.f5676d;
                        if (v.a()) {
                            vVar3 = this.f5676d;
                            str4 = this.f5675c;
                            sb3 = new StringBuilder("Skipping unsupported data: ");
                            sb4 = sb3.append(jSONObject4).toString();
                        }
                    }
                    str5 = append.toString();
                    vVar2.b(str2, str5);
                } else {
                    v vVar20 = this.f5676d;
                    if (v.a()) {
                        this.f5676d.e(this.f5675c, "Unsupported asset object: " + jSONObject4);
                    }
                }
                vVar3.d(str4, sb4);
            }
            i++;
            r2 = 0;
        }
        String string6 = JsonUtils.getString(jSONObject3, "jstracker", null);
        if (StringUtils.isValidString(string6)) {
            this.s = string6;
            v vVar21 = this.f5676d;
            if (v.a()) {
                this.f5676d.b(this.f5675c, "Processed jstracker: " + string6);
            }
        }
        Object obj = null;
        JSONArray jSONArray2 = JsonUtils.getJSONArray(jSONObject3, "imptrackers", null);
        if (jSONArray2 != null) {
            int i8 = 0;
            while (i8 < jSONArray2.length()) {
                Object objectAtIndex = JsonUtils.getObjectAtIndex(jSONArray2, i8, obj);
                if (objectAtIndex instanceof String) {
                    String str7 = (String) objectAtIndex;
                    if (!TextUtils.isEmpty(str7)) {
                        this.t.add(new i.a(this.f5674b).a(str7).d(false).c(false).a());
                        v vVar22 = this.f5676d;
                        if (v.a()) {
                            this.f5676d.b(this.f5675c, "Processed imptracker URL: " + str7);
                        }
                    }
                }
                i8++;
                obj = null;
            }
        }
        ?? r22 = 0;
        JSONArray jSONArray3 = JsonUtils.getJSONArray(jSONObject3, "eventtrackers", null);
        if (jSONArray3 != null) {
            int i9 = 0;
            while (i9 < jSONArray3.length()) {
                JSONObject jSONObject7 = JsonUtils.getJSONObject(jSONArray3, i9, (JSONObject) r22);
                int i10 = JsonUtils.getInt(jSONObject7, "event", -1);
                int i11 = JsonUtils.getInt(jSONObject7, FirebaseAnalytics.Param.METHOD, -1);
                String string7 = JsonUtils.getString(jSONObject7, "url", r22);
                if (!TextUtils.isEmpty(string7)) {
                    if (i11 == 1 || i11 == 2) {
                        i a2 = new i.a(this.f5674b).a(string7).d(false).c(false).g(i11 == 2).a();
                        if (i10 == 1) {
                            this.t.add(a2);
                            v vVar23 = this.f5676d;
                            if (v.a()) {
                                this.f5676d.b(this.f5675c, "Processed impression URL: " + string7);
                            }
                        } else if (i10 == 2) {
                            this.u.add(a2);
                            v vVar24 = this.f5676d;
                            if (v.a()) {
                                vVar = this.f5676d;
                                str = this.f5675c;
                                sb = new StringBuilder("Processed viewable MRC50 URL: ");
                                vVar.b(str, sb.append(string7).toString());
                            }
                        } else if (i10 == 3) {
                            this.v.add(a2);
                            v vVar25 = this.f5676d;
                            if (v.a()) {
                                vVar = this.f5676d;
                                str = this.f5675c;
                                sb = new StringBuilder("Processed viewable MRC100 URL: ");
                                vVar.b(str, sb.append(string7).toString());
                            }
                        } else {
                            if (i10 == 4) {
                                this.w.add(a2);
                                v vVar26 = this.f5676d;
                                if (v.a()) {
                                    this.f5676d.b(this.f5675c, "Processed viewable video 50 URL: " + string7);
                                }
                            } else if (i10 == 555) {
                                v vVar27 = this.f5676d;
                                if (v.a()) {
                                    this.f5676d.b(this.f5675c, "Ignoring processing of OMID URL: " + string7);
                                }
                            } else {
                                v vVar28 = this.f5676d;
                                if (v.a()) {
                                    this.f5676d.e(this.f5675c, "Unsupported event tracker: " + jSONObject7);
                                }
                            }
                            i9++;
                            r22 = 0;
                        }
                        i9++;
                        r22 = 0;
                    } else {
                        v vVar29 = this.f5676d;
                        if (v.a()) {
                            this.f5676d.e(this.f5675c, "Unsupported method for event tracker: " + jSONObject7);
                        }
                    }
                }
                i9++;
                r22 = 0;
            }
        }
        if (!StringUtils.isValidString(str6)) {
            a();
            return;
        }
        v vVar30 = this.f5676d;
        if (v.a()) {
            this.f5676d.b(this.f5675c, "Processing VAST video...");
        }
        this.f5674b.V().a((com.applovin.impl.sdk.e.a) r.a(str6, JsonUtils.shallowCopy(this.f5883a), JsonUtils.shallowCopy(this.f5884e), com.applovin.impl.sdk.ad.b.UNKNOWN, this, this.f5674b));
    }
}
