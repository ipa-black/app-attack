package com.apm.insight.b;

import android.content.Context;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private static volatile g f727a;

    /* renamed from: c  reason: collision with root package name */
    private static h f728c;

    /* renamed from: b  reason: collision with root package name */
    private final b f729b;

    private g(Context context) {
        this.f729b = new b(context);
        h hVar = new h(0);
        f728c = hVar;
        hVar.b();
    }

    public static g a(Context context) {
        if (f727a == null) {
            synchronized (g.class) {
                if (f727a == null) {
                    f727a = new g(context);
                }
            }
        }
        return f727a;
    }

    public static h b() {
        return f728c;
    }

    public b a() {
        return this.f729b;
    }

    public void c() {
        this.f729b.a();
    }

    public void d() {
        this.f729b.b();
    }
}
