package com.iab.omid.library.amazon.b;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.amazon.b.b;
import com.iab.omid.library.amazon.walking.TreeWalker;
/* loaded from: classes2.dex */
public class f implements com.iab.omid.library.amazon.a.c, b.a {

    /* renamed from: a  reason: collision with root package name */
    private static f f9957a;

    /* renamed from: b  reason: collision with root package name */
    private float f9958b = 0.0f;

    /* renamed from: c  reason: collision with root package name */
    private final com.iab.omid.library.amazon.a.e f9959c;

    /* renamed from: d  reason: collision with root package name */
    private final com.iab.omid.library.amazon.a.b f9960d;

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.amazon.a.d f9961e;

    /* renamed from: f  reason: collision with root package name */
    private a f9962f;

    public f(com.iab.omid.library.amazon.a.e eVar, com.iab.omid.library.amazon.a.b bVar) {
        this.f9959c = eVar;
        this.f9960d = bVar;
    }

    public static f a() {
        if (f9957a == null) {
            f9957a = new f(new com.iab.omid.library.amazon.a.e(), new com.iab.omid.library.amazon.a.b());
        }
        return f9957a;
    }

    private a e() {
        if (this.f9962f == null) {
            this.f9962f = a.a();
        }
        return this.f9962f;
    }

    @Override // com.iab.omid.library.amazon.a.c
    public void a(float f2) {
        this.f9958b = f2;
        for (com.iab.omid.library.amazon.adsession.a aVar : e().c()) {
            aVar.getAdSessionStatePublisher().a(f2);
        }
    }

    public void a(Context context) {
        this.f9961e = this.f9959c.a(new Handler(), context, this.f9960d.a(), this);
    }

    @Override // com.iab.omid.library.amazon.b.b.a
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
        this.f9961e.a();
    }

    public void c() {
        TreeWalker.getInstance().b();
        b.a().c();
        this.f9961e.b();
    }

    public float d() {
        return this.f9958b;
    }
}
