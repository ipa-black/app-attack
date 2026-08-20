package com.iab.omid.library.ironsrc.b;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f10383a = new a();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.ironsrc.adsession.a> f10384b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.ironsrc.adsession.a> f10385c = new ArrayList<>();

    private a() {
    }

    public static a a() {
        return f10383a;
    }

    public void a(com.iab.omid.library.ironsrc.adsession.a aVar) {
        this.f10384b.add(aVar);
    }

    public Collection<com.iab.omid.library.ironsrc.adsession.a> b() {
        return Collections.unmodifiableCollection(this.f10384b);
    }

    public void b(com.iab.omid.library.ironsrc.adsession.a aVar) {
        boolean d2 = d();
        this.f10385c.add(aVar);
        if (d2) {
            return;
        }
        f.a().b();
    }

    public Collection<com.iab.omid.library.ironsrc.adsession.a> c() {
        return Collections.unmodifiableCollection(this.f10385c);
    }

    public void c(com.iab.omid.library.ironsrc.adsession.a aVar) {
        boolean d2 = d();
        this.f10384b.remove(aVar);
        this.f10385c.remove(aVar);
        if (!d2 || d()) {
            return;
        }
        f.a().c();
    }

    public boolean d() {
        return this.f10385c.size() > 0;
    }
}
