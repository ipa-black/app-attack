package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
/* renamed from: com.yandex.metrica.impl.ob.dj  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1492dj {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1442bj f14624a;

    /* renamed from: b  reason: collision with root package name */
    private final C1865sm f14625b;

    /* renamed from: c  reason: collision with root package name */
    private final C1542fj f14626c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1467cj f14627d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1492dj(InterfaceC1442bj interfaceC1442bj, InterfaceC1467cj interfaceC1467cj, C1865sm c1865sm, C1542fj c1542fj) {
        this.f14624a = interfaceC1442bj;
        this.f14627d = interfaceC1467cj;
        this.f14625b = c1865sm;
        this.f14626c = c1542fj;
    }

    public W0 a() {
        String str;
        try {
            this.f14625b.a();
            str = this.f14626c.a();
            try {
                if (TextUtils.isEmpty(str)) {
                    str = this.f14624a.a();
                    if (!TextUtils.isEmpty(str) || this.f14627d.a()) {
                        str = this.f14626c.a(str);
                    }
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            str = null;
        }
        this.f14625b.b();
        if (str == null) {
            return new W0(null, U0.UNKNOWN, "Uuid must be obtained via async API YandexMetricaInternal#requestStartupIdentifiers(@NonNull Context context, @NonNull IIdentifierCallback callback,@NonNull String... identifiers)");
        }
        return new W0(str, U0.OK, null);
    }
}
