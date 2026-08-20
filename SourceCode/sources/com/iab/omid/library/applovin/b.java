package com.iab.omid.library.applovin;

import android.content.Context;
import com.iab.omid.library.applovin.internal.f;
import com.iab.omid.library.applovin.internal.h;
import com.iab.omid.library.applovin.utils.e;
import com.iab.omid.library.applovin.utils.g;
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private boolean f10041a;

    private void b(Context context) {
        g.a(context, "Application Context cannot be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return "1.4.1-Applovin";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context) {
        b(context);
        if (b()) {
            return;
        }
        a(true);
        h.c().a(context);
        com.iab.omid.library.applovin.internal.b.g().a(context);
        com.iab.omid.library.applovin.utils.a.a(context);
        com.iab.omid.library.applovin.utils.c.a(context);
        e.a(context);
        f.b().a(context);
        com.iab.omid.library.applovin.internal.a.a().a(context);
    }

    void a(boolean z) {
        this.f10041a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f10041a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        g.a();
        com.iab.omid.library.applovin.internal.a.a().d();
    }
}
