package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class Tm extends Sm<byte[]> {
    public Tm(int i, String str, C1470cm c1470cm) {
        super(i, str, c1470cm);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1546fn
    public Object a(Object obj) {
        byte[] bArr = (byte[]) obj;
        if (bArr == null || bArr.length <= super.b()) {
            return bArr;
        }
        byte[] bArr2 = new byte[super.b()];
        System.arraycopy(bArr, 0, bArr2, 0, super.b());
        if (this.f13918c.isEnabled()) {
            this.f13918c.fw("\"%s\" %s exceeded limit of %d bytes", super.a(), bArr, Integer.valueOf(super.b()));
        }
        return bArr2;
    }
}
