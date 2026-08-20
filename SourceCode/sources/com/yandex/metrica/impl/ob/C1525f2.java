package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.content.Context;
import com.yandex.metrica.impl.ob.C1771p;
import java.lang.ref.WeakReference;
/* renamed from: com.yandex.metrica.impl.ob.f2  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1525f2 implements C1771p.b {

    /* renamed from: g  reason: collision with root package name */
    private static volatile C1525f2 f14714g;

    /* renamed from: a  reason: collision with root package name */
    private final Context f14715a;

    /* renamed from: b  reason: collision with root package name */
    private C1450c2 f14716b;

    /* renamed from: c  reason: collision with root package name */
    private WeakReference<Activity> f14717c = new WeakReference<>(null);

    /* renamed from: d  reason: collision with root package name */
    private final C1432b9 f14718d;

    /* renamed from: e  reason: collision with root package name */
    private final C1475d2 f14719e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f14720f;

    C1525f2(Context context, C1432b9 c1432b9, C1475d2 c1475d2) {
        this.f14715a = context;
        this.f14718d = c1432b9;
        this.f14719e = c1475d2;
        this.f14716b = c1432b9.s();
        this.f14720f = c1432b9.x();
        P.g().a().a(this);
    }

    public static C1525f2 a(Context context) {
        if (f14714g == null) {
            synchronized (C1525f2.class) {
                if (f14714g == null) {
                    f14714g = new C1525f2(context, new C1432b9(C1632ja.a(context).c()), new C1475d2());
                }
            }
        }
        return f14714g;
    }

    private void b(Context context) {
        C1450c2 a2;
        if (context == null || (a2 = this.f14719e.a(context)) == null || a2.equals(this.f14716b)) {
            return;
        }
        this.f14716b = a2;
        this.f14718d.a(a2);
    }

    public synchronized C1450c2 a() {
        b(this.f14717c.get());
        if (this.f14716b == null) {
            if (A2.a(30)) {
                if (!this.f14720f) {
                    b(this.f14715a);
                    this.f14720f = true;
                    this.f14718d.z();
                }
            } else {
                b(this.f14715a);
            }
        }
        return this.f14716b;
    }

    @Override // com.yandex.metrica.impl.ob.C1771p.b
    public synchronized void a(Activity activity) {
        this.f14717c = new WeakReference<>(activity);
        if (this.f14716b == null) {
            b(activity);
        }
    }
}
