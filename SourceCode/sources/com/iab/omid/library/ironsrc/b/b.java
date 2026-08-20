package com.iab.omid.library.ironsrc.b;

import android.content.Context;
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static b f10386a = new b();

    /* renamed from: b  reason: collision with root package name */
    private Context f10387b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f10388c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f10389d;

    /* renamed from: e  reason: collision with root package name */
    private a f10390e;

    /* loaded from: classes2.dex */
    public interface a {
    }

    private b() {
    }

    public static b a() {
        return f10386a;
    }

    private void e() {
        boolean z = !this.f10389d;
        for (com.iab.omid.library.ironsrc.adsession.a aVar : com.iab.omid.library.ironsrc.b.a.a().b()) {
            aVar.getAdSessionStatePublisher().a(z);
        }
    }

    public void a(Context context) {
        this.f10387b = context.getApplicationContext();
    }

    public void a(a aVar) {
        this.f10390e = aVar;
    }

    public void b() {
        this.f10388c = true;
        e();
    }

    public void c() {
        this.f10388c = false;
        this.f10389d = false;
        this.f10390e = null;
    }

    public boolean d() {
        return !this.f10389d;
    }
}
