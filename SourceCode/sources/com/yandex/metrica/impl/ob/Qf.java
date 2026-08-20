package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Qf implements Kn<Void> {

    /* renamed from: a  reason: collision with root package name */
    private final Sf f13759a;

    public Qf(Sf sf) {
        this.f13759a = sf;
    }

    @Override // com.yandex.metrica.impl.ob.Kn
    public In a(Void r1) {
        this.f13759a.getClass();
        if (R2.h()) {
            return In.a(this);
        }
        return In.a(this, "YandexMetrica isn't initialized. Use YandexMetrica#activate(android.content.Context, String) method to activate.");
    }

    public In a() {
        this.f13759a.getClass();
        if (R2.h()) {
            return In.a(this);
        }
        return In.a(this, "YandexMetrica isn't initialized. Use YandexMetrica#activate(android.content.Context, String) method to activate.");
    }
}
