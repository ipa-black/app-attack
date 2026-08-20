package com.yandex.metrica.impl.ob;

import android.view.View;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.dl  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1494dl {

    /* renamed from: a  reason: collision with root package name */
    private Pk f14628a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Rk rk, View view, Hk hk) {
        Pk b2 = rk.b(null, view, 0);
        this.f14628a = b2;
        if (b2 != null) {
            a(rk, b2, view, 1, hk);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject a(C1594hl c1594hl, Ak ak, int i) {
        Pk pk = this.f14628a;
        JSONObject jSONObject = pk != null ? pk.a(c1594hl, ak, i, 0).f13725c : null;
        return jSONObject == null ? new JSONObject() : jSONObject;
    }

    private void a(Rk rk, Pk pk, View view, int i, Hk hk) {
        ArrayList arrayList = (ArrayList) rk.a(view, i);
        if (arrayList.size() == 0) {
            hk.a(pk.a());
            return;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            View view2 = (View) it.next();
            Pk b2 = rk.b(pk.a(), view2, i);
            if (b2 != null) {
                pk.a(b2);
                a(rk, b2, view2, i + 1, hk);
            }
        }
    }
}
