package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.in  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1620in<T> extends AbstractC1596hn<List<T>, Xm> {

    /* renamed from: b  reason: collision with root package name */
    private final AbstractC1596hn<T, Vm> f14935b;

    public C1620in(int i) {
        this(i, null);
    }

    @Override // com.yandex.metrica.impl.ob.AbstractC1596hn
    public /* bridge */ /* synthetic */ C1571gn a(Object obj) {
        return a((List) ((List) obj));
    }

    protected int b(T t) {
        throw null;
    }

    public C1620in(int i, AbstractC1596hn<T, Vm> abstractC1596hn) {
        super(i);
        this.f14935b = abstractC1596hn;
    }

    public C1571gn<List<T>, Xm> a(List<T> list) {
        int i;
        int i2 = 0;
        if (list == null || (list.size() <= a() && this.f14935b == null)) {
            i = 0;
        } else {
            ArrayList arrayList = new ArrayList();
            i = 0;
            int i3 = 0;
            for (T t : list) {
                if (i3 < a()) {
                    AbstractC1596hn<T, Vm> abstractC1596hn = this.f14935b;
                    if (abstractC1596hn != null) {
                        C1571gn<T, Vm> a2 = abstractC1596hn.a(t);
                        T t2 = a2.f14820a;
                        i += a2.f14821b.a();
                        t = t2;
                    }
                    arrayList.add(t);
                } else {
                    i2++;
                    i += b(t);
                }
                i3++;
            }
            list = arrayList;
        }
        return new C1571gn<>(list, new Xm(i2, i));
    }
}
