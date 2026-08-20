package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.InterfaceC1651k4;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes5.dex */
public class J3<CU extends InterfaceC1651k4> {

    /* renamed from: a  reason: collision with root package name */
    private final List<CU> f13242a = new CopyOnWriteArrayList();

    public void a(CU cu) {
        this.f13242a.add(cu);
    }

    public void b(CU cu) {
        this.f13242a.remove(cu);
    }

    public List<CU> a() {
        return this.f13242a;
    }
}
