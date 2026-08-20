package com.yandex.metrica.impl.ob;

import com.google.android.exoplayer2.offline.DownloadService;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
/* loaded from: classes5.dex */
public class T5 extends R5 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public T5(L3 l3, C1404a6 c1404a6) {
        this(l3, c1404a6, new C1504e6(l3.f(), DownloadService.KEY_FOREGROUND), C1764oh.a(), new SystemTimeProvider());
    }

    T5(L3 l3, C1404a6 c1404a6, C1504e6 c1504e6, M0 m0, SystemTimeProvider systemTimeProvider) {
        super(l3, c1404a6, c1504e6, Z5.a(EnumC1529f6.FOREGROUND).a(), m0, systemTimeProvider);
    }
}
