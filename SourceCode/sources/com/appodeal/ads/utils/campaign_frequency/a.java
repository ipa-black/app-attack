package com.appodeal.ads.utils.campaign_frequency;

import com.appodeal.ads.storage.o;
import com.appodeal.ads.utils.Log;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    public static final o f7747b = o.f7663b;

    /* renamed from: c  reason: collision with root package name */
    public static final /* synthetic */ boolean f7748c = true;

    /* renamed from: a  reason: collision with root package name */
    public final String f7749a;

    public a(String str) {
        this.f7749a = str;
    }

    public static JSONObject a() {
        Map<String, String> d2 = f7747b.f7664a.d();
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, String> entry : d2.entrySet()) {
            try {
                jSONObject.put(entry.getKey(), new JSONObject(entry.getValue()));
            } catch (Exception e2) {
                Log.log(e2);
            }
        }
        return jSONObject;
    }
}
