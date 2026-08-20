package com.ironsource.sdk.controller;

import android.content.Context;
import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.iab.omid.library.ironsrc.Omid;
import com.iab.omid.library.ironsrc.adsession.AdEvents;
import com.iab.omid.library.ironsrc.adsession.AdSession;
import com.iab.omid.library.ironsrc.adsession.AdSessionConfiguration;
import com.iab.omid.library.ironsrc.adsession.AdSessionContext;
import com.ironsource.sdk.controller.x;
import com.ironsource.sdk.e.a.a;
import com.ironsource.sdk.utils.Logger;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private static final String f11768a = "q";

    /* renamed from: b  reason: collision with root package name */
    private final Context f11769b;

    /* renamed from: c  reason: collision with root package name */
    private final com.ironsource.sdk.e.a.a f11770c = new com.ironsource.sdk.e.a.a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        String f11771a;

        /* renamed from: b  reason: collision with root package name */
        JSONObject f11772b;

        /* renamed from: c  reason: collision with root package name */
        String f11773c;

        /* renamed from: d  reason: collision with root package name */
        String f11774d;

        private a() {
        }

        /* synthetic */ a(byte b2) {
            this();
        }
    }

    public q(Context context) {
        this.f11769b = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, x.d.a aVar) {
        char c2;
        com.ironsource.sdk.e.a.a aVar2;
        JSONObject jSONObject = new JSONObject(str);
        a aVar3 = new a((byte) 0);
        aVar3.f11771a = jSONObject.optString("omidFunction");
        aVar3.f11772b = jSONObject.optJSONObject("omidParams");
        aVar3.f11773c = jSONObject.optString(FirebaseAnalytics.Param.SUCCESS);
        aVar3.f11774d = jSONObject.optString("fail");
        com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f();
        if (aVar3.f11772b != null) {
            String optString = aVar3.f11772b.optString("adViewId", "");
            if (!TextUtils.isEmpty(optString)) {
                fVar.a("adViewId", optString);
            }
        }
        try {
            String str2 = aVar3.f11771a;
            switch (str2.hashCode()) {
                case -1655974669:
                    if (str2.equals("activate")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -984459207:
                    if (str2.equals("getOmidData")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 70701699:
                    if (str2.equals("finishSession")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1208109646:
                    if (str2.equals("impressionOccurred")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1850541012:
                    if (str2.equals("startSession")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 != 0) {
                if (c2 == 1) {
                    com.ironsource.sdk.e.a.a aVar4 = this.f11770c;
                    a.C0326a a2 = a.C0326a.a(aVar3.f11772b);
                    if (!aVar4.f11988d) {
                        throw new IllegalStateException("OMID has not been activated");
                    }
                    if (TextUtils.isEmpty(a2.f11995g)) {
                        throw new IllegalStateException("Missing adview id in OMID params");
                    }
                    String str3 = a2.f11995g;
                    if (aVar4.f11987c.containsKey(str3)) {
                        throw new IllegalStateException("OMID Session has already started");
                    }
                    com.ironsource.sdk.c.e a3 = com.ironsource.sdk.c.d.a().a(str3);
                    if (a3 == null) {
                        throw new IllegalStateException("No adview found with the provided adViewId");
                    }
                    AdSession createAdSession = AdSession.createAdSession(AdSessionConfiguration.createAdSessionConfiguration(a2.f11994f, a2.f11993e, a2.f11990b, a2.f11991c, a2.f11989a), AdSessionContext.createHtmlAdSessionContext(aVar4.f11986b, a3.b(), null, a2.f11992d));
                    createAdSession.registerAdView(a3.b());
                    createAdSession.start();
                    aVar4.f11987c.put(str3, createAdSession);
                } else if (c2 == 2) {
                    com.ironsource.sdk.e.a.a aVar5 = this.f11770c;
                    JSONObject jSONObject2 = aVar3.f11772b;
                    aVar5.a(jSONObject2);
                    String optString2 = jSONObject2.optString("adViewId");
                    AdSession adSession = aVar5.f11987c.get(optString2);
                    if (adSession == null) {
                        throw new IllegalStateException("OMID Session has not started");
                    }
                    adSession.finish();
                    aVar5.f11987c.remove(optString2);
                } else if (c2 == 3) {
                    com.ironsource.sdk.e.a.a aVar6 = this.f11770c;
                    JSONObject jSONObject3 = aVar3.f11772b;
                    aVar6.a(jSONObject3);
                    AdSession adSession2 = aVar6.f11987c.get(jSONObject3.optString("adViewId"));
                    if (adSession2 == null) {
                        throw new IllegalStateException("OMID Session has not started");
                    }
                    AdEvents createAdEvents = AdEvents.createAdEvents(adSession2);
                    if (jSONObject3.optBoolean("signalLoaded")) {
                        createAdEvents.loaded();
                    }
                    createAdEvents.impressionOccurred();
                } else if (c2 != 4) {
                    throw new IllegalArgumentException(String.format("%s | unsupported OMID API", aVar3.f11771a));
                } else {
                    aVar2 = this.f11770c;
                }
                aVar.a(true, aVar3.f11773c, fVar);
            }
            com.ironsource.sdk.e.a.a aVar7 = this.f11770c;
            Context context = this.f11769b;
            if (!aVar7.f11988d) {
                Omid.activate(context);
                aVar7.f11988d = true;
            }
            aVar2 = this.f11770c;
            fVar = aVar2.a();
            aVar.a(true, aVar3.f11773c, fVar);
        } catch (Exception e2) {
            fVar.a("errMsg", e2.getMessage());
            Logger.i(f11768a, "OMIDJSAdapter " + aVar3.f11771a + " Exception: " + e2.getMessage());
            aVar.a(false, aVar3.f11774d, fVar);
        }
    }
}
