package com.iab.omid.library.bytedance2.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    private static c f10282c = new c();

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.bytedance2.adsession.a> f10283a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.bytedance2.adsession.a> f10284b = new ArrayList<>();

    private c() {
    }

    public static c c() {
        return f10282c;
    }

    public Collection<com.iab.omid.library.bytedance2.adsession.a> a() {
        return Collections.unmodifiableCollection(this.f10284b);
    }

    public void a(com.iab.omid.library.bytedance2.adsession.a aVar) {
        this.f10283a.add(aVar);
    }

    public Collection<com.iab.omid.library.bytedance2.adsession.a> b() {
        return Collections.unmodifiableCollection(this.f10283a);
    }

    public void b(com.iab.omid.library.bytedance2.adsession.a aVar) {
        boolean d2 = d();
        this.f10283a.remove(aVar);
        this.f10284b.remove(aVar);
        if (!d2 || d()) {
            return;
        }
        h.c().e();
    }

    public void c(com.iab.omid.library.bytedance2.adsession.a aVar) {
        boolean d2 = d();
        this.f10284b.add(aVar);
        if (d2) {
            return;
        }
        h.c().d();
    }

    public boolean d() {
        return this.f10284b.size() > 0;
    }
}
