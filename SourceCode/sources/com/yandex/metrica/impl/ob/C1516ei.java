package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.Mg;
import java.util.HashMap;
/* renamed from: com.yandex.metrica.impl.ob.ei  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1516ei {

    /* renamed from: a  reason: collision with root package name */
    private final C1841rm<String, InterfaceC1665ki> f14691a = new C1841rm<>();

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, C1837ri> f14692b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private C1790pi f14693c = null;

    /* renamed from: d  reason: collision with root package name */
    private final InterfaceC1765oi f14694d = new a();

    /* renamed from: com.yandex.metrica.impl.ob.ei$a */
    /* loaded from: classes5.dex */
    class a implements InterfaceC1765oi {
        a() {
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.ei$b */
    /* loaded from: classes5.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        static final C1516ei f14696a = new C1516ei();
    }

    public static final C1516ei a() {
        return b.f14696a;
    }

    public C1837ri a(Context context, I3 i3, Mg.b bVar) {
        C1837ri c1837ri = this.f14692b.get(i3.b());
        boolean z = true;
        if (c1837ri == null) {
            synchronized (this.f14692b) {
                c1837ri = this.f14692b.get(i3.b());
                if (c1837ri == null) {
                    c1837ri = new C1837ri(context, i3.b(), bVar, this.f14694d);
                    this.f14692b.put(i3.b(), c1837ri);
                    z = false;
                }
            }
        }
        if (z) {
            c1837ri.a(bVar);
        }
        return c1837ri;
    }

    public void a(I3 i3, InterfaceC1665ki interfaceC1665ki) {
        synchronized (this.f14692b) {
            this.f14691a.a(i3.b(), interfaceC1665ki);
            C1790pi c1790pi = this.f14693c;
            if (c1790pi != null) {
                interfaceC1665ki.a(c1790pi);
            }
        }
    }
}
