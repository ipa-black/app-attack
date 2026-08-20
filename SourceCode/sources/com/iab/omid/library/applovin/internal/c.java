package com.iab.omid.library.applovin.internal;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    private static c f10061c = new c();

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.applovin.adsession.a> f10062a = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.applovin.adsession.a> f10063b = new ArrayList<>();

    private c() {
    }

    public static c c() {
        return f10061c;
    }

    public Collection<com.iab.omid.library.applovin.adsession.a> a() {
        return Collections.unmodifiableCollection(this.f10063b);
    }

    public void a(com.iab.omid.library.applovin.adsession.a aVar) {
        this.f10062a.add(aVar);
    }

    public Collection<com.iab.omid.library.applovin.adsession.a> b() {
        return Collections.unmodifiableCollection(this.f10062a);
    }

    public void b(com.iab.omid.library.applovin.adsession.a aVar) {
        boolean d2 = d();
        this.f10062a.remove(aVar);
        this.f10063b.remove(aVar);
        if (!d2 || d()) {
            return;
        }
        h.c().e();
    }

    public void c(com.iab.omid.library.applovin.adsession.a aVar) {
        boolean d2 = d();
        this.f10063b.add(aVar);
        if (d2) {
            return;
        }
        h.c().d();
    }

    public boolean d() {
        return this.f10063b.size() > 0;
    }
}
