package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ob.C1859sg;
import com.yandex.metrica.impl.ob.D3;
import java.io.File;
/* loaded from: classes5.dex */
public class U3 extends L3 implements InterfaceC1613ig, InterfaceC1589hg {
    private final C1859sg A;
    private final C1883tg B;
    private final C1845s2 C;
    private final InterfaceC1505e7<File> D;
    private final C1501e3 E;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements InterfaceC1719mm<File> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
        public void b(File file) {
            U3.a(U3.this, file);
        }
    }

    /* loaded from: classes5.dex */
    public class b implements C1859sg.a {
        public b() {
        }

        @Override // com.yandex.metrica.impl.ob.C1859sg.a
        public void a(C1489dg c1489dg) {
            if (c1489dg == null) {
                return;
            }
            U3.this.a(new C1448c0().a(c1489dg.a()).a(EnumC1399a1.EVENT_TYPE_SEND_REFERRER.b()));
        }
    }

    public U3(Context context, C1790pi c1790pi, I3 i3, D3.a aVar, C1859sg c1859sg, C1845s2 c1845s2, AbstractC1933vi abstractC1933vi) {
        this(context, i3, c1790pi, aVar, new B3(), new C1965x2(), new B0(), new V3(context, i3, aVar, abstractC1933vi, c1790pi, new T3(c1845s2), F0.g().q().d(), A2.b(context, i3.b()), F0.g().q(), F0.g().h()), c1859sg, c1845s2);
    }

    private void a(Context context, B0 b0) {
        File a2 = b0.a(context, "YandexMetricaNativeCrashes");
        if (a2 != null) {
            new Y6(a2, new a()).a();
        }
    }

    @Override // com.yandex.metrica.impl.ob.L3
    public void G() {
        this.A.a(this.B);
    }

    @Override // com.yandex.metrica.impl.ob.L3
    public CounterConfiguration.b s() {
        return CounterConfiguration.b.MAIN;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1589hg
    public void a() {
        x().c(true);
    }

    @Override // com.yandex.metrica.impl.ob.L3, com.yandex.metrica.impl.ob.S3
    public synchronized void a(D3.a aVar) {
        super.a(aVar);
        this.C.a(aVar.l);
    }

    @Override // com.yandex.metrica.impl.ob.L3, com.yandex.metrica.impl.ob.InterfaceC1665ki
    public void a(C1790pi c1790pi) {
        super.a(c1790pi);
        this.E.a(c1790pi);
    }

    static void a(U3 u3, File file) {
        u3.D.a(file);
    }

    U3(Context context, I3 i3, C1790pi c1790pi, D3.a aVar, B3 b3, C1965x2 c1965x2, B0 b0, V3 v3, C1859sg c1859sg, C1845s2 c1845s2) {
        super(context, i3, b3, c1965x2, v3);
        this.A = c1859sg;
        I4 k = k();
        k.a(EnumC1399a1.EVENT_TYPE_REGULAR, new C5(k.b()));
        this.B = v3.c(this);
        this.C = c1845s2;
        C1729n7 a2 = v3.a(v3.f(), v3.b(this), f());
        this.D = a2;
        a2.a();
        a(context, b0);
        C1501e3 a3 = v3.a(this);
        this.E = a3;
        a3.a(c1790pi, aVar.q);
    }
}
