package com.iab.omid.library.amazon.b;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f9940a = new a();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.amazon.adsession.a> f9941b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.amazon.adsession.a> f9942c = new ArrayList<>();

    private a() {
    }

    public static a a() {
        return f9940a;
    }

    public void a(com.iab.omid.library.amazon.adsession.a aVar) {
        this.f9941b.add(aVar);
    }

    public Collection<com.iab.omid.library.amazon.adsession.a> b() {
        return Collections.unmodifiableCollection(this.f9941b);
    }

    public void b(com.iab.omid.library.amazon.adsession.a aVar) {
        boolean d2 = d();
        this.f9942c.add(aVar);
        if (d2) {
            return;
        }
        f.a().b();
    }

    public Collection<com.iab.omid.library.amazon.adsession.a> c() {
        return Collections.unmodifiableCollection(this.f9942c);
    }

    public void c(com.iab.omid.library.amazon.adsession.a aVar) {
        boolean d2 = d();
        this.f9941b.remove(aVar);
        this.f9942c.remove(aVar);
        if (!d2 || d()) {
            return;
        }
        f.a().c();
    }

    public boolean d() {
        return this.f9942c.size() > 0;
    }
}
