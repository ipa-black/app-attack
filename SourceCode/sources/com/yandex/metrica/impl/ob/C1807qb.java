package com.yandex.metrica.impl.ob;

import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.yandex.metrica.impl.ob.qb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1807qb implements InterfaceC1708mb, InterfaceC1733nb {

    /* renamed from: a  reason: collision with root package name */
    private final Z3 f15488a;

    /* renamed from: b  reason: collision with root package name */
    private AtomicLong f15489b;

    public C1807qb(L7 l7, Z3 z3) {
        this.f15488a = z3;
        this.f15489b = new AtomicLong(l7.c());
        l7.a(this);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1708mb
    public boolean a() {
        return this.f15489b.get() >= ((long) ((Lg) this.f15488a.b()).I());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1733nb
    public void b(List<Integer> list) {
        this.f15489b.addAndGet(-list.size());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1733nb
    public void a(List<Integer> list) {
        this.f15489b.addAndGet(list.size());
    }
}
