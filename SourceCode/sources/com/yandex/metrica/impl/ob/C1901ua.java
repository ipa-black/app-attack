package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.YandexMetricaConfig;
/* renamed from: com.yandex.metrica.impl.ob.ua  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1901ua {

    /* renamed from: com.yandex.metrica.impl.ob.ua$a */
    /* loaded from: classes5.dex */
    class a implements InterfaceC1744nm<C1829ra, C1806qa> {
        a(C1901ua c1901ua) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1744nm
        public C1806qa a(C1829ra c1829ra) {
            return c1829ra.f15625a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.ua$b */
    /* loaded from: classes5.dex */
    public class b implements InterfaceC1744nm<C1829ra, C1806qa> {
        b(C1901ua c1901ua) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1744nm
        public C1806qa a(C1829ra c1829ra) {
            return c1829ra.f15627c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.ua$c */
    /* loaded from: classes5.dex */
    public class c implements InterfaceC1949wa {
        c(C1901ua c1901ua) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1949wa
        public long a(Z8 z8) {
            return z8.c(Long.MAX_VALUE);
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1949wa
        public void a(Z8 z8, long j) {
            z8.e(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.ua$d */
    /* loaded from: classes5.dex */
    public class d implements InterfaceC1744nm<C1829ra, C1806qa> {
        d(C1901ua c1901ua) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1744nm
        public C1806qa a(C1829ra c1829ra) {
            return c1829ra.f15626b;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.ua$e */
    /* loaded from: classes5.dex */
    public class e implements InterfaceC1949wa {
        e(C1901ua c1901ua) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1949wa
        public long a(Z8 z8) {
            return z8.b(Long.MAX_VALUE);
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC1949wa
        public void a(Z8 z8, long j) {
            z8.d(j);
        }
    }

    public C1877ta<YandexMetricaConfig> a(Context context, Q0 q0) {
        Xl xl = new Xl();
        return new C1877ta<>(context, q0, "activation", new C1732na(xl, new C1997ya()), new a(this), new C1757oa(xl));
    }

    public C1877ta<C1918v3> b(Context context, Q0 q0) {
        return new C1877ta<>(context, q0, "clids_info", new C1782pa(), new d(this), new e(this));
    }

    public C1877ta<Ud> c(Context context, Q0 q0) {
        return new C1877ta<>(context, q0, "preload_info", new C1973xa(), new b(this), new c(this));
    }
}
