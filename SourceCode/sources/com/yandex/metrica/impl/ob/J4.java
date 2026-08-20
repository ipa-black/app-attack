package com.yandex.metrica.impl.ob;

import java.util.LinkedList;
/* loaded from: classes5.dex */
public class J4 extends K4<X4> {

    /* renamed from: a  reason: collision with root package name */
    private final C1578h5 f13243a;

    /* renamed from: b  reason: collision with root package name */
    private final K5 f13244b;

    /* renamed from: c  reason: collision with root package name */
    private final C1478d5 f13245c;

    public J4(L3 l3) {
        this.f13243a = new C1578h5(l3);
        this.f13244b = new K5(l3);
        this.f13245c = new C1478d5(l3);
    }

    @Override // com.yandex.metrica.impl.ob.K4
    public H4<X4> a(int i) {
        LinkedList linkedList = new LinkedList();
        int ordinal = EnumC1399a1.a(i).ordinal();
        if (ordinal == 1) {
            linkedList.add(this.f13243a);
        } else if (ordinal == 3) {
            linkedList.add(this.f13245c);
        } else if (ordinal == 40) {
            linkedList.add(this.f13244b);
            linkedList.add(this.f13243a);
        }
        return new H4<>(linkedList);
    }
}
