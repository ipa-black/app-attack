package com.yandex.metrica.impl.ob;

import android.content.Context;
/* loaded from: classes5.dex */
public class Q2 {

    /* renamed from: a  reason: collision with root package name */
    private final C1595hm f13742a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f13743b;

    /* renamed from: c  reason: collision with root package name */
    private S0 f13744c;

    /* renamed from: d  reason: collision with root package name */
    private T0 f13745d;

    public Q2() {
        this(new C1595hm());
    }

    public synchronized S0 a(Context context, Im im) {
        if (this.f13744c == null) {
            if (a(context)) {
                this.f13744c = new C1741nj(im.b(), im.b().getHandler(), im.a(), new Q());
            } else {
                this.f13744c = new P2(context, im);
            }
        }
        return this.f13744c;
    }

    Q2(C1595hm c1595hm) {
        this.f13742a = c1595hm;
    }

    public synchronized T0 a(Context context, S0 s0) {
        if (this.f13745d == null) {
            if (a(context)) {
                this.f13745d = new C1766oj();
            } else {
                this.f13745d = new T2(context, s0);
            }
        }
        return this.f13745d;
    }

    private synchronized boolean a(Context context) {
        if (this.f13743b == null) {
            this.f13743b = Boolean.valueOf(!this.f13742a.a(context));
        }
        return this.f13743b.booleanValue();
    }
}
