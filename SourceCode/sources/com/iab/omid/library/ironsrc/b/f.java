package com.iab.omid.library.ironsrc.b;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.ironsrc.b.b;
import com.iab.omid.library.ironsrc.walking.TreeWalker;
/* loaded from: classes2.dex */
public class f implements com.iab.omid.library.ironsrc.a.c, b.a {

    /* renamed from: a  reason: collision with root package name */
    private static f f10401a;

    /* renamed from: b  reason: collision with root package name */
    private float f10402b = 0.0f;

    /* renamed from: c  reason: collision with root package name */
    private final com.iab.omid.library.ironsrc.a.e f10403c;

    /* renamed from: d  reason: collision with root package name */
    private final com.iab.omid.library.ironsrc.a.b f10404d;

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.ironsrc.a.d f10405e;

    /* renamed from: f  reason: collision with root package name */
    private a f10406f;

    public f(com.iab.omid.library.ironsrc.a.e eVar, com.iab.omid.library.ironsrc.a.b bVar) {
        this.f10403c = eVar;
        this.f10404d = bVar;
    }

    public static f a() {
        if (f10401a == null) {
            f10401a = new f(new com.iab.omid.library.ironsrc.a.e(), new com.iab.omid.library.ironsrc.a.b());
        }
        return f10401a;
    }

    private a e() {
        if (this.f10406f == null) {
            this.f10406f = a.a();
        }
        return this.f10406f;
    }

    @Override // com.iab.omid.library.ironsrc.a.c
    public void a(float f2) {
        this.f10402b = f2;
        for (com.iab.omid.library.ironsrc.adsession.a aVar : e().c()) {
            aVar.getAdSessionStatePublisher().a(f2);
        }
    }

    public void a(Context context) {
        this.f10405e = this.f10403c.a(new Handler(), context, this.f10404d.a(), this);
    }

    public void b() {
        b.a().a(this);
        b.a().b();
        if (b.a().d()) {
            TreeWalker.getInstance().a();
        }
        this.f10405e.a();
    }

    public void c() {
        TreeWalker.getInstance().b();
        b.a().c();
        this.f10405e.b();
    }

    public float d() {
        return this.f10402b;
    }
}
