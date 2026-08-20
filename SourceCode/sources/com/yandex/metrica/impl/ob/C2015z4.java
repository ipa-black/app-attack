package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.impl.ob.D3;
import com.yandex.metrica.impl.ob.D4;
import com.yandex.metrica.networktasks.api.ConfigProvider;
/* renamed from: com.yandex.metrica.impl.ob.z4  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2015z4 implements P3, ConfigProvider<D4>, Q3 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f16142a;

    /* renamed from: b  reason: collision with root package name */
    private final I3 f16143b;

    /* renamed from: c  reason: collision with root package name */
    private final C1772p0 f16144c;

    /* renamed from: d  reason: collision with root package name */
    private A4 f16145d;

    /* renamed from: e  reason: collision with root package name */
    private C1527f4 f16146e;

    /* renamed from: com.yandex.metrica.impl.ob.z4$a */
    /* loaded from: classes5.dex */
    static class a {
        a() {
        }

        public A4 a(Context context, I3 i3, C1790pi c1790pi, D4.a aVar) {
            return new A4(new D4.b(context, i3.b()), c1790pi, aVar);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.z4$b */
    /* loaded from: classes5.dex */
    static class b {

        /* renamed from: a  reason: collision with root package name */
        private final C1524f1 f16147a;

        b() {
            this(F0.g().h());
        }

        public C1772p0<C2015z4> a(C2015z4 c2015z4, AbstractC1933vi abstractC1933vi, E4 e4, C1431b8 c1431b8) {
            C1772p0<C2015z4> c1772p0 = new C1772p0<>(c2015z4, abstractC1933vi.a(), e4, c1431b8);
            this.f16147a.a(c1772p0);
            return c1772p0;
        }

        b(C1524f1 c1524f1) {
            this.f16147a = c1524f1;
        }
    }

    public C2015z4(Context context, I3 i3, D3.a aVar, C1790pi c1790pi, AbstractC1933vi abstractC1933vi, CounterConfiguration.b bVar) {
        this(context, i3, aVar, c1790pi, abstractC1933vi, bVar, new E4(), new b(), new a(), new C1527f4(context, i3), F0.g().w().a(i3));
    }

    @Override // com.yandex.metrica.impl.ob.S3
    public void a(D3.a aVar) {
        this.f16145d.a((A4) aVar);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1665ki
    public void a(EnumC1566gi enumC1566gi, C1790pi c1790pi) {
    }

    public Context b() {
        return this.f16142a;
    }

    @Override // com.yandex.metrica.networktasks.api.ConfigProvider
    public Object getConfig() {
        return this.f16145d.b();
    }

    @Override // com.yandex.metrica.impl.ob.S3
    public void a(C1448c0 c1448c0) {
        this.f16144c.a(c1448c0);
    }

    public void a() {
        if (this.f16146e.a(this.f16145d.b().D())) {
            this.f16144c.a(C2011z0.a());
            this.f16146e.a();
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1665ki
    public synchronized void a(C1790pi c1790pi) {
        this.f16145d.a(c1790pi);
        this.f16146e.a(c1790pi.P());
    }

    public C2015z4(Context context, I3 i3, D3.a aVar, C1790pi c1790pi, AbstractC1933vi abstractC1933vi, CounterConfiguration.b bVar, E4 e4, b bVar2, a aVar2, C1527f4 c1527f4, C1431b8 c1431b8) {
        this.f16142a = context;
        this.f16143b = i3;
        this.f16146e = c1527f4;
        this.f16144c = bVar2.a(this, abstractC1933vi, e4, c1431b8);
        synchronized (this) {
            this.f16146e.a(c1790pi.P());
            this.f16145d = aVar2.a(context, i3, c1790pi, new D4.a(aVar));
        }
    }
}
