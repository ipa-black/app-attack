package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Dm {

    /* renamed from: a  reason: collision with root package name */
    private final Zl<Em, Cm> f12823a;

    /* renamed from: b  reason: collision with root package name */
    private final Zl<EnumC1399a1, Cm> f12824b;

    public Dm() {
        this(new Am(), new Fm(), new C1985xm());
    }

    public Cm a(Em em) {
        return this.f12823a.a(em);
    }

    public Dm(Cm cm, Cm cm2, Cm cm3) {
        Zl<Em, Cm> zl = new Zl<>(cm);
        this.f12823a = zl;
        zl.a(Em.NONE, cm);
        zl.a(Em.EXTERNALLY_ENCRYPTED_EVENT_CRYPTER, cm2);
        zl.a(Em.AES_VALUE_ENCRYPTION, cm3);
        Zl<EnumC1399a1, Cm> zl2 = new Zl<>(cm);
        this.f12824b = zl2;
        zl2.a(EnumC1399a1.EVENT_TYPE_IDENTITY, cm3);
    }

    public Cm a(C1448c0 c1448c0) {
        return this.f12824b.a(EnumC1399a1.a(c1448c0.o()));
    }
}
