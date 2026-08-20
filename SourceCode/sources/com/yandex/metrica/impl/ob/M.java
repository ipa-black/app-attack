package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.Map;
/* loaded from: classes5.dex */
public class M {

    /* renamed from: a  reason: collision with root package name */
    private final C1837ri f13451a;

    /* renamed from: b  reason: collision with root package name */
    private final C1974xb f13452b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f13453c;

    public M(C1837ri c1837ri, C1974xb c1974xb, Context context) {
        this.f13451a = c1837ri;
        this.f13452b = c1974xb;
        this.f13453c = context;
    }

    public L a(Map<String, String> map) {
        return new L(this.f13451a.d(), this.f13452b.a(this.f13453c, new Fb()), map);
    }
}
