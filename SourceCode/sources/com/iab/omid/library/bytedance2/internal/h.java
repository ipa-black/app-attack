package com.iab.omid.library.bytedance2.internal;

import android.content.Context;
import android.os.Handler;
import com.iab.omid.library.bytedance2.internal.d;
import com.iab.omid.library.bytedance2.walking.TreeWalker;
/* loaded from: classes2.dex */
public class h implements com.iab.omid.library.bytedance2.devicevolume.c, d.a {

    /* renamed from: f  reason: collision with root package name */
    private static h f10298f;

    /* renamed from: a  reason: collision with root package name */
    private float f10299a = 0.0f;

    /* renamed from: b  reason: collision with root package name */
    private final com.iab.omid.library.bytedance2.devicevolume.e f10300b;

    /* renamed from: c  reason: collision with root package name */
    private final com.iab.omid.library.bytedance2.devicevolume.b f10301c;

    /* renamed from: d  reason: collision with root package name */
    private com.iab.omid.library.bytedance2.devicevolume.d f10302d;

    /* renamed from: e  reason: collision with root package name */
    private c f10303e;

    public h(com.iab.omid.library.bytedance2.devicevolume.e eVar, com.iab.omid.library.bytedance2.devicevolume.b bVar) {
        this.f10300b = eVar;
        this.f10301c = bVar;
    }

    private c a() {
        if (this.f10303e == null) {
            this.f10303e = c.c();
        }
        return this.f10303e;
    }

    public static h c() {
        if (f10298f == null) {
            f10298f = new h(new com.iab.omid.library.bytedance2.devicevolume.e(), new com.iab.omid.library.bytedance2.devicevolume.b());
        }
        return f10298f;
    }

    @Override // com.iab.omid.library.bytedance2.devicevolume.c
    public void a(float f2) {
        this.f10299a = f2;
        for (com.iab.omid.library.bytedance2.adsession.a aVar : a().a()) {
            aVar.getAdSessionStatePublisher().a(f2);
        }
    }

    public void a(Context context) {
        this.f10302d = this.f10300b.a(new Handler(), context, this.f10301c.a(), this);
    }

    @Override // com.iab.omid.library.bytedance2.internal.d.a
    public void a(boolean z) {
        if (z) {
            TreeWalker.getInstance().h();
        } else {
            TreeWalker.getInstance().g();
        }
    }

    public float b() {
        return this.f10299a;
    }

    public void d() {
        b.g().a(this);
        b.g().e();
        TreeWalker.getInstance().h();
        this.f10302d.c();
    }

    public void e() {
        TreeWalker.getInstance().j();
        b.g().f();
        this.f10302d.d();
    }
}
