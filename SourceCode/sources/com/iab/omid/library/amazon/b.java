package com.iab.omid.library.amazon;

import android.content.Context;
import com.iab.omid.library.amazon.b.d;
import com.iab.omid.library.amazon.b.f;
import com.iab.omid.library.amazon.d.e;
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private boolean f9939a;

    private void b(Context context) {
        e.a(context, "Application Context cannot be null");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return "1.3.28-Amazon";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context) {
        b(context);
        if (b()) {
            return;
        }
        a(true);
        f.a().a(context);
        com.iab.omid.library.amazon.b.b.a().a(context);
        com.iab.omid.library.amazon.d.b.a(context);
        d.a().a(context);
    }

    void a(boolean z) {
        this.f9939a = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return this.f9939a;
    }
}
