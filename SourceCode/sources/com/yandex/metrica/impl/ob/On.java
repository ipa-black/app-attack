package com.yandex.metrica.impl.ob;

import com.yandex.metrica.Revenue;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes5.dex */
public class On implements Kn<Revenue> {

    /* renamed from: a  reason: collision with root package name */
    private final Kn<List<In>> f13652a = new Jn();

    @Override // com.yandex.metrica.impl.ob.Kn
    public In a(Revenue revenue) {
        return this.f13652a.a(Arrays.asList(new Nn().a(revenue.quantity)));
    }
}
