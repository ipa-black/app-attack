package com.iab.omid.library.appodeal.b;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.appodeal.b.b;
import com.iab.omid.library.appodeal.walking.TreeWalker;
/* loaded from: classes2.dex */
public class f implements com.iab.omid.library.appodeal.a.c, b.a {

    /* renamed from: a  reason: collision with root package name */
    private static f f10178a;

    /* renamed from: b  reason: collision with root package name */
    private float f10179b = 0.0f;

    /* renamed from: c  reason: collision with root package name */
    private final com.iab.omid.library.appodeal.a.e f10180c;

    /* renamed from: d  reason: collision with root package name */
    private final com.iab.omid.library.appodeal.a.b f10181d;

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.appodeal.a.d f10182e;

    /* renamed from: f  reason: collision with root package name */
    private a f10183f;

    public f(com.iab.omid.library.appodeal.a.e eVar, com.iab.omid.library.appodeal.a.b bVar) {
        this.f10180c = eVar;
        this.f10181d = bVar;
    }

    public static f a() {
        if (f10178a == null) {
            f10178a = new f(new com.iab.omid.library.appodeal.a.e(), new com.iab.omid.library.appodeal.a.b());
        }
        return f10178a;
    }

    private a e() {
        if (this.f10183f == null) {
            this.f10183f = a.a();
        }
        return this.f10183f;
    }

    @Override // com.iab.omid.library.appodeal.a.c
    public void a(float f2) {
        this.f10179b = f2;
        for (com.iab.omid.library.appodeal.adsession.a aVar : e().c()) {
            aVar.getAdSessionStatePublisher().a(f2);
        }
    }

    public void a(Context context) {
        this.f10182e = this.f10180c.a(new Handler(), context, this.f10181d.a(), this);
    }

    @Override // com.iab.omid.library.appodeal.b.b.a
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
        this.f10182e.a();
    }

    public void c() {
        TreeWalker.getInstance().b();
        b.a().c();
        this.f10182e.b();
    }

    public float d() {
        return this.f10179b;
    }
}
