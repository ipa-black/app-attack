package com.iab.omid.library.adcolony.b;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.adcolony.b.b;
import com.iab.omid.library.adcolony.walking.TreeWalker;
/* loaded from: classes2.dex */
public class f implements com.iab.omid.library.adcolony.a.c, b.a {

    /* renamed from: a  reason: collision with root package name */
    private static f f9850a;

    /* renamed from: b  reason: collision with root package name */
    private float f9851b = 0.0f;

    /* renamed from: c  reason: collision with root package name */
    private final com.iab.omid.library.adcolony.a.e f9852c;

    /* renamed from: d  reason: collision with root package name */
    private final com.iab.omid.library.adcolony.a.b f9853d;

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.adcolony.a.d f9854e;

    /* renamed from: f  reason: collision with root package name */
    private a f9855f;

    public f(com.iab.omid.library.adcolony.a.e eVar, com.iab.omid.library.adcolony.a.b bVar) {
        this.f9852c = eVar;
        this.f9853d = bVar;
    }

    public static f a() {
        if (f9850a == null) {
            f9850a = new f(new com.iab.omid.library.adcolony.a.e(), new com.iab.omid.library.adcolony.a.b());
        }
        return f9850a;
    }

    private a e() {
        if (this.f9855f == null) {
            this.f9855f = a.a();
        }
        return this.f9855f;
    }

    @Override // com.iab.omid.library.adcolony.a.c
    public void a(float f2) {
        this.f9851b = f2;
        for (com.iab.omid.library.adcolony.adsession.a aVar : e().c()) {
            aVar.getAdSessionStatePublisher().a(f2);
        }
    }

    public void a(Context context) {
        this.f9854e = this.f9852c.a(new Handler(), context, this.f9853d.a(), this);
    }

    @Override // com.iab.omid.library.adcolony.b.b.a
    public void a(boolean z) {
        if (z) {
            TreeWalker.getInstance().a();
        } else {
            TreeWalker.getInstance().c();
        }
    }

    public void b() {
        b.a().a(this);
        b.a().b();
        TreeWalker.getInstance().a();
        this.f9854e.a();
    }

    public void c() {
        TreeWalker.getInstance().b();
        b.a().c();
        this.f9854e.b();
    }

    public float d() {
        return this.f9851b;
    }
}
