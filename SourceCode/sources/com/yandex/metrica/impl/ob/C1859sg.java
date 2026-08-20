package com.yandex.metrica.impl.ob;

import android.content.Context;
import java.util.HashSet;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.sg  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1859sg {

    /* renamed from: a  reason: collision with root package name */
    private final Set<C1883tg> f15718a;

    /* renamed from: b  reason: collision with root package name */
    private C1489dg f15719b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f15720c;

    /* renamed from: d  reason: collision with root package name */
    private final C1406a8 f15721d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f15722e;

    /* renamed from: com.yandex.metrica.impl.ob.sg$a */
    /* loaded from: classes5.dex */
    public interface a {
        void a(C1489dg c1489dg);
    }

    public C1859sg(Context context) {
        this(context, F0.g().w().a());
    }

    public synchronized void a(C1489dg c1489dg) {
        this.f15719b = c1489dg;
        this.f15720c = true;
        this.f15721d.a(c1489dg);
        this.f15721d.a(true);
        C1489dg c1489dg2 = this.f15719b;
        synchronized (this) {
            for (C1883tg c1883tg : this.f15718a) {
                c1883tg.a(c1489dg2);
            }
        }
    }

    public void b() {
        if (this.f15720c) {
            return;
        }
        Context context = this.f15722e;
        F0 g2 = F0.g();
        Intrinsics.checkNotNullExpressionValue(g2, "GlobalServiceLocator.getInstance()");
        Pm q = g2.q();
        Intrinsics.checkNotNullExpressionValue(q, "GlobalServiceLocator.get…).serviceExecutorProvider");
        new C1713mg(this, new C1955wg(context, q.a()), new C1564gg(context), new C1979xg(context, null, null, 6)).b();
    }

    C1859sg(Context context, C1406a8 c1406a8) {
        this.f15718a = new HashSet();
        this.f15722e = context;
        this.f15721d = c1406a8;
        this.f15719b = c1406a8.g();
        this.f15720c = c1406a8.h();
    }

    public C1489dg a() {
        return this.f15719b;
    }

    public synchronized void a(C1883tg c1883tg) {
        this.f15718a.add(c1883tg);
        if (this.f15720c) {
            c1883tg.a(this.f15719b);
        }
    }
}
