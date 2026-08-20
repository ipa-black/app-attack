package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.Bk;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes5.dex */
class Bl {

    /* renamed from: a  reason: collision with root package name */
    private Runnable f12710a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f12711b;

    /* renamed from: c  reason: collision with root package name */
    private final C1692lk f12712c;

    /* renamed from: d  reason: collision with root package name */
    private final C1519el f12713d;

    /* renamed from: e  reason: collision with root package name */
    private final C2031zk f12714e;

    /* renamed from: f  reason: collision with root package name */
    private final a f12715f;

    /* renamed from: g  reason: collision with root package name */
    private final List<InterfaceC1984xl> f12716g;

    /* renamed from: h  reason: collision with root package name */
    private final List<Vk> f12717h;
    private final Bk.a i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static class a {
        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bl(ICommonExecutor iCommonExecutor, C1692lk c1692lk, C2031zk c2031zk) {
        this(iCommonExecutor, c1692lk, c2031zk, new C1519el(), new a(), Collections.emptyList(), new Bk.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Bl bl, List list, Throwable th, C1960wl c1960wl) {
        bl.getClass();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((InterfaceC1936vl) it.next()).a(th, c1960wl);
        }
        for (InterfaceC1984xl interfaceC1984xl : bl.f12716g) {
            interfaceC1984xl.a(th, c1960wl);
        }
    }

    Bl(ICommonExecutor iCommonExecutor, C1692lk c1692lk, C2031zk c2031zk, C1519el c1519el, a aVar, List<Vk> list, Bk.a aVar2) {
        this.f12716g = new ArrayList();
        this.f12711b = iCommonExecutor;
        this.f12712c = c1692lk;
        this.f12714e = c2031zk;
        this.f12713d = c1519el;
        this.f12715f = aVar;
        this.f12717h = list;
        this.i = aVar2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Bl bl, List list, C1494dl c1494dl, List list2, Activity activity, C1544fl c1544fl, Bk bk, long j) {
        bl.getClass();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((InterfaceC1936vl) it.next()).a(j, activity, c1494dl, list2, c1544fl, bk);
        }
        for (InterfaceC1984xl interfaceC1984xl : bl.f12716g) {
            interfaceC1984xl.a(j, activity, c1494dl, list2, c1544fl, bk);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(InterfaceC1984xl... interfaceC1984xlArr) {
        this.f12716g.addAll(Arrays.asList(interfaceC1984xlArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Bl bl, Activity activity, long j) {
        for (InterfaceC1984xl interfaceC1984xl : bl.f12716g) {
            interfaceC1984xl.a(activity, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Activity activity, long j, C1544fl c1544fl, C1960wl c1960wl, List<InterfaceC1936vl> list) {
        boolean z;
        Iterator<Vk> it = this.f12717h.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().a(activity, c1960wl)) {
                    z = true;
                    break;
                }
            } else {
                z = false;
                break;
            }
        }
        boolean z2 = z;
        WeakReference weakReference = new WeakReference(activity);
        Bk.a aVar = this.i;
        C2031zk c2031zk = this.f12714e;
        aVar.getClass();
        Al al = new Al(this, weakReference, list, c1544fl, c1960wl, new Bk(c2031zk, c1544fl), z2);
        Runnable runnable = this.f12710a;
        if (runnable != null) {
            this.f12711b.remove(runnable);
        }
        this.f12710a = al;
        for (InterfaceC1984xl interfaceC1984xl : this.f12716g) {
            interfaceC1984xl.a(activity, z2);
        }
        this.f12711b.executeDelayed(al, j);
    }
}
