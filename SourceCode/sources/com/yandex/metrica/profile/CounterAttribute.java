package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.InterfaceC1438bf;
import com.yandex.metrica.impl.ob.Je;
import com.yandex.metrica.impl.ob.Kn;
import com.yandex.metrica.impl.ob.Oe;
import com.yandex.metrica.impl.ob.Pe;
/* loaded from: classes5.dex */
public final class CounterAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final Pe f16311a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CounterAttribute(String str, Kn<String> kn, Je je) {
        this.f16311a = new Pe(str, kn, je);
    }

    public UserProfileUpdate<? extends InterfaceC1438bf> withDelta(double d2) {
        return new UserProfileUpdate<>(new Oe(this.f16311a.a(), d2));
    }
}
