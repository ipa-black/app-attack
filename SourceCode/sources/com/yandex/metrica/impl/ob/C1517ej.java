package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.ej  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1517ej {

    /* renamed from: b  reason: collision with root package name */
    private static volatile C1517ej f14697b;

    /* renamed from: a  reason: collision with root package name */
    private final C1865sm f14698a;

    C1517ej(C1865sm c1865sm) {
        this.f14698a = c1865sm;
    }

    public static C1517ej a(Context context) {
        if (f14697b == null) {
            synchronized (C1517ej.class) {
                if (f14697b == null) {
                    f14697b = new C1517ej(new C1865sm(context, "uuid.dat"));
                }
            }
        }
        return f14697b;
    }

    public C1492dj b(Context context, InterfaceC1442bj interfaceC1442bj) {
        return new C1492dj(interfaceC1442bj, new C1417aj(), this.f14698a, new C1542fj(context, new B0(), new C1644jm()));
    }

    public C1492dj a(Context context, InterfaceC1442bj interfaceC1442bj) {
        return new C1492dj(interfaceC1442bj, new C1567gj(context, new B0()), this.f14698a, new C1542fj(context, new B0(), new C1644jm()));
    }
}
