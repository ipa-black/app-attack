package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Fe implements Ge {

    /* renamed from: a  reason: collision with root package name */
    private final Dm f12938a;

    public Fe() {
        this(new Dm());
    }

    @Override // com.yandex.metrica.impl.ob.Ge
    public byte[] a(C1810qe c1810qe, Lg lg) {
        byte[] bArr = new byte[0];
        try {
            bArr = L0.a(c1810qe.f15503b);
        } catch (Throwable unused) {
        }
        byte[] a2 = this.f12938a.a(c1810qe.r).a(bArr);
        return a2 == null ? new byte[0] : a2;
    }

    Fe(Dm dm) {
        this.f12938a = dm;
    }
}
