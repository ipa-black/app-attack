package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import java.util.List;
/* loaded from: classes5.dex */
public class W6 implements ProtobufConverter<F6, C1687lf> {

    /* renamed from: a  reason: collision with root package name */
    private final T6 f14184a;

    public W6() {
        this(new T6());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1687lf fromModel(F6 f6) {
        C1687lf c1687lf = new C1687lf();
        String b2 = f6.b();
        if (b2 == null) {
            b2 = "";
        }
        c1687lf.f15084a = b2;
        String c2 = f6.c();
        c1687lf.f15085b = c2 != null ? c2 : "";
        c1687lf.f15086c = this.f14184a.fromModel(f6.d());
        if (f6.a() != null) {
            c1687lf.f15087d = fromModel(f6.a());
        }
        List<F6> e2 = f6.e();
        int i = 0;
        if (e2 == null) {
            c1687lf.f15088e = new C1687lf[0];
        } else {
            c1687lf.f15088e = new C1687lf[e2.size()];
            for (F6 f62 : e2) {
                c1687lf.f15088e[i] = fromModel(f62);
                i++;
            }
        }
        return c1687lf;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        C1687lf c1687lf = (C1687lf) obj;
        throw new UnsupportedOperationException();
    }

    W6(T6 t6) {
        this.f14184a = t6;
    }
}
