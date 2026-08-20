package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.Constants;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.yh  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2004yh {

    /* renamed from: a  reason: collision with root package name */
    private final C1974xb f16099a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f16100b;

    /* renamed from: c  reason: collision with root package name */
    private String f16101c;

    /* renamed from: d  reason: collision with root package name */
    private String f16102d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f16103e;

    /* renamed from: f  reason: collision with root package name */
    private C1790pi f16104f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2004yh(Context context, C1790pi c1790pi) {
        this(context, c1790pi, F0.g().r());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        C1878tb c1878tb;
        C1878tb c1878tb2;
        JSONObject jSONObject = new JSONObject();
        if (!this.f16103e) {
            C2022zb a2 = this.f16099a.a(this.f16100b);
            C1902ub a3 = a2.a();
            String str = null;
            this.f16101c = (!a3.a() || (c1878tb2 = a3.f15814a) == null) ? null : c1878tb2.f15758b;
            C1902ub b2 = a2.b();
            if (b2.a() && (c1878tb = b2.f15814a) != null) {
                str = c1878tb.f15758b;
            }
            this.f16102d = str;
            this.f16103e = true;
        }
        try {
            a(jSONObject, Constants.UUID, this.f16104f.V());
            a(jSONObject, "device_id", this.f16104f.i());
            a(jSONObject, "google_aid", this.f16101c);
            a(jSONObject, "huawei_aid", this.f16102d);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    C2004yh(Context context, C1790pi c1790pi, C1974xb c1974xb) {
        this.f16103e = false;
        this.f16100b = context;
        this.f16104f = c1790pi;
        this.f16099a = c1974xb;
    }

    public void a(C1790pi c1790pi) {
        this.f16104f = c1790pi;
    }

    private void a(JSONObject jSONObject, String str, String str2) throws JSONException {
        if (TextUtils.isEmpty(str2)) {
            return;
        }
        jSONObject.put(str, str2);
    }
}
