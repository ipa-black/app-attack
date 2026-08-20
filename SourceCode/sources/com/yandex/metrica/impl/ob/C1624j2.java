package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.j2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1624j2 {

    /* renamed from: a  reason: collision with root package name */
    private final C1649k2 f14946a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f14947b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, C1600i2> f14948c = new HashMap();

    public C1624j2(Context context, C1649k2 c1649k2) {
        this.f14947b = context;
        this.f14946a = c1649k2;
    }

    public synchronized C1600i2 a(String str, CounterConfiguration.b bVar) {
        C1600i2 c1600i2;
        c1600i2 = this.f14948c.get(str);
        if (c1600i2 == null) {
            c1600i2 = new C1600i2(str, this.f14947b, bVar, this.f14946a);
            this.f14948c.put(str, c1600i2);
        }
        return c1600i2;
    }
}
