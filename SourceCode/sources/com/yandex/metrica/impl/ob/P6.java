package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C1563gf;
import java.util.EnumMap;
/* loaded from: classes5.dex */
public class P6 implements ProtobufConverter<C1480d7, C1563gf> {

    /* renamed from: a  reason: collision with root package name */
    private static final EnumMap<EnumC1555g7, Integer> f13683a;

    static {
        EnumMap<EnumC1555g7, Integer> enumMap = new EnumMap<>(EnumC1555g7.class);
        f13683a = enumMap;
        enumMap.put((EnumMap<EnumC1555g7, Integer>) EnumC1555g7.UNKNOWN, (EnumC1555g7) 0);
        enumMap.put((EnumMap<EnumC1555g7, Integer>) EnumC1555g7.BREAKPAD, (EnumC1555g7) 2);
        enumMap.put((EnumMap<EnumC1555g7, Integer>) EnumC1555g7.CRASHPAD, (EnumC1555g7) 3);
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1563gf fromModel(C1480d7 c1480d7) {
        C1563gf c1563gf = new C1563gf();
        c1563gf.f14797f = 1;
        C1563gf.a aVar = new C1563gf.a();
        c1563gf.f14798g = aVar;
        aVar.f14800a = c1480d7.a();
        C1455c7 b2 = c1480d7.b();
        c1563gf.f14798g.f14801b = new Cif();
        Integer num = f13683a.get(b2.b());
        if (num != null) {
            c1563gf.f14798g.f14801b.f14923a = num.intValue();
        }
        Cif cif = c1563gf.f14798g.f14801b;
        String a2 = b2.a();
        if (a2 == null) {
            a2 = "";
        }
        cif.f14924b = a2;
        return c1563gf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C1563gf c1563gf = (C1563gf) obj;
        throw new UnsupportedOperationException();
    }
}
