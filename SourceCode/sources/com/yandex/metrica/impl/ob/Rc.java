package com.yandex.metrica.impl.ob;

import android.location.Location;
import android.text.TextUtils;
import com.yandex.metrica.coreutils.services.SystemTimeProvider;
import com.yandex.metrica.impl.ob.C1759oc;
/* loaded from: classes5.dex */
class Rc extends V<Location> {

    /* renamed from: b  reason: collision with root package name */
    private U7 f13796b;

    /* renamed from: c  reason: collision with root package name */
    private Vb f13797c;

    /* renamed from: d  reason: collision with root package name */
    private SystemTimeProvider f13798d;

    /* renamed from: e  reason: collision with root package name */
    private final E f13799e;

    /* renamed from: f  reason: collision with root package name */
    private final C1938w f13800f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Rc(V<Location> v, U7 u7, Vb vb, SystemTimeProvider systemTimeProvider, E e2, C1938w c1938w) {
        super(v);
        this.f13796b = u7;
        this.f13797c = vb;
        this.f13798d = systemTimeProvider;
        this.f13799e = e2;
        this.f13800f = c1938w;
    }

    @Override // com.yandex.metrica.impl.ob.V
    public void b(Location location) {
        Location location2 = location;
        if (location2 != null) {
            Hc hc = new Hc(C1759oc.a.a(this.f13800f.c()), this.f13798d.currentTimeMillis(), this.f13798d.elapsedRealtime(), location2, this.f13799e.b(), null);
            String a2 = this.f13797c.a(hc);
            if (TextUtils.isEmpty(a2)) {
                return;
            }
            this.f13796b.a(hc.e(), a2);
        }
    }
}
