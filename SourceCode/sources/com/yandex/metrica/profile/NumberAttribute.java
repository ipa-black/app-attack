package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.InterfaceC1438bf;
import com.yandex.metrica.impl.ob.Je;
import com.yandex.metrica.impl.ob.Kn;
import com.yandex.metrica.impl.ob.Me;
import com.yandex.metrica.impl.ob.Pe;
import com.yandex.metrica.impl.ob.Qe;
import com.yandex.metrica.impl.ob.Re;
import com.yandex.metrica.impl.ob.Te;
import com.yandex.metrica.impl.ob.Ve;
import com.yandex.metrica.impl.ob.We;
import com.yandex.metrica.impl.ob.Wm;
/* loaded from: classes5.dex */
public final class NumberAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final Pe f16313a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NumberAttribute(String str, Kn<String> kn, Je je) {
        this.f16313a = new Pe(str, kn, je);
    }

    public UserProfileUpdate<? extends InterfaceC1438bf> withValue(double d2) {
        return new UserProfileUpdate<>(new Te(this.f16313a.a(), d2, new Qe(), new Me(new Re(new Wm(100)))));
    }

    public UserProfileUpdate<? extends InterfaceC1438bf> withValueIfUndefined(double d2) {
        return new UserProfileUpdate<>(new Te(this.f16313a.a(), d2, new Qe(), new We(new Re(new Wm(100)))));
    }

    public UserProfileUpdate<? extends InterfaceC1438bf> withValueReset() {
        return new UserProfileUpdate<>(new Ve(1, this.f16313a.a(), new Qe(), new Re(new Wm(100))));
    }
}
