package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.pe  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1786pe implements Ge {

    /* renamed from: a  reason: collision with root package name */
    private final Dm f15374a;

    public C1786pe() {
        this(new Dm());
    }

    @Override // com.yandex.metrica.impl.ob.Ge
    public byte[] a(C1810qe c1810qe, Lg lg) {
        byte[] bArr;
        String str = c1810qe.f15503b;
        if (str != null) {
            bArr = C1422b.b(str);
        } else {
            bArr = new byte[0];
        }
        return this.f15374a.a(c1810qe.r).a(bArr);
    }

    C1786pe(Dm dm) {
        this.f15374a = dm;
    }
}
