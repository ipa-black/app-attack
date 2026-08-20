package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes5.dex */
public class G9 implements ProtobufConverter<Xb, If.k.a.C0349a> {

    /* renamed from: a  reason: collision with root package name */
    private final F9 f12976a;

    public G9() {
        this(new F9());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.k.a.C0349a fromModel(Xb xb) {
        If.k.a.C0349a c0349a = new If.k.a.C0349a();
        Qc qc = xb.f14265a;
        c0349a.f13124a = qc.f13756a;
        c0349a.f13125b = qc.f13757b;
        Wb wb = xb.f14266b;
        if (wb != null) {
            this.f12976a.getClass();
            If.k.a.C0349a.C0350a c0350a = new If.k.a.C0349a.C0350a();
            c0350a.f13127a = wb.f14193a;
            c0350a.f13128b = wb.f14194b;
            c0349a.f13126c = c0350a;
        }
        return c0349a;
    }

    G9(F9 f9) {
        this.f12976a = f9;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Xb toModel(If.k.a.C0349a c0349a) {
        Wb wb;
        If.k.a.C0349a.C0350a c0350a = c0349a.f13126c;
        if (c0350a != null) {
            this.f12976a.getClass();
            wb = new Wb(c0350a.f13127a, c0350a.f13128b);
        } else {
            wb = null;
        }
        return new Xb(new Qc(c0349a.f13124a, c0349a.f13125b), wb);
    }
}
