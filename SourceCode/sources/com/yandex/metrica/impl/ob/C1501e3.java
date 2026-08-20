package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.impl.ob.C1938w;
import java.util.concurrent.Executor;
/* renamed from: com.yandex.metrica.impl.ob.e3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1501e3 {

    /* renamed from: a  reason: collision with root package name */
    private InterfaceC1646k f14633a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f14634b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f14635c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f14636d;

    /* renamed from: e  reason: collision with root package name */
    private final com.yandex.metrica.billing_interface.b f14637e;

    /* renamed from: f  reason: collision with root package name */
    private final InterfaceC1721n f14638f;

    /* renamed from: g  reason: collision with root package name */
    private final InterfaceC1696m f14639g;

    /* renamed from: h  reason: collision with root package name */
    private final C1938w f14640h;
    private final C1476d3 i;

    /* renamed from: com.yandex.metrica.impl.ob.e3$a */
    /* loaded from: classes5.dex */
    class a implements C1938w.b {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.C1938w.b
        public void a(C1938w.a aVar) {
            C1501e3.a(C1501e3.this, aVar);
        }
    }

    public C1501e3(Context context, Executor executor, Executor executor2, com.yandex.metrica.billing_interface.b bVar, InterfaceC1721n interfaceC1721n, InterfaceC1696m interfaceC1696m, C1938w c1938w, C1476d3 c1476d3) {
        this.f14634b = context;
        this.f14635c = executor;
        this.f14636d = executor2;
        this.f14637e = bVar;
        this.f14638f = interfaceC1721n;
        this.f14639g = interfaceC1696m;
        this.f14640h = c1938w;
        this.i = c1476d3;
    }

    static void a(C1501e3 c1501e3, C1938w.a aVar) {
        c1501e3.getClass();
        if (aVar == C1938w.a.VISIBLE) {
            try {
                InterfaceC1646k interfaceC1646k = c1501e3.f14633a;
                if (interfaceC1646k != null) {
                    interfaceC1646k.b();
                }
            } catch (Throwable unused) {
            }
        }
    }

    public void a(C1790pi c1790pi, Boolean bool) {
        InterfaceC1646k a2;
        Boolean bool2 = Boolean.TRUE;
        if (bool == null) {
            bool = bool2;
        }
        if (bool.booleanValue()) {
            synchronized (this) {
                a2 = this.i.a(this.f14634b, this.f14635c, this.f14636d, this.f14637e, this.f14638f, this.f14639g);
                this.f14633a = a2;
            }
            a2.a(c1790pi.c());
            if (this.f14640h.a(new a()) == C1938w.a.VISIBLE) {
                try {
                    InterfaceC1646k interfaceC1646k = this.f14633a;
                    if (interfaceC1646k != null) {
                        interfaceC1646k.b();
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public synchronized void a(C1790pi c1790pi) {
        InterfaceC1646k interfaceC1646k;
        synchronized (this) {
            interfaceC1646k = this.f14633a;
        }
        if (interfaceC1646k != null) {
            interfaceC1646k.a(c1790pi.c());
        }
    }
}
