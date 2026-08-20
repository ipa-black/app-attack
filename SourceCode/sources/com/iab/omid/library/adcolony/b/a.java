package com.iab.omid.library.adcolony.b;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f9833a = new a();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.adcolony.adsession.a> f9834b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.adcolony.adsession.a> f9835c = new ArrayList<>();

    private a() {
    }

    public static a a() {
        return f9833a;
    }

    public void a(com.iab.omid.library.adcolony.adsession.a aVar) {
        this.f9834b.add(aVar);
    }

    public Collection<com.iab.omid.library.adcolony.adsession.a> b() {
        return Collections.unmodifiableCollection(this.f9834b);
    }

    public void b(com.iab.omid.library.adcolony.adsession.a aVar) {
        boolean d2 = d();
        this.f9835c.add(aVar);
        if (d2) {
            return;
        }
        f.a().b();
    }

    public Collection<com.iab.omid.library.adcolony.adsession.a> c() {
        return Collections.unmodifiableCollection(this.f9835c);
    }

    public void c(com.iab.omid.library.adcolony.adsession.a aVar) {
        boolean d2 = d();
        this.f9834b.remove(aVar);
        this.f9835c.remove(aVar);
        if (!d2 || d()) {
            return;
        }
        f.a().c();
    }

    public boolean d() {
        return this.f9835c.size() > 0;
    }
}
