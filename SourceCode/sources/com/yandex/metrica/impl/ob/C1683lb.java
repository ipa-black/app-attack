package com.yandex.metrica.impl.ob;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.yandex.metrica.impl.ob.lb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1683lb implements InterfaceC1708mb, InterfaceC1733nb {

    /* renamed from: a  reason: collision with root package name */
    private final Set<Integer> f15073a;

    /* renamed from: b  reason: collision with root package name */
    private AtomicLong f15074b;

    public C1683lb(L7 l7) {
        HashSet hashSet = new HashSet();
        this.f15073a = hashSet;
        hashSet.add(Integer.valueOf(EnumC1399a1.EVENT_TYPE_FIRST_ACTIVATION.b()));
        hashSet.add(Integer.valueOf(EnumC1399a1.EVENT_TYPE_APP_UPDATE.b()));
        hashSet.add(Integer.valueOf(EnumC1399a1.EVENT_TYPE_INIT.b()));
        hashSet.add(Integer.valueOf(EnumC1399a1.EVENT_TYPE_IDENTITY.b()));
        hashSet.add(Integer.valueOf(EnumC1399a1.EVENT_TYPE_SEND_REFERRER.b()));
        l7.a(this);
        this.f15074b = new AtomicLong(l7.a(hashSet));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1708mb
    public boolean a() {
        return this.f15074b.get() > 0;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1733nb
    public void b(List<Integer> list) {
        int i = 0;
        for (Integer num : list) {
            if (this.f15073a.contains(Integer.valueOf(num.intValue()))) {
                i++;
            }
        }
        this.f15074b.addAndGet(-i);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1733nb
    public void a(List<Integer> list) {
        int i = 0;
        for (Integer num : list) {
            if (this.f15073a.contains(Integer.valueOf(num.intValue()))) {
                i++;
            }
        }
        this.f15074b.addAndGet(i);
    }
}
