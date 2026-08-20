package com.yandex.metrica.impl.ob;

import android.util.Base64;
/* loaded from: classes5.dex */
public class Fm implements Cm {
    @Override // com.yandex.metrica.impl.ob.Cm
    public Bm a(C1448c0 c1448c0) {
        throw new UnsupportedOperationException();
    }

    @Override // com.yandex.metrica.impl.ob.Cm
    public byte[] a(byte[] bArr) {
        try {
            return Base64.decode(bArr, 0);
        } catch (Throwable unused) {
            return new byte[0];
        }
    }
}
