package com.yandex.metrica.impl.ob;

import com.google.android.exoplayer2.upstream.cache.CacheDataSink;
import com.yandex.metrica.core.api.Converter;
import com.yandex.metrica.impl.ob.C1712mf;
import java.util.Map;
/* loaded from: classes5.dex */
public class Ha implements Converter<Map<String, String>, Na<C1712mf.i, Vm>> {

    /* renamed from: a  reason: collision with root package name */
    private final C1695ln f13035a;

    public Ha() {
        this(new C1695ln((int) CacheDataSink.DEFAULT_BUFFER_SIZE, 100, 1000));
    }

    @Override // com.yandex.metrica.core.api.Converter
    /* renamed from: a */
    public Na<C1712mf.i, Vm> fromModel(Map<String, String> map) {
        C1571gn<Map<String, String>, Xm> a2 = this.f13035a.a(map);
        C1712mf.i iVar = new C1712mf.i();
        iVar.f15179b = a2.f14821b.f14290b;
        Map<String, String> map2 = a2.f14820a;
        if (map2 != null) {
            iVar.f15178a = new C1712mf.i.a[map2.size()];
            int i = 0;
            for (Map.Entry<String, String> entry : map2.entrySet()) {
                iVar.f15178a[i] = new C1712mf.i.a();
                iVar.f15178a[i].f15181a = C1422b.b(entry.getKey());
                iVar.f15178a[i].f15182b = C1422b.b(entry.getValue());
                i++;
            }
        }
        return new Na<>(iVar, a2.f14821b);
    }

    @Override // com.yandex.metrica.core.api.Converter
    public Object toModel(Object obj) {
        Na na = (Na) obj;
        throw new UnsupportedOperationException();
    }

    public Ha(C1695ln c1695ln) {
        this.f13035a = c1695ln;
    }
}
