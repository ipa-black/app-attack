package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1840rl;
/* loaded from: classes5.dex */
public class Zk implements Cl {

    /* renamed from: a  reason: collision with root package name */
    private final int f14362a;

    public Zk(int i) {
        this.f14362a = i;
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public boolean a(Object obj) {
        return ((String) obj).length() > this.f14362a;
    }

    @Override // com.yandex.metrica.impl.ob.Cl
    public C1840rl.b a() {
        return C1840rl.b.TEXT_TOO_LONG;
    }
}
