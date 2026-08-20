package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.coreutils.services.TimeProvider;
/* renamed from: com.yandex.metrica.impl.ob.va  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1925va {

    /* renamed from: a  reason: collision with root package name */
    private final Context f15904a;

    /* renamed from: b  reason: collision with root package name */
    private final String f15905b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1949wa f15906c;

    /* renamed from: d  reason: collision with root package name */
    private final Q0 f15907d;

    /* renamed from: e  reason: collision with root package name */
    private final TimeProvider f15908e;

    /* renamed from: f  reason: collision with root package name */
    private final C1965x2 f15909f;

    public C1925va(Context context, String str, InterfaceC1949wa interfaceC1949wa, Q0 q0) {
        this(context, str, interfaceC1949wa, q0, new SystemTimeProvider(), new C1965x2());
    }

    public boolean a(C1806qa c1806qa) {
        long currentTimeSeconds = this.f15908e.currentTimeSeconds();
        if (c1806qa != null) {
            boolean z = true;
            boolean z2 = currentTimeSeconds <= c1806qa.f15486a;
            if (!z2) {
                z = z2;
            } else if (currentTimeSeconds + this.f15907d.a() > c1806qa.f15486a) {
                z = false;
            }
            if (z) {
                return this.f15909f.b(this.f15906c.a(new Z8(C1632ja.a(this.f15904a).g())), c1806qa.f15487b, this.f15905b + " diagnostics event");
            }
            return false;
        }
        return false;
    }

    C1925va(Context context, String str, InterfaceC1949wa interfaceC1949wa, Q0 q0, TimeProvider timeProvider, C1965x2 c1965x2) {
        this.f15904a = context;
        this.f15905b = str;
        this.f15906c = interfaceC1949wa;
        this.f15907d = q0;
        this.f15908e = timeProvider;
        this.f15909f = c1965x2;
    }
}
