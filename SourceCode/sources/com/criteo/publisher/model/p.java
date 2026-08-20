package com.criteo.publisher.model;

import android.content.Context;
import com.criteo.publisher.context.ContextData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
/* compiled from: CdbRequestFactory.java */
/* loaded from: classes2.dex */
public class p {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9153a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9154b;

    /* renamed from: c  reason: collision with root package name */
    private final u f9155c;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.n0.b f9156d;

    /* renamed from: e  reason: collision with root package name */
    private final com.criteo.publisher.l0.c f9157e;

    /* renamed from: f  reason: collision with root package name */
    private final com.criteo.publisher.c0.d f9158f;

    /* renamed from: g  reason: collision with root package name */
    private final com.criteo.publisher.n0.g f9159g;

    /* renamed from: h  reason: collision with root package name */
    private final com.criteo.publisher.i0.c f9160h;
    private final com.criteo.publisher.context.b i;
    private final com.criteo.publisher.context.d j;

    public p(Context context, String str, u uVar, com.criteo.publisher.n0.b bVar, com.criteo.publisher.l0.c cVar, com.criteo.publisher.c0.d dVar, com.criteo.publisher.n0.g gVar, com.criteo.publisher.i0.c cVar2, com.criteo.publisher.context.b bVar2, com.criteo.publisher.context.d dVar2) {
        this.f9153a = context;
        this.f9154b = str;
        this.f9155c = uVar;
        this.f9156d = bVar;
        this.f9157e = cVar;
        this.f9158f = dVar;
        this.f9159g = gVar;
        this.f9160h = cVar2;
        this.i = bVar2;
        this.j = dVar2;
    }

    public o a(List<n> list, ContextData contextData) {
        return o.a(this.f9158f.a(), v.a(this.f9153a.getPackageName(), this.f9154b, a(com.criteo.publisher.context.c.a(contextData))), z.a(this.f9156d.b(), com.criteo.publisher.n0.s.a(this.f9157e.d()), com.criteo.publisher.n0.s.a(this.f9157e.c()), com.criteo.publisher.n0.s.a(this.f9157e.e()), a(this.i.j(), com.criteo.publisher.context.c.a(this.j.a()))), this.f9159g.q(), this.f9160h.b(), this.f9157e.b(), a(list));
    }

    private List<q> a(List<n> list) {
        ArrayList arrayList = new ArrayList();
        for (n nVar : list) {
            arrayList.add(a(nVar));
        }
        return arrayList;
    }

    private q a(n nVar) {
        return q.a(this.f9158f.a(), nVar.b(), nVar.a(), nVar.c());
    }

    public Future<String> a() {
        return this.f9155c.b();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v4, types: [java.util.Map] */
    @SafeVarargs
    public final Map<String, Object> a(Map<String, Object>... mapArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Set newSetFromMap = Collections.newSetFromMap(new IdentityHashMap());
        for (Map<String, Object> map : mapArr) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String[] split = entry.getKey().split("\\.", -1);
                if (!a(split)) {
                    LinkedHashMap linkedHashMap2 = linkedHashMap;
                    for (int i = 0; i < split.length - 1; i++) {
                        String str = split[i];
                        if (linkedHashMap2.containsKey(str)) {
                            Object obj = linkedHashMap2.get(str);
                            if (!newSetFromMap.contains(obj)) {
                                break;
                            }
                            linkedHashMap2 = (Map) obj;
                        } else {
                            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                            newSetFromMap.add(linkedHashMap3);
                            linkedHashMap2.put(str, linkedHashMap3);
                            linkedHashMap2 = linkedHashMap3;
                        }
                    }
                    String str2 = split[split.length - 1];
                    if (!linkedHashMap2.containsKey(str2)) {
                        linkedHashMap2.put(str2, entry.getValue());
                    }
                }
            }
        }
        return linkedHashMap;
    }

    private boolean a(String[] strArr) {
        for (String str : strArr) {
            if (str.isEmpty()) {
                return true;
            }
        }
        return false;
    }
}
