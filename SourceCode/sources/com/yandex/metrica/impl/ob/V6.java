package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class V6 implements ProtobufConverter<E6, C1662kf> {

    /* renamed from: a  reason: collision with root package name */
    private final T6 f14154a;

    public V6() {
        this(new T6());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1662kf fromModel(E6 e6) {
        C1662kf c1662kf = new C1662kf();
        Integer num = e6.f12859e;
        c1662kf.f15030e = num == null ? -1 : num.intValue();
        c1662kf.f15029d = e6.f12858d;
        c1662kf.f15027b = e6.f12856b;
        c1662kf.f15026a = e6.f12855a;
        c1662kf.f15028c = e6.f12857c;
        T6 t6 = this.f14154a;
        List<StackTraceElement> list = e6.f12860f;
        ArrayList arrayList = new ArrayList();
        for (StackTraceElement stackTraceElement : list) {
            arrayList.add(new D6(stackTraceElement));
        }
        c1662kf.f15031f = t6.fromModel(arrayList);
        return c1662kf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C1662kf c1662kf = (C1662kf) obj;
        throw new UnsupportedOperationException();
    }

    V6(T6 t6) {
        this.f14154a = t6;
    }
}
