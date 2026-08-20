package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import android.util.Base64;
/* loaded from: classes5.dex */
public class Be implements Ge, InterfaceC1761oe {
    @Override // com.yandex.metrica.impl.ob.InterfaceC1761oe
    public int a(Em em) {
        return 2;
    }

    @Override // com.yandex.metrica.impl.ob.Ge
    public byte[] a(C1810qe c1810qe, Lg lg) {
        if (TextUtils.isEmpty(c1810qe.f15503b)) {
            return new byte[0];
        }
        return Base64.decode(c1810qe.f15503b, 0);
    }
}
