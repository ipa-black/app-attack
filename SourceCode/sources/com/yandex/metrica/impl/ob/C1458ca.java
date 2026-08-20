package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.If;
/* renamed from: com.yandex.metrica.impl.ob.ca  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1458ca implements ProtobufConverter<C1594hl, If.v> {

    /* renamed from: a  reason: collision with root package name */
    private final C1433ba f14543a;

    public C1458ca() {
        this(new C1433ba());
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.v fromModel(C1594hl c1594hl) {
        If.v vVar = new If.v();
        vVar.f13173a = c1594hl.f14876a;
        vVar.f13174b = c1594hl.f14877b;
        vVar.f13175c = c1594hl.f14878c;
        vVar.f13176d = c1594hl.f14879d;
        vVar.i = c1594hl.f14880e;
        vVar.j = c1594hl.f14881f;
        vVar.k = c1594hl.f14882g;
        vVar.l = c1594hl.f14883h;
        vVar.n = c1594hl.i;
        vVar.o = c1594hl.j;
        vVar.f13177e = c1594hl.k;
        vVar.f13178f = c1594hl.l;
        vVar.f13179g = c1594hl.m;
        vVar.f13180h = c1594hl.n;
        vVar.p = c1594hl.o;
        vVar.m = this.f14543a.fromModel(c1594hl.p);
        return vVar;
    }

    C1458ca(C1433ba c1433ba) {
        this.f14543a = c1433ba;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public C1594hl toModel(If.v vVar) {
        return new C1594hl(vVar.f13173a, vVar.f13174b, vVar.f13175c, vVar.f13176d, vVar.i, vVar.j, vVar.k, vVar.l, vVar.n, vVar.o, vVar.f13177e, vVar.f13178f, vVar.f13179g, vVar.f13180h, vVar.p, this.f14543a.toModel(vVar.m));
    }
}
