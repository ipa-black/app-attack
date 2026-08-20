package com.yandex.metrica.impl.ob;

import org.json.JSONObject;
/* loaded from: classes5.dex */
public final class Y8 {

    /* renamed from: a  reason: collision with root package name */
    private final C1431b8 f14304a;

    public Y8(C1431b8 c1431b8) {
        this.f14304a = c1431b8;
    }

    public final int a(int i) {
        JSONObject d2 = this.f14304a.d();
        if (d2 != null) {
            return d2.optInt(String.valueOf(i));
        }
        return 0;
    }

    public final void a(int i, int i2) {
        JSONObject d2 = this.f14304a.d();
        if (d2 == null) {
            d2 = new JSONObject();
        }
        d2.put(String.valueOf(i), i2);
        this.f14304a.a(d2);
    }
}
