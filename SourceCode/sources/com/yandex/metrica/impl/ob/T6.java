package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ListConverter;
import java.util.List;
/* loaded from: classes5.dex */
public class T6 implements ListConverter<D6, C1637jf> {

    /* renamed from: a  reason: collision with root package name */
    private U6 f13946a = new U6();

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1637jf[] fromModel(List<D6> list) {
        C1637jf[] c1637jfArr = new C1637jf[list.size()];
        int i = 0;
        for (D6 d6 : list) {
            c1637jfArr[i] = this.f13946a.fromModel(d6);
            i++;
        }
        return c1637jfArr;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C1637jf[] c1637jfArr = (C1637jf[]) obj;
        throw new UnsupportedOperationException();
    }
}
