package com.applovin.impl.sdk.e;

import android.text.TextUtils;
import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.sdk.network.c;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinSdk;
import com.appodeal.ads.modules.common.internal.Constants;
import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public b(com.applovin.impl.sdk.n nVar) {
        super("TaskApiSubmitData", nVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(JSONObject jSONObject) {
        try {
            JSONObject a2 = com.applovin.impl.sdk.utils.i.a(jSONObject);
            this.f5674b.O().a(com.applovin.impl.sdk.c.b.aa, a2.getString("device_id"));
            this.f5674b.O().a(com.applovin.impl.sdk.c.b.ac, a2.getString("device_token"));
            this.f5674b.O().a(com.applovin.impl.sdk.c.b.ad, Long.valueOf(a2.getLong("publisher_id")));
            com.applovin.impl.sdk.utils.i.d(a2, this.f5674b);
            com.applovin.impl.sdk.utils.i.e(a2, this.f5674b);
            String string = JsonUtils.getString(a2, "latest_version", "");
            if (!TextUtils.isEmpty(string) && !AppLovinSdk.VERSION.equals(string)) {
                String str = "Current SDK version (" + AppLovinSdk.VERSION + ") is outdated. Please integrate the latest version of the AppLovin SDK (" + string + "). Doing so will improve your CPMs and ensure you have access to the latest revenue earning features.";
                if (JsonUtils.valueExists(a2, "sdk_update_message")) {
                    str = JsonUtils.getString(a2, "sdk_update_message", str);
                }
                com.applovin.impl.sdk.v.h("AppLovinSdk", str);
            }
            this.f5674b.W().b();
        } catch (Throwable th) {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Unable to parse API response", th);
            }
        }
    }

    private void b(JSONObject jSONObject) throws JSONException {
        com.applovin.impl.sdk.o Y = this.f5674b.Y();
        Map<String, Object> d2 = Y.d();
        Utils.renameKeyInObjectMap("platform", SessionDescription.ATTR_TYPE, d2);
        Utils.renameKeyInObjectMap("api_level", "sdk_version", d2);
        jSONObject.put("device_info", new JSONObject(d2));
        Map<String, Object> h2 = Y.h();
        Utils.renameKeyInObjectMap("sdk_version", "applovin_sdk_version", h2);
        Utils.renameKeyInObjectMap("ia", "installed_at", h2);
        jSONObject.put("app_info", new JSONObject(h2));
    }

    private void c(JSONObject jSONObject) throws JSONException {
        if (((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.ei)).booleanValue()) {
            jSONObject.put(Constants.STATS, this.f5674b.W().c());
        }
    }

    private void d(JSONObject jSONObject) {
        u<JSONObject> uVar = new u<JSONObject>(com.applovin.impl.sdk.network.c.a(this.f5674b).a(com.applovin.impl.sdk.utils.i.a("2.0/device", this.f5674b)).c(com.applovin.impl.sdk.utils.i.b("2.0/device", this.f5674b)).a(com.applovin.impl.sdk.utils.i.e(this.f5674b)).b(ShareTarget.METHOD_POST).a(jSONObject).d(((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.b.eH)).booleanValue()).a((c.a) new JSONObject()).a(((Integer) this.f5674b.a(com.applovin.impl.sdk.c.b.dc)).intValue()).a(), this.f5674b) { // from class: com.applovin.impl.sdk.e.b.1
            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(int i, String str, JSONObject jSONObject2) {
                com.applovin.impl.sdk.utils.i.a(i, this.f5674b);
            }

            @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
            public void a(JSONObject jSONObject2, int i) {
                b.this.a(jSONObject2);
            }
        };
        uVar.a(com.applovin.impl.sdk.c.b.bc);
        uVar.b(com.applovin.impl.sdk.c.b.bd);
        this.f5674b.V().a((a) uVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.c(this.f5675c, "Submitting user data...");
            }
            JSONObject jSONObject = new JSONObject();
            b(jSONObject);
            c(jSONObject);
            d(jSONObject);
        } catch (JSONException e2) {
            com.applovin.impl.sdk.v vVar2 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Unable to build JSON message with collected data", e2);
            }
        }
    }
}
