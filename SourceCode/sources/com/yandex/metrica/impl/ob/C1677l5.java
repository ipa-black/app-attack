package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.l5  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1677l5 extends X4 {
    public C1677l5(L3 l3) {
        super(l3);
    }

    @Override // com.yandex.metrica.impl.ob.S4
    public boolean a(C1448c0 c1448c0) {
        String p = c1448c0.p();
        com.yandex.metrica.g a2 = C1422b.a(p);
        String h2 = a().h();
        com.yandex.metrica.g a3 = C1422b.a(h2);
        if (a2.equals(a3)) {
            return true;
        }
        if (TextUtils.isEmpty(a2.c()) && !TextUtils.isEmpty(a3.c())) {
            c1448c0.e(h2);
            a(c1448c0, EnumC1619im.LOGOUT);
        } else if (!TextUtils.isEmpty(a2.c()) && TextUtils.isEmpty(a3.c())) {
            a(c1448c0, EnumC1619im.LOGIN);
        } else if (!TextUtils.isEmpty(a2.c()) && !a2.c().equals(a3.c())) {
            a(c1448c0, EnumC1619im.SWITCH);
        } else {
            a(c1448c0, EnumC1619im.UPDATE);
        }
        a().a(p);
        return true;
    }

    private void a(C1448c0 c1448c0, EnumC1619im enumC1619im) {
        String str;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.putOpt("action", enumC1619im.toString());
            str = jSONObject.toString();
        } catch (Throwable unused) {
            str = null;
        }
        c1448c0.f(str);
        a().r().b(c1448c0);
    }
}
