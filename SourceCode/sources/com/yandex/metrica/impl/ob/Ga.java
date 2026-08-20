package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.CodedOutputByteBufferNano;
import com.yandex.metrica.impl.ob.C1712mf;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class Ga implements Fa<Va> {

    /* renamed from: a  reason: collision with root package name */
    private final Ha f12977a;

    /* renamed from: b  reason: collision with root package name */
    private final Ca f12978b;

    /* renamed from: c  reason: collision with root package name */
    private final C1670kn f12979c;

    /* renamed from: d  reason: collision with root package name */
    private final La f12980d;

    public Ga() {
        this(new Ha(), new Ca(), new C1670kn(100), new La());
    }

    private C1712mf a(C1712mf c1712mf) {
        C1712mf c1712mf2 = new C1712mf();
        c1712mf2.f15152a = c1712mf.f15152a;
        C1712mf.h hVar = new C1712mf.h();
        c1712mf2.f15157f = hVar;
        hVar.f15177a = new C1712mf.f();
        C1712mf.f fVar = c1712mf2.f15157f.f15177a;
        C1712mf.f fVar2 = c1712mf.f15157f.f15177a;
        fVar.f15170b = fVar2.f15170b;
        fVar.f15169a = fVar2.f15169a;
        fVar.f15173e = fVar2.f15173e;
        fVar.f15171c = fVar2.f15171c;
        return c1712mf2;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object fromModel(Object obj) {
        Na<C1712mf.i, Vm> na;
        Va va = (Va) obj;
        C1712mf c1712mf = new C1712mf();
        c1712mf.f15152a = va.f14156b;
        c1712mf.f15157f = new C1712mf.h();
        Wa wa = va.f14157c;
        C1712mf.f fVar = new C1712mf.f();
        fVar.f15169a = C1422b.b(wa.f14189a);
        C1571gn<String, Vm> a2 = this.f12979c.a(wa.f14190b);
        fVar.f15170b = C1422b.b(a2.f14820a);
        fVar.f15173e = wa.f14191c.size();
        Map<String, String> map = wa.f14192d;
        if (map != null) {
            na = this.f12977a.fromModel(map);
            fVar.f15171c = na.f13532a;
        } else {
            na = null;
        }
        c1712mf.f15157f.f15177a = fVar;
        Vm a3 = Um.a(a2, na);
        List<Ua> list = wa.f14191c;
        ArrayList arrayList = new ArrayList();
        this.f12980d.getClass();
        int computeInt32Size = c1712mf.f15152a != new C1712mf().f15152a ? CodedOutputByteBufferNano.computeInt32Size(1, c1712mf.f15152a) : 0;
        C1712mf.q qVar = c1712mf.f15153b;
        if (qVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(2, qVar);
        }
        C1712mf.o oVar = c1712mf.f15154c;
        if (oVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(3, oVar);
        }
        C1712mf.p pVar = c1712mf.f15155d;
        int i = 4;
        if (pVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(4, pVar);
        }
        C1712mf.b bVar = c1712mf.f15156e;
        if (bVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(5, bVar);
        }
        C1712mf.h hVar = c1712mf.f15157f;
        if (hVar != null) {
            computeInt32Size += CodedOutputByteBufferNano.computeMessageSize(6, hVar);
        }
        ArrayList arrayList2 = new ArrayList();
        C1712mf a4 = a(c1712mf);
        Vm vm = a3;
        int i2 = 0;
        int i3 = computeInt32Size;
        while (i2 < list.size()) {
            C1712mf.g gVar = new C1712mf.g();
            gVar.f15175a = i2;
            Na<C1712mf.c, Vm> fromModel = this.f12978b.fromModel(list.get(i2));
            gVar.f15176b = fromModel.f13532a;
            this.f12980d.getClass();
            int computeTagSize = CodedOutputByteBufferNano.computeTagSize(i);
            int computeMessageSizeNoTag = CodedOutputByteBufferNano.computeMessageSizeNoTag(gVar);
            int computeRawVarint32Size = computeTagSize + computeMessageSizeNoTag + ((computeMessageSizeNoTag & (-128)) == 0 ? 0 : CodedOutputByteBufferNano.computeRawVarint32Size(computeMessageSizeNoTag));
            if (arrayList2.size() != 0 && i3 + computeRawVarint32Size > 204800) {
                a4.f15157f.f15177a.f15172d = (C1712mf.g[]) arrayList2.toArray(new C1712mf.g[arrayList2.size()]);
                ArrayList arrayList3 = new ArrayList();
                arrayList.add(new Na(a4, vm));
                vm = a3;
                i3 = computeInt32Size;
                a4 = a(c1712mf);
                arrayList2 = arrayList3;
            }
            arrayList2.add(gVar);
            vm = Um.a(vm, fromModel);
            i3 += computeRawVarint32Size;
            i2++;
            i = 4;
        }
        a4.f15157f.f15177a.f15172d = (C1712mf.g[]) arrayList2.toArray(new C1712mf.g[arrayList2.size()]);
        arrayList.add(new Na(a4, vm));
        return arrayList;
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        List list = (List) obj;
        throw new UnsupportedOperationException();
    }

    Ga(Ha ha, Ca ca, C1670kn c1670kn, La la) {
        this.f12977a = ha;
        this.f12978b = ca;
        this.f12979c = c1670kn;
        this.f12980d = la;
    }
}
