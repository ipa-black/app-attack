package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.yandex.metrica.impl.ob.D3;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class F3 implements P3, InterfaceC1665ki, R3 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f12922a;

    /* renamed from: b  reason: collision with root package name */
    private final I3 f12923b;

    /* renamed from: c  reason: collision with root package name */
    private final C1516ei f12924c;

    /* renamed from: d  reason: collision with root package name */
    private final C1837ri f12925d;

    /* renamed from: e  reason: collision with root package name */
    private final C1452c4 f12926e;

    /* renamed from: f  reason: collision with root package name */
    private final C1974xb f12927f;

    /* renamed from: g  reason: collision with root package name */
    private final N4<M4, F3> f12928g;

    /* renamed from: h  reason: collision with root package name */
    private final C1941w2<F3> f12929h;
    private final J3<C1726n4> j;
    private Jf k;
    private final M l;
    private final C1907ug m;
    private List<V0> i = new ArrayList();
    private final Object n = new Object();

    /* loaded from: classes5.dex */
    class a implements InterfaceC1464cg {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ResultReceiver f12930a;

        a(F3 f3, ResultReceiver resultReceiver) {
            this.f12930a = resultReceiver;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1464cg
        public void a(C1489dg c1489dg) {
            ResultReceiver resultReceiver = this.f12930a;
            int i = ResultReceiverC1514eg.f14684b;
            if (resultReceiver != null) {
                Bundle bundle = new Bundle();
                bundle.putByteArray("referrer", c1489dg == null ? null : c1489dg.a());
                resultReceiver.send(1, bundle);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public F3(Context context, C1516ei c1516ei, I3 i3, D3 d3, C1452c4 c1452c4, C1859sg c1859sg, J3<C1726n4> j3, H3 h3, N n, C1974xb c1974xb, C1907ug c1907ug) {
        Context applicationContext = context.getApplicationContext();
        this.f12922a = applicationContext;
        this.f12923b = i3;
        this.f12924c = c1516ei;
        this.f12926e = c1452c4;
        this.j = j3;
        this.f12928g = h3.a(this);
        C1837ri a2 = c1516ei.a(applicationContext, i3, d3.f12780a);
        this.f12925d = a2;
        this.f12927f = c1974xb;
        c1974xb.a(applicationContext, a2.d());
        this.l = n.a(a2, c1974xb, applicationContext);
        this.f12929h = h3.a(this, a2);
        this.m = c1907ug;
        c1516ei.a(i3, this);
    }

    public void a(D3.a aVar) {
        this.f12926e.a(aVar);
    }

    public synchronized void b(C1726n4 c1726n4) {
        this.j.b(c1726n4);
    }

    public synchronized void a(C1726n4 c1726n4) {
        this.j.a(c1726n4);
        c1726n4.a(this.l.a(Tl.a(this.f12925d.d().v())));
    }

    public Context b() {
        return this.f12922a;
    }

    public void a(C1448c0 c1448c0, C1726n4 c1726n4) {
        this.f12928g.a(c1448c0, c1726n4);
    }

    public D3.a a() {
        return this.f12926e.a();
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1665ki
    public void a(C1790pi c1790pi) {
        this.f12927f.a(c1790pi);
        synchronized (this.n) {
            for (C1726n4 c1726n4 : this.j.a()) {
                c1726n4.a(this.l.a(Tl.a(c1790pi.v())));
            }
            ArrayList arrayList = new ArrayList();
            for (V0 v0 : this.i) {
                if (v0.a(c1790pi)) {
                    a(v0.c(), v0.a());
                } else {
                    arrayList.add(v0);
                }
            }
            this.i = new ArrayList(arrayList);
            if (!arrayList.isEmpty()) {
                this.f12929h.d();
            }
        }
        if (this.k == null) {
            this.k = F0.g().l();
        }
        this.k.a(c1790pi);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1665ki
    public void a(EnumC1566gi enumC1566gi, C1790pi c1790pi) {
        synchronized (this.n) {
            for (V0 v0 : this.i) {
                ResultReceiver c2 = v0.c();
                L a2 = this.l.a(v0.a());
                int i = ResultReceiverC1523f0.f14707b;
                if (c2 != null) {
                    Bundle bundle = new Bundle();
                    enumC1566gi.a(bundle);
                    a2.c(bundle);
                    c2.send(2, bundle);
                }
            }
            this.i.clear();
        }
    }

    public void a(V0 v0) {
        ResultReceiver resultReceiver;
        Map<String, String> map;
        List<String> list;
        HashMap hashMap = new HashMap();
        if (v0 != null) {
            list = v0.b();
            resultReceiver = v0.c();
            map = v0.a();
        } else {
            resultReceiver = null;
            map = hashMap;
            list = null;
        }
        boolean a2 = this.f12925d.a(list, map);
        if (!a2) {
            a(resultReceiver, map);
        }
        if (!this.f12925d.e()) {
            if (a2) {
                a(resultReceiver, map);
                return;
            }
            return;
        }
        synchronized (this.n) {
            if (a2 && v0 != null) {
                this.i.add(v0);
            }
        }
        this.f12929h.d();
    }

    public void a(ResultReceiver resultReceiver) {
        this.m.a(new a(this, resultReceiver));
    }

    @Override // com.yandex.metrica.impl.ob.R3
    public void a(D3 d3) {
        this.f12925d.a(d3.f12780a);
        this.f12926e.a(d3.f12781b);
    }

    private void a(ResultReceiver resultReceiver, Map<String, String> map) {
        L a2 = this.l.a(map);
        int i = ResultReceiverC1523f0.f14707b;
        if (resultReceiver != null) {
            Bundle bundle = new Bundle();
            a2.c(bundle);
            resultReceiver.send(1, bundle);
        }
    }
}
