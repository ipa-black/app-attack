package com.ironsource.sdk.controller;

import android.app.Activity;
import android.text.TextUtils;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.environment.a;
import com.ironsource.sdk.a.f;
import com.ironsource.sdk.controller.x;
import com.ironsource.sdk.utils.Logger;
import com.onesignal.outcomes.data.OutcomeEventsTable;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class a implements com.ironsource.sdk.b.a {

    /* renamed from: a  reason: collision with root package name */
    y f11606a;

    /* renamed from: b  reason: collision with root package name */
    private com.ironsource.sdk.c.d f11607b = com.ironsource.sdk.c.d.a();

    /* renamed from: c  reason: collision with root package name */
    private c f11608c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ironsource.sdk.controller.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static class C0325a {

        /* renamed from: a  reason: collision with root package name */
        String f11609a;

        /* renamed from: b  reason: collision with root package name */
        JSONObject f11610b;

        /* renamed from: c  reason: collision with root package name */
        String f11611c;

        /* renamed from: d  reason: collision with root package name */
        String f11612d;

        private C0325a() {
        }

        /* synthetic */ C0325a(byte b2) {
            this();
        }
    }

    public a(c cVar) {
        this.f11608c = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, x.d.a aVar) {
        char c2;
        JSONObject jSONObject = new JSONObject(str);
        C0325a c0325a = new C0325a((byte) 0);
        c0325a.f11609a = jSONObject.optString("functionName");
        c0325a.f11610b = jSONObject.optJSONObject("functionParams");
        c0325a.f11611c = jSONObject.optString(FirebaseAnalytics.Param.SUCCESS);
        c0325a.f11612d = jSONObject.optString("fail");
        com.ironsource.sdk.g.f fVar = new com.ironsource.sdk.g.f();
        try {
            String str2 = c0325a.f11609a;
            switch (str2.hashCode()) {
                case -1384357108:
                    if (str2.equals("removeAdView")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 691453791:
                    if (str2.equals("sendMessage")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 842351363:
                    if (str2.equals("loadWithUrl")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1182065477:
                    if (str2.equals("handleGetViewVisibility")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1491535759:
                    if (str2.equals("webviewAction")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 == 0) {
                final com.ironsource.sdk.c.d dVar = this.f11607b;
                final JSONObject jSONObject2 = c0325a.f11610b;
                final Activity a2 = this.f11608c.a();
                final String str3 = c0325a.f11611c;
                final String str4 = c0325a.f11612d;
                final String string = jSONObject2.getString("adViewId");
                if (string.isEmpty()) {
                    Logger.i(com.ironsource.sdk.c.d.f11571a, "loadWithUrl fail - adViewId is empty");
                    throw new Exception("adViewId is empty");
                }
                com.ironsource.sdk.a c3 = dVar.c(jSONObject2);
                if (dVar.f11573b.containsKey(string)) {
                    Logger.i(com.ironsource.sdk.c.d.f11571a, "sendMessageToAd fail - collection already contain adViewId");
                    throw new Exception("collection already contain adViewId");
                }
                final com.ironsource.sdk.c.c cVar = new com.ironsource.sdk.c.c(this, a2, string, c3);
                com.ironsource.environment.e.a.f10578a.a(new Runnable() { // from class: com.ironsource.sdk.c.c.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (cVar.f11557b != null) {
                            com.ironsource.sdk.a.d.a(f.n, new com.ironsource.sdk.a.a().a("callfailreason", "loadWithUrl | webView is not null").f11500a);
                        }
                        try {
                            c.a(cVar, str4);
                            cVar.f11557b.loadUrl(c.b(cVar, jSONObject2.getString("urlForWebView")));
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("adViewId", cVar.f11556a);
                            cVar.f11558c.a(str3, jSONObject3);
                        } catch (Exception e2) {
                            cVar.b(str4, e2.getMessage());
                            com.ironsource.sdk.a.d.a(f.n, new com.ironsource.sdk.a.a().a("callfailreason", e2.getMessage()).f11500a);
                        }
                    }
                });
                if (com.ironsource.sdk.c.d.b(jSONObject2)) {
                    com.ironsource.environment.e.a.f10578a.a(new Runnable() { // from class: com.ironsource.sdk.c.d.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            dVar.f11573b.put(string, new a(cVar, a2.getApplicationContext()));
                        }
                    });
                } else {
                    dVar.f11573b.put(string, cVar);
                }
            } else if (c2 == 1) {
                com.ironsource.sdk.c.d dVar2 = this.f11607b;
                JSONObject jSONObject3 = c0325a.f11610b;
                String str5 = c0325a.f11611c;
                String str6 = c0325a.f11612d;
                String string2 = new JSONObject(jSONObject3.getString(OutcomeEventsTable.COLUMN_NAME_PARAMS)).getString("adViewId");
                if (string2.isEmpty()) {
                    Logger.i(com.ironsource.sdk.c.d.f11571a, "sendMessageToAd fail - adViewId is empty");
                    throw new Exception("adViewId is empty");
                } else if (!dVar2.f11573b.containsKey(string2)) {
                    Logger.i(com.ironsource.sdk.c.d.f11571a, "sendMessageToAd fail - collection does not contain adViewId");
                    throw new Exception("collection does not contain adViewId");
                } else {
                    com.ironsource.sdk.c.e eVar = dVar2.f11573b.get(string2);
                    if (eVar != null) {
                        eVar.b(jSONObject3, str5, str6);
                    }
                }
            } else if (c2 == 2) {
                com.ironsource.sdk.c.d dVar3 = this.f11607b;
                JSONObject jSONObject4 = c0325a.f11610b;
                String str7 = c0325a.f11611c;
                String str8 = c0325a.f11612d;
                String string3 = jSONObject4.getString("adViewId");
                if (string3.isEmpty()) {
                    Logger.i(com.ironsource.sdk.c.d.f11571a, "removeAdView fail - adViewId is empty");
                    throw new Exception("adViewId is empty");
                } else if (!dVar3.f11573b.containsKey(string3)) {
                    Logger.i(com.ironsource.sdk.c.d.f11571a, "removeAdView fail - collection does not contain adViewId");
                    throw new Exception("collection does not contain adViewId");
                } else {
                    com.ironsource.sdk.c.e eVar2 = dVar3.f11573b.get(string3);
                    dVar3.f11573b.remove(string3);
                    if (eVar2 != null) {
                        eVar2.a(str7, str8);
                    }
                }
            } else if (c2 == 3) {
                com.ironsource.sdk.c.d dVar4 = this.f11607b;
                JSONObject jSONObject5 = c0325a.f11610b;
                String str9 = c0325a.f11611c;
                String str10 = c0325a.f11612d;
                String string4 = jSONObject5.getString("adViewId");
                if (string4.isEmpty()) {
                    Logger.i(com.ironsource.sdk.c.d.f11571a, "removeAdView fail - adViewId is empty");
                    throw new Exception("adViewId is empty");
                } else if (!dVar4.f11573b.containsKey(string4)) {
                    Logger.i(com.ironsource.sdk.c.d.f11571a, "removeAdView fail - collection does not contain adViewId");
                    throw new Exception("collection does not contain adViewId");
                } else {
                    com.ironsource.sdk.c.e eVar3 = dVar4.f11573b.get(string4);
                    if (eVar3 != null) {
                        eVar3.a(jSONObject5, str9, str10);
                    }
                }
            } else if (c2 != 4) {
                throw new IllegalArgumentException(String.format("%s | unsupported AdViews API", c0325a.f11609a));
            } else {
                com.ironsource.sdk.c.d dVar5 = this.f11607b;
                JSONObject jSONObject6 = c0325a.f11610b;
                String str11 = c0325a.f11611c;
                String str12 = c0325a.f11612d;
                String string5 = jSONObject6.getString("adViewId");
                if (string5.isEmpty()) {
                    Logger.i(com.ironsource.sdk.c.d.f11571a, "performWebViewAction fail - adViewId is empty");
                    throw new Exception("adViewId is empty");
                } else if (!dVar5.f11573b.containsKey(string5)) {
                    Logger.i(com.ironsource.sdk.c.d.f11571a, "performWebViewAction fail - collection does not contain adViewId");
                    throw new Exception("collection does not contain adViewId");
                } else {
                    com.ironsource.sdk.c.e eVar4 = dVar5.f11573b.get(string5);
                    String string6 = jSONObject6.getString("actionName");
                    if (eVar4 != null) {
                        eVar4.a(string6, str11, str12);
                    }
                }
            }
        } catch (Exception e2) {
            fVar.a("errMsg", e2.getMessage());
            String a3 = com.ironsource.sdk.c.d.a(c0325a.f11610b);
            if (!TextUtils.isEmpty(a3)) {
                fVar.a("adViewId", a3);
            }
            aVar.a(false, c0325a.f11612d, fVar);
        }
    }

    @Override // com.ironsource.sdk.b.a
    public final void a(String str, String str2, String str3) {
        a(str, a.AnonymousClass1.b(str2, str3));
    }

    @Override // com.ironsource.sdk.b.a
    public final void a(String str, JSONObject jSONObject) {
        if (this.f11606a == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f11606a.a(str, jSONObject);
    }
}
