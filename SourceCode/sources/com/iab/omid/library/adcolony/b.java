package com.iab.omid.library.adcolony;

import android.content.Context;
import com.iab.omid.library.adcolony.b.d;
import com.iab.omid.library.adcolony.b.f;
import com.iab.omid.library.adcolony.d.e;
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private boolean f9832a;

    private void b(Context context) {
        e.a(context, "Application Context cannot be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return "1.3.30-Adcolony";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context) {
        b(context);
        if (b()) {
            return;
        }
        a(true);
        f.a().a(context);
        com.iab.omid.library.adcolony.b.b.a().a(context);
        com.iab.omid.library.adcolony.d.b.a(context);
        d.a().a(context);
    }

    void a(boolean z) {
        this.f9832a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f9832a;
    }
}
