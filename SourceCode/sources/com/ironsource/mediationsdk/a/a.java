package com.ironsource.mediationsdk.a;

import android.text.TextUtils;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
abstract class a {

    /* renamed from: a  reason: collision with root package name */
    JSONObject f10903a;

    /* renamed from: b  reason: collision with root package name */
    int f10904b;

    /* renamed from: c  reason: collision with root package name */
    String f10905c;

    /* renamed from: d  reason: collision with root package name */
    private final String f10906d = "eventId";

    /* renamed from: e  reason: collision with root package name */
    private final String f10907e = "timestamp";

    /* renamed from: f  reason: collision with root package name */
    private final String f10908f = "InterstitialEvents";

    /* renamed from: g  reason: collision with root package name */
    private final String f10909g = "events";

    /* renamed from: h  reason: collision with root package name */
    private final String f10910h = "events";

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONObject a(c cVar) {
        try {
            JSONObject jSONObject = !TextUtils.isEmpty(cVar.c()) ? new JSONObject(cVar.c()) : new JSONObject();
            jSONObject.put("eventId", cVar.a());
            jSONObject.put("timestamp", cVar.b());
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a() {
        return TextUtils.isEmpty(this.f10905c) ? b() : this.f10905c;
    }

    public abstract String a(ArrayList<c> arrayList, JSONObject jSONObject);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String a(JSONArray jSONArray) {
        try {
            if (this.f10903a != null) {
                JSONObject jSONObject = new JSONObject(this.f10903a.toString());
                jSONObject.put("timestamp", IronSourceUtils.getTimeStamp());
                jSONObject.put(this.f10904b != 2 ? "events" : "InterstitialEvents", jSONArray);
                return jSONObject.toString();
            }
            return "";
        } catch (Exception unused) {
            return "";
        }
    }

    protected abstract String b();

    public abstract String c();
}
