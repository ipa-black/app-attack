package com.yandex.metrica.impl.ob;

import android.content.Context;
/* loaded from: classes5.dex */
public class M5 {

    /* renamed from: a  reason: collision with root package name */
    private final int f13469a;

    /* renamed from: b  reason: collision with root package name */
    private final Q5 f13470b;

    /* renamed from: c  reason: collision with root package name */
    private N5 f13471c;

    public M5(Context context, I3 i3, int i) {
        this(new Q5(context, i3), i);
    }

    private void b() {
        this.f13470b.a(this.f13471c);
    }

    public D0 a(String str) {
        if (this.f13471c == null) {
            N5 a2 = this.f13470b.a();
            this.f13471c = a2;
            int d2 = a2.d();
            int i = this.f13469a;
            if (d2 != i) {
                this.f13471c.b(i);
                b();
            }
        }
        int hashCode = str.hashCode();
        if (this.f13471c.b().contains(Integer.valueOf(hashCode))) {
            return D0.NON_FIRST_OCCURENCE;
        }
        D0 d0 = this.f13471c.e() ? D0.FIRST_OCCURRENCE : D0.UNKNOWN;
        if (this.f13471c.c() < 1000) {
            this.f13471c.a(hashCode);
        } else {
            this.f13471c.a(false);
        }
        b();
        return d0;
    }

    M5(Q5 q5, int i) {
        this.f13469a = i;
        this.f13470b = q5;
    }

    public void a() {
        if (this.f13471c == null) {
            N5 a2 = this.f13470b.a();
            this.f13471c = a2;
            int d2 = a2.d();
            int i = this.f13469a;
            if (d2 != i) {
                this.f13471c.b(i);
                b();
            }
        }
        this.f13471c.a();
        this.f13471c.a(true);
        b();
    }
}
