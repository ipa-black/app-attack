package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.Converter;
/* renamed from: com.yandex.metrica.impl.ob.de  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1487de implements Converter<EnumC1891u0, Integer> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Integer fromModel(EnumC1891u0 enumC1891u0) {
        int ordinal = enumC1891u0.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    return 0;
                }
                return 2;
            }
            return 3;
        }
        return 1;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public EnumC1891u0 toModel(Integer num) {
        int intValue = num.intValue();
        if (intValue != 1) {
            if (intValue != 2) {
                if (intValue != 3) {
                    return EnumC1891u0.UNDEFINED;
                }
                return EnumC1891u0.SATELLITE;
            }
            return EnumC1891u0.RETAIL;
        }
        return EnumC1891u0.APP;
    }
}
