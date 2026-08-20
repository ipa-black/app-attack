package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C2026zf;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
/* loaded from: classes5.dex */
public final class D9 implements Converter<Map<String, ? extends byte[]>, byte[]> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public byte[] fromModel(Map<String, byte[]> map) {
        C2026zf c2026zf = new C2026zf();
        int size = map.size();
        C2026zf.a[] aVarArr = new C2026zf.a[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            aVarArr[i2] = new C2026zf.a();
        }
        c2026zf.f16158a = aVarArr;
        for (Object obj : map.entrySet()) {
            int i3 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            Map.Entry entry = (Map.Entry) obj;
            c2026zf.f16158a[i].f16160a = (String) entry.getKey();
            c2026zf.f16158a[i].f16161b = (byte[]) entry.getValue();
            i = i3;
        }
        byte[] byteArray = MessageNano.toByteArray(c2026zf);
        Intrinsics.checkNotNullExpressionValue(byteArray, "MessageNano.toByteArray(proto)");
        return byteArray;
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Map<String, byte[]> toModel(byte[] bArr) {
        C2026zf.a[] aVarArr = ((C2026zf) MessageNano.mergeFrom(new C2026zf(), bArr)).f16158a;
        Intrinsics.checkNotNullExpressionValue(aVarArr, "EventExtrasProto.EventEx…s.parseFrom(input).extras");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(aVarArr.length), 16));
        for (C2026zf.a aVar : aVarArr) {
            Pair pair = TuplesKt.to(aVar.f16160a, aVar.f16161b);
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }
}
