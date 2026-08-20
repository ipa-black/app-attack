package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.ProtobufConverter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
/* renamed from: com.yandex.metrica.impl.ob.g6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1554g6 implements ProtobufConverter<Map<String, ? extends byte[]>, Gf> {
    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Gf fromModel(Map<String, byte[]> map) {
        Gf gf = new Gf();
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, byte[]> entry : map.entrySet()) {
            Hf hf = new Hf();
            String key = entry.getKey();
            Charset charset = Charsets.UTF_8;
            if (key != null) {
                byte[] bytes = key.getBytes(charset);
                Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
                hf.f13048a = bytes;
                hf.f13049b = entry.getValue();
                arrayList.add(hf);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
        }
        Object[] array = arrayList.toArray(new Hf[0]);
        if (array != null) {
            gf.f12984a = (Hf[]) array;
            return gf;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Map<String, byte[]> toModel(Gf gf) {
        Hf[] hfArr = gf.f12984a;
        Intrinsics.checkNotNullExpressionValue(hfArr, "input.extras");
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(hfArr.length), 16));
        for (Hf hf : hfArr) {
            byte[] bArr = hf.f13048a;
            Intrinsics.checkNotNullExpressionValue(bArr, "it.key");
            Pair pair = TuplesKt.to(new String(bArr, Charsets.UTF_8), hf.f13049b);
            linkedHashMap.put(pair.getFirst(), pair.getSecond());
        }
        return linkedHashMap;
    }
}
