package com.yandex.metrica.impl.ob;

import java.util.Collection;
import java.util.LinkedList;
/* renamed from: com.yandex.metrica.impl.ob.h0  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
class C1573h0 implements InterfaceC1934vj {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ LinkedList f14823a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1573h0(C1598i0 c1598i0, LinkedList linkedList) {
        this.f14823a = linkedList;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1934vj
    public void a(Collection<C1910uj> collection) {
        this.f14823a.add(collection);
    }
}
