package com.iab.omid.library.applovin.internal;

import android.view.View;
/* loaded from: classes2.dex */
public class b extends d {

    /* renamed from: d  reason: collision with root package name */
    private static b f10060d = new b();

    private b() {
    }

    public static b g() {
        return f10060d;
    }

    @Override // com.iab.omid.library.applovin.internal.d
    public void b(boolean z) {
        for (com.iab.omid.library.applovin.adsession.a aVar : c.c().b()) {
            aVar.getAdSessionStatePublisher().a(z);
        }
    }

    @Override // com.iab.omid.library.applovin.internal.d
    public boolean d() {
        for (com.iab.omid.library.applovin.adsession.a aVar : c.c().a()) {
            View c2 = aVar.c();
            if (c2 != null && c2.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
