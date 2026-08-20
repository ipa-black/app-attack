package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class He implements Ge {

    /* renamed from: a  reason: collision with root package name */
    private final C1786pe f13046a;

    public He() {
        this(new C1786pe());
    }

    @Override // com.yandex.metrica.impl.ob.Ge
    public byte[] a(C1810qe c1810qe, Lg lg) {
        if (!lg.T() && !TextUtils.isEmpty(c1810qe.f15503b)) {
            try {
                JSONObject jSONObject = new JSONObject(c1810qe.f15503b);
                jSONObject.remove("preloadInfo");
                c1810qe.f15503b = jSONObject.toString();
            } catch (Throwable unused) {
            }
        }
        return this.f13046a.a(c1810qe, lg);
    }

    He(C1786pe c1786pe) {
        this.f13046a = c1786pe;
    }
}
