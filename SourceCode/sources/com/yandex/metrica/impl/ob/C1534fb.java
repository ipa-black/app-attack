package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.fb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1534fb extends C1620in<Sa> {
    public C1534fb(int i) {
        super(i);
    }

    @Override // com.yandex.metrica.impl.ob.C1620in
    protected int b(Sa sa) {
        Sa sa2 = sa;
        if (sa2 == null) {
            return 0;
        }
        return C1422b.b(sa2.f13856b).length + 12;
    }
}
