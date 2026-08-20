package com.ironsource.mediationsdk.utils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes3.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Integer> f11461a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private Map<String, Integer> f11462b = new HashMap();

    /* loaded from: classes3.dex */
    public interface a {
        int j();

        String k();
    }

    public n(List<a> list) {
        for (a aVar : list) {
            this.f11461a.put(aVar.k(), 0);
            this.f11462b.put(aVar.k(), Integer.valueOf(aVar.j()));
        }
    }

    public final void a(a aVar) {
        synchronized (this) {
            String k = aVar.k();
            if (this.f11461a.containsKey(k)) {
                Map<String, Integer> map = this.f11461a;
                map.put(k, Integer.valueOf(map.get(k).intValue() + 1));
            }
        }
    }

    public final boolean a() {
        for (String str : this.f11462b.keySet()) {
            if (this.f11461a.get(str).intValue() < this.f11462b.get(str).intValue()) {
                return false;
            }
        }
        return true;
    }

    public final boolean b(a aVar) {
        synchronized (this) {
            String k = aVar.k();
            if (this.f11461a.containsKey(k)) {
                return this.f11461a.get(k).intValue() >= aVar.j();
            }
            return false;
        }
    }
}
