package com.iab.omid.library.appodeal.b;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f10161a = new a();

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.appodeal.adsession.a> f10162b = new ArrayList<>();

    /* renamed from: c  reason: collision with root package name */
    private final ArrayList<com.iab.omid.library.appodeal.adsession.a> f10163c = new ArrayList<>();

    private a() {
    }

    public static a a() {
        return f10161a;
    }

    public void a(com.iab.omid.library.appodeal.adsession.a aVar) {
        this.f10162b.add(aVar);
    }

    public Collection<com.iab.omid.library.appodeal.adsession.a> b() {
        return Collections.unmodifiableCollection(this.f10162b);
    }

    public void b(com.iab.omid.library.appodeal.adsession.a aVar) {
        boolean d2 = d();
        this.f10163c.add(aVar);
        if (d2) {
            return;
        }
        f.a().b();
    }

    public Collection<com.iab.omid.library.appodeal.adsession.a> c() {
        return Collections.unmodifiableCollection(this.f10163c);
    }

    public void c(com.iab.omid.library.appodeal.adsession.a aVar) {
        boolean d2 = d();
        this.f10162b.remove(aVar);
        this.f10163c.remove(aVar);
        if (!d2 || d()) {
            return;
        }
        f.a().c();
    }

    public boolean d() {
        return this.f10163c.size() > 0;
    }
}
