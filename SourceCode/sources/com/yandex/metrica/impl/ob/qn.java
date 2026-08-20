package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.zn;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class qn<T, R> implements vn<T, R> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<T, wn<R>> f15595a;

    public qn(Map<T, wn<R>> map) {
        this.f15595a = A2.d(map);
    }

    @Override // com.yandex.metrica.impl.ob.wn
    /* renamed from: a */
    public zn<Map<T, R>> get(Map<T, R> map) {
        zn.a.values();
        int[] iArr = new int[3];
        HashMap hashMap = new HashMap();
        for (Map.Entry<T, R> entry : map.entrySet()) {
            wn<R> wnVar = this.f15595a.get(entry.getKey());
            if (wnVar != null) {
                zn<R> znVar = wnVar.get(entry.getValue());
                int ordinal = znVar.f16179a.ordinal();
                iArr[ordinal] = iArr[ordinal] + 1;
                hashMap.put(entry.getKey(), znVar.f16180b);
            }
        }
        zn.a aVar = zn.a.NEW;
        if (iArr[0] > 0) {
            return new zn<>(aVar, hashMap);
        }
        zn.a aVar2 = zn.a.REFRESH;
        if (iArr[2] > 0) {
            return new zn<>(aVar2, hashMap);
        }
        return new zn<>(zn.a.NOT_CHANGED, hashMap);
    }
}
