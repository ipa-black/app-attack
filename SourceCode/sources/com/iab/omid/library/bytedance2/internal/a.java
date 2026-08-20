package com.iab.omid.library.bytedance2.internal;

import android.content.Context;
import com.iab.omid.library.bytedance2.internal.d;
import java.util.Date;
/* loaded from: classes2.dex */
public class a implements d.a {

    /* renamed from: f  reason: collision with root package name */
    private static a f10275f = new a(new d());

    /* renamed from: a  reason: collision with root package name */
    protected com.iab.omid.library.bytedance2.utils.f f10276a = new com.iab.omid.library.bytedance2.utils.f();

    /* renamed from: b  reason: collision with root package name */
    private Date f10277b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f10278c;

    /* renamed from: d  reason: collision with root package name */
    private d f10279d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f10280e;

    private a(d dVar) {
        this.f10279d = dVar;
    }

    public static a a() {
        return f10275f;
    }

    private void c() {
        if (!this.f10278c || this.f10277b == null) {
            return;
        }
        for (com.iab.omid.library.bytedance2.adsession.a aVar : c.c().a()) {
            aVar.getAdSessionStatePublisher().a(b());
        }
    }

    public void a(Context context) {
        if (this.f10278c) {
            return;
        }
        this.f10279d.a(context);
        this.f10279d.a(this);
        this.f10279d.e();
        this.f10280e = this.f10279d.c();
        this.f10278c = true;
    }

    @Override // com.iab.omid.library.bytedance2.internal.d.a
    public void a(boolean z) {
        if (!this.f10280e && z) {
            d();
        }
        this.f10280e = z;
    }

    public Date b() {
        Date date = this.f10277b;
        if (date != null) {
            return (Date) date.clone();
        }
        return null;
    }

    public void d() {
        Date a2 = this.f10276a.a();
        Date date = this.f10277b;
        if (date == null || a2.after(date)) {
            this.f10277b = a2;
            c();
        }
    }
}
