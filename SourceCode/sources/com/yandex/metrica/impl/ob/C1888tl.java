package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.view.ViewGroup;
import java.util.Arrays;
import java.util.Collections;
/* renamed from: com.yandex.metrica.impl.ob.tl  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1888tl {

    /* renamed from: a  reason: collision with root package name */
    private final b f15782a;

    /* renamed from: b  reason: collision with root package name */
    private final a f15783b;

    /* renamed from: com.yandex.metrica.impl.ob.tl$a */
    /* loaded from: classes5.dex */
    static class a {
        a() {
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.tl$b */
    /* loaded from: classes5.dex */
    static class b {
        b() {
        }
    }

    public C1888tl() {
        this(new b(), new a());
    }

    public C1494dl a(Activity activity, Hk hk, C1960wl c1960wl, Ak ak, C2008yl c2008yl, C1864sl c1864sl) {
        ViewGroup viewGroup;
        C1494dl c1494dl = new C1494dl();
        try {
            viewGroup = (ViewGroup) activity.findViewById(16908290);
        } catch (Throwable th) {
            c2008yl.a("ui_parsing_root", th);
            viewGroup = null;
        }
        if (viewGroup != null) {
            this.f15782a.getClass();
            Rk rk = new Rk(c1960wl, new Fl(c2008yl), new C1863sk(c1960wl.f16000c), ak, Collections.singletonList(new Mk()), Arrays.asList(new C1419al(c1960wl.f15999b)), c2008yl, c1864sl, new Hl());
            c1494dl.a(rk, viewGroup, hk);
            if (c1960wl.f16002e) {
                this.f15783b.getClass();
                C1839rk c1839rk = new C1839rk(rk.a());
                for (C1444bl c1444bl : rk.b()) {
                    c1839rk.a(c1444bl);
                }
            }
        }
        return c1494dl;
    }

    C1888tl(b bVar, a aVar) {
        this.f15782a = bVar;
        this.f15783b = aVar;
    }
}
