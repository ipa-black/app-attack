package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1840rl;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.ol  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1768ol implements Ik {

    /* renamed from: a  reason: collision with root package name */
    private final List<C1840rl> f15349a;

    public C1768ol(List<C1840rl> list) {
        this.f15349a = list;
    }

    @Override // com.yandex.metrica.impl.ob.Ik
    public Object a(C1494dl c1494dl, C1594hl c1594hl, Ak ak, int i) {
        JSONArray jSONArray = new JSONArray();
        if (this.f15349a.isEmpty()) {
            return jSONArray;
        }
        for (C1840rl c1840rl : this.f15349a) {
            C1840rl.b a2 = c1840rl.a(ak);
            int i2 = 0;
            if ((c1594hl.f14881f || c1840rl.a()) && (a2 == null || !c1594hl.i)) {
                JSONObject a3 = c1840rl.a(c1594hl, a2);
                int length = a3.toString().getBytes().length + 1;
                int length2 = jSONArray.length();
                if (i + length <= c1594hl.n && length2 < c1594hl.m) {
                    jSONArray.put(a3);
                    i2 = length;
                }
            }
            i += i2;
        }
        return jSONArray;
    }
}
