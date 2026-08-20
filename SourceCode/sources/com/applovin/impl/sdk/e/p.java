package com.applovin.impl.sdk.e;

import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.appodeal.ads.AppodealNetworks;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import com.google.android.gms.ads.AdError;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class p extends a implements AppLovinAdLoadListener {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f5744a;

    /* renamed from: e  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.d f5745e;

    /* renamed from: f  reason: collision with root package name */
    private final com.applovin.impl.sdk.ad.b f5746f;

    /* renamed from: g  reason: collision with root package name */
    private final AppLovinAdLoadListener f5747g;

    public p(JSONObject jSONObject, com.applovin.impl.sdk.ad.d dVar, com.applovin.impl.sdk.ad.b bVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        super("TaskProcessAdResponse", nVar);
        if (jSONObject == null) {
            throw new IllegalArgumentException("No response specified");
        }
        if (dVar == null) {
            throw new IllegalArgumentException("No zone specified");
        }
        this.f5744a = jSONObject;
        this.f5745e = dVar;
        this.f5746f = bVar;
        this.f5747g = appLovinAdLoadListener;
    }

    private void a(JSONObject jSONObject) {
        a qVar;
        String string = JsonUtils.getString(jSONObject, SessionDescription.ATTR_TYPE, AdError.UNDEFINED_DOMAIN);
        if (AppodealNetworks.APPLOVIN.equalsIgnoreCase(string)) {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Starting task for AppLovin ad...");
            }
            qVar = new s(jSONObject, this.f5744a, this.f5746f, this, this.f5674b);
        } else if ("vast".equalsIgnoreCase(string)) {
            com.applovin.impl.sdk.v vVar2 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Starting task for VAST ad...");
            }
            this.f5674b.V().a((a) r.a(jSONObject, this.f5744a, this.f5746f, this, this.f5674b));
            return;
        } else if (!"js_tag".equalsIgnoreCase(string)) {
            com.applovin.impl.sdk.v vVar3 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.d(this.f5675c, "Unable to process ad of unknown type: " + string);
            }
            failedToReceiveAd(AppLovinErrorCodes.INVALID_RESPONSE);
            return;
        } else {
            com.applovin.impl.sdk.v vVar4 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Starting task for JS tag ad...");
            }
            qVar = new q(jSONObject, this.f5744a, this.f5746f, this, this.f5674b);
        }
        this.f5674b.V().a(qVar);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        AppLovinAdLoadListener appLovinAdLoadListener = this.f5747g;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.adReceived(appLovinAd);
        }
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        AppLovinAdLoadListener appLovinAdLoadListener = this.f5747g;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.failedToReceiveAd(i);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        JSONArray jSONArray = JsonUtils.getJSONArray(this.f5744a, "ads", new JSONArray());
        if (jSONArray.length() > 0) {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Processing ad...");
            }
            a(JsonUtils.getJSONObject(jSONArray, 0, new JSONObject()));
            return;
        }
        com.applovin.impl.sdk.v vVar2 = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.d(this.f5675c, "No ads were returned from the server");
        }
        Utils.maybeHandleNoFillResponseForPublisher(this.f5745e.a(), this.f5745e.b(), this.f5744a, this.f5674b);
        failedToReceiveAd(204);
    }
}
