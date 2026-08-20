package com.yandex.metrica.impl.ob;

import android.util.Base64;
import org.json.JSONObject;
/* loaded from: classes5.dex */
class I7 {

    /* renamed from: a  reason: collision with root package name */
    private String f13063a;

    /* renamed from: b  reason: collision with root package name */
    private String f13064b;

    public void a(String str) {
        this.f13063a = str;
    }

    public void b(String str) {
        this.f13064b = str;
    }

    public String a() {
        try {
            JSONObject jSONObject = new JSONObject();
            String str = this.f13063a;
            if (str == null) {
                str = "";
            }
            return Base64.encodeToString(jSONObject.put("arg_ee", str).put("arg_hv", this.f13064b).toString().getBytes(), 0);
        } catch (Throwable unused) {
            return "";
        }
    }
}
