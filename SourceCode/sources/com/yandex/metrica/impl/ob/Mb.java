package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Mb extends Uc<Xb> {

    /* renamed from: c  reason: collision with root package name */
    private final String f13479c;

    public Mb(InterfaceC1560gc interfaceC1560gc, String str) {
        this(interfaceC1560gc, str, new C1965x2());
    }

    @Override // com.yandex.metrica.impl.ob.Lb
    public boolean a(Object obj) {
        Wb wb = ((Xb) obj).f14266b;
        return wb != null && a(wb.f14194b);
    }

    @Override // com.yandex.metrica.impl.ob.Lb
    public boolean b(Object obj) {
        return ((Xb) obj).f14265a.f13756a;
    }

    Mb(InterfaceC1560gc interfaceC1560gc, String str, C1965x2 c1965x2) {
        super(interfaceC1560gc, c1965x2);
        this.f13479c = str;
    }

    @Override // com.yandex.metrica.impl.ob.Uc
    protected String a() {
        return this.f13479c;
    }
}
