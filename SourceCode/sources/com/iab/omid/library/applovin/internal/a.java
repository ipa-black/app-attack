package com.iab.omid.library.applovin.internal;

import android.content.Context;
import com.iab.omid.library.applovin.internal.d;
import java.util.Date;
/* loaded from: classes2.dex */
public class a implements d.a {

    /* renamed from: f  reason: collision with root package name */
    private static a f10054f = new a(new d());

    /* renamed from: a  reason: collision with root package name */
    protected com.iab.omid.library.applovin.utils.f f10055a = new com.iab.omid.library.applovin.utils.f();

    /* renamed from: b  reason: collision with root package name */
    private Date f10056b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f10057c;

    /* renamed from: d  reason: collision with root package name */
    private d f10058d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f10059e;

    private a(d dVar) {
        this.f10058d = dVar;
    }

    public static a a() {
        return f10054f;
    }

    private void c() {
        if (!this.f10057c || this.f10056b == null) {
            return;
        }
        for (com.iab.omid.library.applovin.adsession.a aVar : c.c().a()) {
            aVar.getAdSessionStatePublisher().a(b());
        }
    }

    public void a(Context context) {
        if (this.f10057c) {
            return;
        }
        this.f10058d.a(context);
        this.f10058d.a(this);
        this.f10058d.e();
        this.f10059e = this.f10058d.c();
        this.f10057c = true;
    }

    @Override // com.iab.omid.library.applovin.internal.d.a
    public void a(boolean z) {
        if (!this.f10059e && z) {
            d();
        }
        this.f10059e = z;
    }

    public Date b() {
        Date date = this.f10056b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void d() {
        Date a2 = this.f10055a.a();
        Date date = this.f10056b;
        if (date == null || a2.after(date)) {
            this.f10056b = a2;
            c();
        }
    }
}
