package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Gn<T> implements Kn<T> {

    /* renamed from: a  reason: collision with root package name */
    private final String f12993a;

    public Gn(String str) {
        this.f12993a = str;
    }

    @Override // com.yandex.metrica.impl.ob.Kn
    public In a(T t) {
        if (t == null) {
            return In.a(this, this.f12993a + " is null.");
        }
        return In.a(this);
    }
}
