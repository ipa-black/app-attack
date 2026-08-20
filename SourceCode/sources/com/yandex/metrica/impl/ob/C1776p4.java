package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.p4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1776p4 {

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, X3> f15362a = new HashMap<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, F3> f15363b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private final Context f15364c;

    public C1776p4(Context context) {
        this.f15364c = context.getApplicationContext();
    }

    public synchronized X3 a(I3 i3) {
        return this.f15362a.get(i3.toString());
    }

    public synchronized X3 b(I3 i3, D3 d3, N3<X3> n3) {
        return (X3) a(i3, d3, n3, this.f15362a);
    }

    public synchronized F3 a(I3 i3, D3 d3, N3<F3> n3) {
        return (F3) a(i3, d3, n3, this.f15363b);
    }

    private <T extends R3> T a(I3 i3, D3 d3, N3<T> n3, Map<String, T> map) {
        T t = map.get(i3.toString());
        if (t == null) {
            T a2 = n3.a(this.f15364c, i3, d3);
            map.put(i3.toString(), a2);
            return a2;
        }
        t.a(d3);
        return t;
    }
}
