package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class R1 implements N0 {

    /* renamed from: a  reason: collision with root package name */
    private Context f13766a;

    /* renamed from: b  reason: collision with root package name */
    private A3 f13767b;

    /* renamed from: c  reason: collision with root package name */
    private T1 f13768c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f13769d;

    /* renamed from: e  reason: collision with root package name */
    private C1591hi f13770e;

    /* renamed from: f  reason: collision with root package name */
    private Map<String, M0> f13771f;

    /* renamed from: g  reason: collision with root package name */
    private final Kn<String> f13772g;

    /* renamed from: h  reason: collision with root package name */
    private final List<String> f13773h;

    public R1(Context context, A3 a3, T1 t1, Handler handler, C1591hi c1591hi) {
        HashMap hashMap = new HashMap();
        this.f13771f = hashMap;
        this.f13772g = new Hn(new Mn(hashMap));
        this.f13773h = Arrays.asList("20799a27-fa80-4b36-b2db-0f8141f24180", "0e5e9c33-f8c3-4568-86c5-2e4f57523f72");
        this.f13766a = context;
        this.f13767b = a3;
        this.f13768c = t1;
        this.f13769d = handler;
        this.f13770e = c1591hi;
    }

    public C1623j1 a(com.yandex.metrica.i iVar, boolean z, C1432b9 c1432b9) {
        this.f13772g.a(iVar.apiKey);
        Context context = this.f13766a;
        A3 a3 = this.f13767b;
        C1623j1 c1623j1 = new C1623j1(context, a3, iVar, this.f13768c, new C1629j7(context, a3), this.f13770e, new C1989y2(this, "20799a27-fa80-4b36-b2db-0f8141f24180"), new C1989y2(this, "0e5e9c33-f8c3-4568-86c5-2e4f57523f72"), c1432b9, P.g(), new A0(context));
        a(c1623j1);
        if (z) {
            c1623j1.i.c(c1623j1.f12654b);
        }
        Map<String, String> map = iVar.f12567h;
        if (!A2.b(map)) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                if (TextUtils.isEmpty(key)) {
                    if (c1623j1.f12655c.isEnabled()) {
                        c1623j1.f12655c.fw("Invalid App Environment (key,value) pair: (%s,%s).", key, value);
                    }
                } else {
                    c1623j1.i.a(key, value, c1623j1.f12654b);
                }
            }
        }
        c1623j1.a(iVar.errorEnvironment);
        c1623j1.f();
        this.f13768c.a(c1623j1);
        this.f13771f.put(iVar.apiKey, c1623j1);
        return c1623j1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.yandex.metrica.impl.ob.M0] */
    @Override // com.yandex.metrica.impl.ob.N0
    public synchronized M0 b(com.yandex.metrica.e eVar) {
        C1673l1 c1673l1;
        M0 m0 = this.f13771f.get(eVar.apiKey);
        c1673l1 = m0;
        if (m0 == 0) {
            if (!this.f13773h.contains(eVar.apiKey)) {
                this.f13770e.g();
            }
            C1673l1 c1673l12 = new C1673l1(this.f13766a, this.f13767b, eVar, this.f13768c);
            a(c1673l12);
            c1673l12.f();
            this.f13771f.put(eVar.apiKey, c1673l12);
            c1673l1 = c1673l12;
        }
        return c1673l1;
    }

    @Override // com.yandex.metrica.impl.ob.O0
    public N0 b() {
        return this;
    }

    public synchronized void c(com.yandex.metrica.e eVar) {
        if (this.f13771f.containsKey(eVar.apiKey)) {
            C1470cm b2 = Ul.b(eVar.apiKey);
            if (b2.isEnabled()) {
                b2.fw("Reporter with apiKey=%s already exists.", eVar.apiKey);
            }
        } else {
            b(eVar);
            Log.i("AppMetrica", "Activate reporter with APIKey " + A2.a(eVar.apiKey));
        }
    }

    @Override // com.yandex.metrica.impl.ob.N0
    public synchronized R0 a(com.yandex.metrica.i iVar) {
        R0 r0;
        R0 r02 = (M0) this.f13771f.get(iVar.apiKey);
        r0 = r02;
        if (r02 == null) {
            C1473d0 c1473d0 = new C1473d0(this.f13766a, this.f13767b, iVar, this.f13768c);
            a(c1473d0);
            c1473d0.a(iVar.errorEnvironment);
            c1473d0.f();
            r0 = c1473d0;
        }
        return r0;
    }

    private void a(B b2) {
        b2.a(new C1424b1(this.f13769d, b2));
        b2.f12654b.a(this.f13770e);
    }
}
