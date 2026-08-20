package com.yandex.metrica.impl.ob;

import java.util.Collection;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class F2 {

    /* renamed from: a  reason: collision with root package name */
    public final String f12917a;

    /* renamed from: b  reason: collision with root package name */
    public final String f12918b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f12919c;

    /* renamed from: d  reason: collision with root package name */
    public final int f12920d;

    /* renamed from: e  reason: collision with root package name */
    public final Long f12921e;

    public F2(String str, String str2, boolean z, int i, Long l) {
        this.f12917a = str;
        this.f12918b = str2;
        this.f12919c = z;
        this.f12920d = i;
        this.f12921e = l;
    }

    public static JSONArray a(Collection<F2> collection) {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        if (collection != null) {
            for (F2 f2 : collection) {
                f2.getClass();
                try {
                    jSONObject = new JSONObject().put("mac", f2.f12917a).put("ssid", f2.f12918b).put("signal_strength", f2.f12920d).put("is_connected", f2.f12919c).put("last_visible_offset_seconds", f2.f12921e);
                } catch (Throwable unused) {
                    jSONObject = null;
                }
                if (jSONObject != null) {
                    jSONArray.put(jSONObject);
                }
            }
        }
        return jSONArray;
    }
}
