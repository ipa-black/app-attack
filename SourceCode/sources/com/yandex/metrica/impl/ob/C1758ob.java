package com.yandex.metrica.impl.ob;

import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.yandex.metrica.impl.ob.ob  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1758ob {

    /* renamed from: a  reason: collision with root package name */
    private final List<InterfaceC1708mb> f15325a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1783pb f15326b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f15327c = new AtomicBoolean(true);

    public C1758ob(List<InterfaceC1708mb> list, InterfaceC1783pb interfaceC1783pb) {
        this.f15325a = list;
        this.f15326b = interfaceC1783pb;
    }

    public void a() {
        this.f15327c.set(false);
    }

    public void b() {
        this.f15327c.set(true);
    }

    public void c() {
        if (this.f15327c.get()) {
            if (this.f15325a.isEmpty()) {
                ((L3) this.f15326b).c();
                return;
            }
            boolean z = false;
            for (InterfaceC1708mb interfaceC1708mb : this.f15325a) {
                z |= interfaceC1708mb.a();
            }
            if (z) {
                ((L3) this.f15326b).c();
            }
        }
    }
}
