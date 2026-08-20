package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Zb extends Uc<C1460cc> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public Zb(InterfaceC1560gc interfaceC1560gc, C1965x2 c1965x2) {
        super(interfaceC1560gc, c1965x2);
    }

    @Override // com.yandex.metrica.impl.ob.Uc
    protected String a() {
        return "fused";
    }

    @Override // com.yandex.metrica.impl.ob.Lb
    public boolean a(Object obj) {
        C1410ac c1410ac = ((C1460cc) obj).f14548b;
        return c1410ac != null && a(c1410ac.f14410c);
    }

    @Override // com.yandex.metrica.impl.ob.Lb
    public boolean b(Object obj) {
        return ((C1460cc) obj).f14547a.f13756a;
    }
}
