package com.yandex.metrica.profile;

import com.yandex.metrica.impl.ob.InterfaceC1438bf;
import com.yandex.metrica.impl.ob.InterfaceC1546fn;
import com.yandex.metrica.impl.ob.Je;
import com.yandex.metrica.impl.ob.Kn;
import com.yandex.metrica.impl.ob.Me;
import com.yandex.metrica.impl.ob.Pe;
import com.yandex.metrica.impl.ob.Ve;
import com.yandex.metrica.impl.ob.We;
import com.yandex.metrica.impl.ob.Ye;
/* loaded from: classes5.dex */
public class StringAttribute {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1546fn<String> f16314a;

    /* renamed from: b  reason: collision with root package name */
    private final Pe f16315b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StringAttribute(String str, InterfaceC1546fn<String> interfaceC1546fn, Kn<String> kn, Je je) {
        this.f16315b = new Pe(str, kn, je);
        this.f16314a = interfaceC1546fn;
    }

    public UserProfileUpdate<? extends InterfaceC1438bf> withValue(String str) {
        return new UserProfileUpdate<>(new Ye(this.f16315b.a(), str, this.f16314a, this.f16315b.b(), new Me(this.f16315b.c())));
    }

    public UserProfileUpdate<? extends InterfaceC1438bf> withValueIfUndefined(String str) {
        return new UserProfileUpdate<>(new Ye(this.f16315b.a(), str, this.f16314a, this.f16315b.b(), new We(this.f16315b.c())));
    }

    public UserProfileUpdate<? extends InterfaceC1438bf> withValueReset() {
        return new UserProfileUpdate<>(new Ve(0, this.f16315b.a(), this.f16315b.b(), this.f16315b.c()));
    }
}
