package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.SystemTimeProvider;
/* loaded from: classes5.dex */
public class S5 extends R5 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public S5(L3 l3, C1404a6 c1404a6) {
        this(l3, c1404a6, new C1504e6(l3.f(), "background"), C1764oh.a(), new SystemTimeProvider());
    }

    S5(L3 l3, C1404a6 c1404a6, C1504e6 c1504e6, M0 m0, SystemTimeProvider systemTimeProvider) {
        super(l3, c1404a6, c1504e6, Z5.a(EnumC1529f6.BACKGROUND).a(3600).a(), m0, systemTimeProvider);
    }
}
