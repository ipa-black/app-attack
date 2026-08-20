package com.ironsource.sdk.controller;

import android.webkit.JavascriptInterface;
import com.ironsource.sdk.controller.x;
import com.ironsource.sdk.utils.Logger;
import com.ironsource.sdk.utils.SDKUtils;
import com.onesignal.outcomes.data.OutcomeEventsTable;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class h {

    /* renamed from: c  reason: collision with root package name */
    private static final String f11708c = "com.ironsource.sdk.controller.h";

    /* renamed from: a  reason: collision with root package name */
    private final d f11709a;

    /* renamed from: b  reason: collision with root package name */
    private final t f11710b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(d dVar, t tVar) {
        this.f11709a = dVar;
        this.f11710b = tVar;
    }

    private static String a(String str, String str2, String str3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("functionName", SDKUtils.encodeString(str));
            jSONObject.put(OutcomeEventsTable.COLUMN_NAME_PARAMS, SDKUtils.encodeString(str2));
            jSONObject.put("hash", SDKUtils.encodeString(str3));
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return jSONObject.toString();
    }

    @JavascriptInterface
    public final void messageHandler(String str, String str2, String str3) {
        try {
            Logger.i(f11708c, "messageHandler(" + str + " " + str3 + ")");
            if (this.f11710b.a(str, str2, str3)) {
                this.f11709a.a(str, str2);
                return;
            }
            d dVar = this.f11709a;
            String a2 = a(str, str2, str3);
            if (dVar.f11621a != null) {
                x.d dVar2 = dVar.f11621a;
                x.this.b(x.a(x.this, "unauthorizedMessage", a2, (String) null, (String) null));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            Logger.i(f11708c, "messageHandler failed with exception " + e2.getMessage());
        }
    }
}
