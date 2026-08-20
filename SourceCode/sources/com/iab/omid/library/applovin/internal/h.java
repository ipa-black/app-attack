package com.iab.omid.library.applovin.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.applovin.internal.d;
import com.iab.omid.library.applovin.walking.TreeWalker;
/* loaded from: classes2.dex */
public class h implements com.iab.omid.library.applovin.devicevolume.c, d.a {

    /* renamed from: f  reason: collision with root package name */
    private static h f10076f;

    /* renamed from: a  reason: collision with root package name */
    private float f10077a = 0.0f;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.applovin.devicevolume.e f10078b;

    /* renamed from: c  reason: collision with root package name */
    private final com.iab.omid.library.applovin.devicevolume.b f10079c;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.applovin.devicevolume.d f10080d;

    /* renamed from: e  reason: collision with root package name */
    private c f10081e;

    public h(com.iab.omid.library.applovin.devicevolume.e eVar, com.iab.omid.library.applovin.devicevolume.b bVar) {
        this.f10078b = eVar;
        this.f10079c = bVar;
    }

    private c a() {
        if (this.f10081e == null) {
            this.f10081e = c.c();
        }
        return this.f10081e;
    }

    public static h c() {
        if (f10076f == null) {
            f10076f = new h(new com.iab.omid.library.applovin.devicevolume.e(), new com.iab.omid.library.applovin.devicevolume.b());
        }
        return f10076f;
    }

    @Override // com.iab.omid.library.applovin.devicevolume.c
    public void a(float f2) {
        this.f10077a = f2;
        for (com.iab.omid.library.applovin.adsession.a aVar : a().a()) {
            aVar.getAdSessionStatePublisher().a(f2);
        }
    }

    public void a(Context context) {
        this.f10080d = this.f10078b.a(new Handler(), context, this.f10079c.a(), this);
    }

    @Override // com.iab.omid.library.applovin.internal.d.a
    public void a(boolean z) {
        if (z) {
            TreeWalker.getInstance().h();
        } else {
            TreeWalker.getInstance().g();
        }
    }

    public float b() {
        return this.f10077a;
    }

    public void d() {
        b.g().a(this);
        b.g().e();
        TreeWalker.getInstance().h();
        this.f10080d.c();
    }

    public void e() {
        TreeWalker.getInstance().j();
        b.g().f();
        this.f10080d.d();
    }
}
