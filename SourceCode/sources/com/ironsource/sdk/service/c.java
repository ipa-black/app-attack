package com.ironsource.sdk.service;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import antlr.Version;
import com.appodeal.ads.modules.common.internal.Constants;
import com.ironsource.environment.h;
import com.ironsource.environment.k;
import com.ironsource.sdk.utils.IronSourceQaProperties;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private com.ironsource.mediationsdk.adunit.a.a f12112a = new com.ironsource.mediationsdk.adunit.a.a();

    public final void a() {
        HashMap hashMap = new HashMap();
        hashMap.put("omv", com.ironsource.sdk.e.a.a.f11985a);
        hashMap.put("ompv", Version.subversion);
        com.ironsource.mediationsdk.adunit.a.a.a(hashMap);
    }

    public final void a(Context context) {
        if (context instanceof Activity) {
            com.ironsource.mediationsdk.adunit.a.a.a("imm", Boolean.valueOf(h.a((Activity) context)));
        }
    }

    public final void b() {
        String controllerConfig = SDKUtils.getControllerConfig();
        if (TextUtils.isEmpty(controllerConfig)) {
            return;
        }
        try {
            com.ironsource.mediationsdk.adunit.a.a.a("cncdn", new JSONObject(controllerConfig).opt("chinaCDN"));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public final void b(Context context) {
        com.ironsource.mediationsdk.adunit.a.a.a("gpi", Boolean.valueOf(k.a(context)));
    }

    public final void c() {
        JSONObject jSONObject = new JSONObject(IronSourceQaProperties.getInstance().getParameters());
        if (jSONObject.length() > 0) {
            com.ironsource.mediationsdk.adunit.a.a.a(Constants.DEBUG_INTERSTITIAL, jSONObject);
        }
    }
}
