package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.content.Context;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
/* renamed from: com.yandex.metrica.impl.ob.ul  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1912ul implements InterfaceC1569gl {

    /* renamed from: a  reason: collision with root package name */
    private final Xk f15880a;

    /* renamed from: b  reason: collision with root package name */
    private final Sk f15881b;

    /* renamed from: c  reason: collision with root package name */
    private final C1432b9 f15882c;

    /* renamed from: d  reason: collision with root package name */
    private final C2031zk f15883d;

    /* renamed from: e  reason: collision with root package name */
    private final Lk f15884e;

    /* renamed from: f  reason: collision with root package name */
    private Activity f15885f;

    /* renamed from: g  reason: collision with root package name */
    private C1544fl f15886g;

    /* renamed from: com.yandex.metrica.impl.ob.ul$a */
    /* loaded from: classes5.dex */
    class a implements InterfaceC1719mm<Activity> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
        public void b(Activity activity) {
            C1912ul.this.f15880a.a(activity);
        }
    }

    public C1912ul(Context context, C1432b9 c1432b9, El el, ICommonExecutor iCommonExecutor, C1544fl c1544fl) {
        this(context, c1432b9, el, iCommonExecutor, c1544fl, new C2031zk(c1544fl));
    }

    public synchronized void b(Activity activity) {
        this.f15885f = activity;
        this.f15880a.a(activity);
    }

    private C1912ul(Context context, C1432b9 c1432b9, El el, ICommonExecutor iCommonExecutor, C1544fl c1544fl, C2031zk c2031zk) {
        this(c1432b9, el, c1544fl, c2031zk, new C1667kk(1, c1432b9), new Bl(iCommonExecutor, new C1692lk(c1432b9), c2031zk), new C1593hk(context));
    }

    public synchronized void a(Activity activity) {
        this.f15884e.a(activity);
        this.f15885f = null;
    }

    private C1912ul(C1432b9 c1432b9, El el, C1544fl c1544fl, C2031zk c2031zk, C1667kk c1667kk, Bl bl, C1593hk c1593hk) {
        this(c1432b9, c1544fl, el, bl, c2031zk, new Xk(c1544fl, c1667kk, c1432b9, bl, c1593hk), new Sk(c1544fl, c1667kk, c1432b9, bl, c1593hk), new C1717mk());
    }

    C1912ul(C1432b9 c1432b9, C1544fl c1544fl, El el, Bl bl, C2031zk c2031zk, Xk xk, Sk sk, C1717mk c1717mk) {
        this.f15882c = c1432b9;
        this.f15886g = c1544fl;
        this.f15883d = c2031zk;
        this.f15880a = xk;
        this.f15881b = sk;
        Lk lk = new Lk(new a(), el);
        this.f15884e = lk;
        bl.a(c1717mk, lk);
    }

    public synchronized void a(InterfaceC1693ll interfaceC1693ll, boolean z) {
        this.f15881b.a(this.f15885f, interfaceC1693ll, z);
        this.f15882c.c(true);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1569gl
    public synchronized void a(C1544fl c1544fl) {
        if (!c1544fl.equals(this.f15886g)) {
            this.f15883d.a(c1544fl);
            this.f15881b.a(c1544fl);
            this.f15880a.a(c1544fl);
            this.f15886g = c1544fl;
            Activity activity = this.f15885f;
            if (activity != null) {
                this.f15880a.b(activity);
            }
        }
    }
}
