package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ValidationException;
/* loaded from: classes5.dex */
public class Hn<T> implements Kn<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Kn<T> f13057a;

    public Hn(Kn<T> kn) {
        this.f13057a = kn;
    }

    @Override // com.yandex.metrica.impl.ob.Kn
    public In a(T t) {
        In a2 = this.f13057a.a(t);
        if (a2.b()) {
            return a2;
        }
        throw new ValidationException(a2.a());
    }
}
