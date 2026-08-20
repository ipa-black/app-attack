package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* loaded from: classes5.dex */
public class I9 implements ProtobufConverter<C1460cc, If.k.a.b> {

    /* renamed from: a  reason: collision with root package name */
    private final H9 f13065a;

    public I9() {
        this(new H9());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.k.a.b fromModel(C1460cc c1460cc) {
        If.k.a.b bVar = new If.k.a.b();
        Qc qc = c1460cc.f14547a;
        bVar.f13129a = qc.f13756a;
        bVar.f13130b = qc.f13757b;
        C1410ac c1410ac = c1460cc.f14548b;
        if (c1410ac != null) {
            bVar.f13131c = this.f13065a.fromModel(c1410ac);
        }
        return bVar;
    }

    I9(H9 h9) {
        this.f13065a = h9;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1460cc toModel(If.k.a.b bVar) {
        If.k.a.b.C0351a c0351a = bVar.f13131c;
        return new C1460cc(new Qc(bVar.f13129a, bVar.f13130b), c0351a != null ? this.f13065a.toModel(c0351a) : null);
    }
}
