package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.coreutils.services.TimeProvider;
/* renamed from: com.yandex.metrica.impl.ob.ta  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1877ta<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f15749a;

    /* renamed from: b  reason: collision with root package name */
    private final String f15750b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1853sa<T> f15751c;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1744nm<C1829ra, C1806qa> f15752d;

    /* renamed from: e  reason: collision with root package name */
    private final InterfaceC1949wa f15753e;

    /* renamed from: f  reason: collision with root package name */
    private final C1925va f15754f;

    /* renamed from: g  reason: collision with root package name */
    private final M0 f15755g;

    /* renamed from: h  reason: collision with root package name */
    private final TimeProvider f15756h;

    public C1877ta(Context context, Q0 q0, String str, InterfaceC1853sa<T> interfaceC1853sa, InterfaceC1744nm<C1829ra, C1806qa> interfaceC1744nm, InterfaceC1949wa interfaceC1949wa) {
        this(context, str, interfaceC1853sa, interfaceC1744nm, interfaceC1949wa, new C1925va(context, str, interfaceC1949wa, q0), C1764oh.a(), new SystemTimeProvider());
    }

    public synchronized void a(T t, C1829ra c1829ra) {
        if (this.f15754f.a(this.f15752d.a(c1829ra))) {
            this.f15755g.a(this.f15750b, this.f15751c.a(t));
            this.f15753e.a(new Z8(C1632ja.a(this.f15749a).g()), this.f15756h.currentTimeSeconds());
        }
    }

    public C1877ta(Context context, String str, InterfaceC1853sa<T> interfaceC1853sa, InterfaceC1744nm<C1829ra, C1806qa> interfaceC1744nm, InterfaceC1949wa interfaceC1949wa, C1925va c1925va, M0 m0, TimeProvider timeProvider) {
        this.f15749a = context;
        this.f15750b = str;
        this.f15751c = interfaceC1853sa;
        this.f15752d = interfaceC1744nm;
        this.f15753e = interfaceC1949wa;
        this.f15754f = c1925va;
        this.f15755g = m0;
        this.f15756h = timeProvider;
    }
}
