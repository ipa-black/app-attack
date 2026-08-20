package com.yandex.metrica.impl.ob;

import android.util.Base64;
/* renamed from: com.yandex.metrica.impl.ob.je  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1636je implements Ge {

    /* renamed from: a  reason: collision with root package name */
    private final Dm f15004a;

    public C1636je() {
        this(new Dm());
    }

    @Override // com.yandex.metrica.impl.ob.Ge
    public byte[] a(C1810qe c1810qe, Lg lg) {
        byte[] bArr = new byte[0];
        String str = c1810qe.f15503b;
        if (str != null) {
            try {
                bArr = Base64.decode(str, 0);
            } catch (Throwable unused) {
            }
        }
        return this.f15004a.a(c1810qe.r).a(bArr);
    }

    C1636je(Dm dm) {
        this.f15004a = dm;
    }
}
