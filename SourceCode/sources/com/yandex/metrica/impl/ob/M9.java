package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import com.yandex.metrica.impl.ob.C1938w;
import com.yandex.metrica.impl.ob.E;
import com.yandex.metrica.impl.ob.If;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
/* loaded from: classes5.dex */
public class M9 implements ProtobufConverter<Ac, If.k.b> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public If.k.b fromModel(Ac ac) {
        If.k.b bVar = new If.k.b();
        bVar.f13135a = new int[ac.f12632a.size()];
        Iterator<E.b.a> it = ac.f12632a.iterator();
        int i = 0;
        while (true) {
            int i2 = 3;
            int i3 = 2;
            if (!it.hasNext()) {
                break;
            }
            int[] iArr = bVar.f13135a;
            int ordinal = it.next().ordinal();
            if (ordinal == 1) {
                i2 = 0;
            } else if (ordinal != 2) {
                if (ordinal != 3) {
                    i3 = 4;
                    if (ordinal == 4) {
                    }
                }
                i2 = i3;
            } else {
                i2 = 1;
            }
            iArr[i] = i2;
            i++;
        }
        bVar.f13136b = new int[ac.f12633b.size()];
        int i4 = 0;
        for (C1938w.a aVar : ac.f12633b) {
            int[] iArr2 = bVar.f13136b;
            int ordinal2 = aVar.ordinal();
            iArr2[i4] = ordinal2 != 1 ? ordinal2 != 2 ? 3 : 2 : 0;
            i4++;
        }
        return bVar;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Ac toModel(If.k.b bVar) {
        E.b.a aVar;
        C1938w.a aVar2;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        if (bVar.f13135a.length != 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = bVar.f13135a;
                if (i2 >= iArr.length) {
                    break;
                }
                int i3 = iArr[i2];
                if (i3 == 0) {
                    aVar = E.b.a.NONE;
                } else if (i3 == 1) {
                    aVar = E.b.a.USB;
                } else if (i3 == 2) {
                    aVar = E.b.a.WIRELESS;
                } else if (i3 != 3) {
                    aVar = E.b.a.UNKNOWN;
                } else {
                    aVar = E.b.a.AC;
                }
                arrayList.add(aVar);
                i2++;
            }
        } else {
            arrayList.addAll(Arrays.asList(E.b.a.values()));
        }
        ArrayList arrayList2 = new ArrayList();
        if (bVar.f13136b.length != 0) {
            while (true) {
                int[] iArr2 = bVar.f13136b;
                if (i >= iArr2.length) {
                    break;
                }
                int i4 = iArr2[i];
                if (i4 == 0) {
                    aVar2 = C1938w.a.BACKGROUND;
                } else if (i4 != 2) {
                    aVar2 = C1938w.a.UNKNOWN;
                } else {
                    aVar2 = C1938w.a.VISIBLE;
                }
                arrayList2.add(aVar2);
                i++;
            }
        } else {
            arrayList2.addAll(Arrays.asList(C1938w.a.values()));
        }
        return new Ac(arrayList, arrayList2);
    }
}
