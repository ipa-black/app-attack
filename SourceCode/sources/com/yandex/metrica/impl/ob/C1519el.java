package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.impl.ob.C2008yl;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.yandex.metrica.impl.ob.el  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1519el {

    /* renamed from: a  reason: collision with root package name */
    private final C1864sl f14700a;

    /* renamed from: b  reason: collision with root package name */
    private final C2008yl.a f14701b;

    /* renamed from: c  reason: collision with root package name */
    private final C1888tl f14702c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1519el() {
        this(new C1864sl(), new C2008yl.a(), new C1888tl());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1494dl a(Activity activity, C1960wl c1960wl, Ak ak, Hk hk, boolean z) throws Throwable {
        if (z) {
            return new C1494dl();
        }
        C1888tl c1888tl = this.f14702c;
        this.f14701b.getClass();
        return c1888tl.a(activity, hk, c1960wl, ak, new C2008yl(c1960wl, C1764oh.a()), this.f14700a);
    }

    C1519el(C1864sl c1864sl, C2008yl.a aVar, C1888tl c1888tl) {
        this.f14700a = c1864sl;
        this.f14701b = aVar;
        this.f14702c = c1888tl;
    }
}
