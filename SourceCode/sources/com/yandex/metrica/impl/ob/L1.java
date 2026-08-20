package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C1922v7;
import com.yandex.metrica.impl.ob.D3;
import com.yandex.metrica.impl.ob.J;
import com.yandex.metrica.impl.ob.Mg;
import java.io.File;
import java.util.HashMap;
import java.util.List;
/* loaded from: classes5.dex */
public class L1 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f13387a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f13388b;

    /* renamed from: c  reason: collision with root package name */
    private final C1626j4 f13389c;

    /* renamed from: d  reason: collision with root package name */
    private final B0 f13390d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements InterfaceC1719mm<Z6> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
        public void b(Z6 z6) {
            Z6 z62 = z6;
            L1 l1 = L1.this;
            C1602i4 c1602i4 = new C1602i4(z62.a(), z62.f(), z62.g(), z62.h(), z62.i());
            String e2 = z62.e();
            byte[] c2 = z62.c();
            int b2 = z62.b();
            HashMap<J.a, Integer> j = z62.j();
            String d2 = z62.d();
            C1470cm b3 = Ul.b(z62.a());
            List<Integer> list = C2011z0.i;
            J a2 = new J(c2, e2, EnumC1399a1.EVENT_TYPE_EXCEPTION_UNHANDLED_FROM_FILE.b(), b3).a(j);
            a2.f14514h = b2;
            l1.a(c1602i4, a2.c(d2), new D3(new Mg.b(null, null, null, null, null, null, false, null), new D3.a(), null));
        }
    }

    /* loaded from: classes5.dex */
    protected class b implements InterfaceC1719mm<String> {

        /* renamed from: a  reason: collision with root package name */
        private final C1602i4 f13392a;

        /* renamed from: b  reason: collision with root package name */
        private final InterfaceC1744nm<String, C1448c0> f13393b;

        public b(C1602i4 c1602i4, InterfaceC1744nm<String, C1448c0> interfaceC1744nm) {
            this.f13392a = c1602i4;
            this.f13393b = interfaceC1744nm;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1719mm
        public void b(String str) {
            L1.this.a(this.f13392a, this.f13393b.a(str), new D3(new Mg.b(null, null, null, null, null, null, false, null), new D3.a(), null));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public L1(Context context, C1626j4 c1626j4, ICommonExecutor iCommonExecutor, B0 b0) {
        this.f13387a = context;
        this.f13388b = iCommonExecutor;
        this.f13389c = c1626j4;
        this.f13390d = b0;
    }

    public void a(File file) {
        C1405a7 c1405a7 = new C1405a7();
        this.f13388b.execute(new RunnableC1873t6(file, c1405a7, c1405a7, new a()));
    }

    public void a(C1602i4 c1602i4, C1448c0 c1448c0, D3 d3) {
        this.f13389c.a(c1602i4, d3).a(c1448c0, d3);
        this.f13389c.a(c1602i4.b(), c1602i4.c().intValue(), c1602i4.d());
    }

    public void a(C1826r7 c1826r7, InterfaceC1744nm<String, C1448c0> interfaceC1744nm) {
        ICommonExecutor iCommonExecutor = this.f13388b;
        B0 b0 = this.f13390d;
        String str = c1826r7.f15621a.f15813b;
        b0.getClass();
        iCommonExecutor.execute(new RunnableC1873t6(new File(str), new C1605i7(new C1455c7(EnumC1555g7.CRASHPAD, c1826r7.f15623c.f12974b), new C1580h7(new P6())), new C1922v7.c(c1826r7.f15621a.f15812a), new b(c1826r7.f15622b, interfaceC1744nm)));
    }

    public void a(C1448c0 c1448c0, Bundle bundle) {
        if (EnumC1399a1.EVENT_TYPE_UNDEFINED.b() == c1448c0.f14511e) {
            return;
        }
        this.f13388b.execute(new N1(this.f13387a, c1448c0, bundle, this.f13389c));
    }
}
