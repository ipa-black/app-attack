package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.InterfaceC1438bf;
import com.yandex.metrica.impl.ob.Je;
import com.yandex.metrica.impl.ob.Kn;
import com.yandex.metrica.impl.ob.Le;
import com.yandex.metrica.impl.ob.Me;
import com.yandex.metrica.impl.ob.Pe;
import com.yandex.metrica.impl.ob.Ve;
import com.yandex.metrica.impl.ob.We;
/* loaded from: classes5.dex */
public class BooleanAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final Pe f16310a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BooleanAttribute(String str, Kn<String> kn, Je je) {
        this.f16310a = new Pe(str, kn, je);
    }

    public UserProfileUpdate<? extends InterfaceC1438bf> withValue(boolean z) {
        return new UserProfileUpdate<>(new Le(this.f16310a.a(), z, this.f16310a.b(), new Me(this.f16310a.c())));
    }

    public UserProfileUpdate<? extends InterfaceC1438bf> withValueIfUndefined(boolean z) {
        return new UserProfileUpdate<>(new Le(this.f16310a.a(), z, this.f16310a.b(), new We(this.f16310a.c())));
    }

    public UserProfileUpdate<? extends InterfaceC1438bf> withValueReset() {
        return new UserProfileUpdate<>(new Ve(3, this.f16310a.a(), this.f16310a.b(), this.f16310a.c()));
    }
}
