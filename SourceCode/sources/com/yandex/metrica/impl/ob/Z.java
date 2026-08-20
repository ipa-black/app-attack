package com.yandex.metrica.impl.ob;

import android.content.ContentValues;
import android.content.Context;
/* loaded from: classes5.dex */
public final class Z<T> {

    /* renamed from: a  reason: collision with root package name */
    private final W<T> f14322a;

    /* renamed from: b  reason: collision with root package name */
    private final X<T> f14323b;

    /* renamed from: c  reason: collision with root package name */
    private final E0 f14324c;

    /* renamed from: d  reason: collision with root package name */
    private final String f14325d;

    public Z(W<T> w, X<T> x, E0 e0, String str) {
        this.f14322a = w;
        this.f14323b = x;
        this.f14324c = e0;
        this.f14325d = str;
    }

    public final void a(Context context, ContentValues contentValues) {
        try {
            T invoke = this.f14322a.invoke(contentValues);
            if (invoke != null) {
                this.f14324c.a(context);
                if (this.f14323b.invoke(invoke).booleanValue()) {
                    C1575h2.a("Successfully saved " + this.f14325d, new Object[0]);
                } else {
                    C1575h2.b("Did not save " + this.f14325d + " because data is already present", new Object[0]);
                }
            }
        } catch (Throwable th) {
            C1575h2.a(th, "Unexpected error occurred", new Object[0]);
        }
    }
}
