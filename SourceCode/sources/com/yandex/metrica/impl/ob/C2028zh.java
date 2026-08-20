package com.yandex.metrica.impl.ob;

import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.coreutils.services.TimeProvider;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.zh  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2028zh {

    /* renamed from: a  reason: collision with root package name */
    private final String f16162a;

    /* renamed from: b  reason: collision with root package name */
    private final C1965x2 f16163b;

    /* renamed from: c  reason: collision with root package name */
    private final TimeProvider f16164c;

    /* renamed from: d  reason: collision with root package name */
    private final C1980xh f16165d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2028zh(String str, C1956wh c1956wh) {
        this(str, new C1965x2(), new SystemTimeProvider(), new C1980xh(c1956wh));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Gh gh, int i, C1491di c1491di) {
        this.f16165d.a(c1491di.f14622g);
        if (this.f16163b.b(this.f16165d.a(i), c1491di.f14622g, "report " + this.f16162a)) {
            ((Jh) gh).a(this.f16162a, Integer.valueOf(i));
            this.f16165d.a(i, this.f16164c.currentTimeSeconds());
        }
    }

    C2028zh(String str, C1965x2 c1965x2, TimeProvider timeProvider, C1980xh c1980xh) {
        this.f16162a = str;
        this.f16163b = c1965x2;
        this.f16164c = timeProvider;
        this.f16165d = c1980xh;
    }
}
