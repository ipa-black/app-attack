package com.applovin.impl.sdk.nativeAd;

import android.text.TextUtils;
import com.applovin.impl.sdk.ad.c;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.i;
import com.applovin.impl.sdk.utils.k;
import com.applovin.impl.sdk.v;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class AppLovinNativeAdService {
    private static final String TAG = "AppLovinNativeAdService";
    private final v logger;
    private final n sdk;

    public AppLovinNativeAdService(n nVar) {
        this.sdk = nVar;
        this.logger = nVar.D();
    }

    public void loadNextAdForAdToken(String str, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
        StringBuilder sb;
        String trim = str != null ? str.trim() : null;
        if (TextUtils.isEmpty(trim)) {
            v.i(TAG, "Invalid ad token specified");
            k.a(appLovinNativeAdLoadListener, -8);
            return;
        }
        com.applovin.impl.sdk.ad.c cVar = new com.applovin.impl.sdk.ad.c(trim, this.sdk);
        if (cVar.b() == c.a.REGULAR) {
            if (v.a()) {
                this.logger.b(TAG, "Loading next ad for token: " + cVar);
            }
            this.sdk.V().a(new b(cVar, appLovinNativeAdLoadListener, this.sdk), o.a.MAIN);
            return;
        }
        if (cVar.b() == c.a.AD_RESPONSE_JSON) {
            JSONObject d2 = cVar.d();
            if (d2 != null) {
                i.f(d2, this.sdk);
                i.d(d2, this.sdk);
                i.c(d2, this.sdk);
                i.e(d2, this.sdk);
                if (JsonUtils.getJSONArray(d2, "ads", new JSONArray()).length() > 0) {
                    if (v.a()) {
                        this.logger.b(TAG, "Rendering ad for token: " + cVar);
                    }
                    this.sdk.V().a(new d(d2, appLovinNativeAdLoadListener, this.sdk), o.a.MAIN);
                    return;
                }
                if (v.a()) {
                    this.logger.e(TAG, "No ad returned from the server for token: " + cVar);
                }
                k.a(appLovinNativeAdLoadListener, 204);
                return;
            }
            sb = new StringBuilder("Unable to retrieve ad response JSON from token: ");
        } else {
            sb = new StringBuilder("Invalid ad token specified: ");
        }
        v.i(TAG, sb.append(cVar).toString());
        k.a(appLovinNativeAdLoadListener, -8);
    }
}
