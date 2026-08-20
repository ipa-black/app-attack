package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.impl.ob.Jf;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
/* renamed from: com.yandex.metrica.impl.ob.fa  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public interface InterfaceC1533fa<T> {

    /* renamed from: com.yandex.metrica.impl.ob.fa$b */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final HashMap<Class<?>, InterfaceC1533fa<?>> f14736a;

        /* renamed from: b  reason: collision with root package name */
        private final InterfaceC1533fa<C1814qi> f14737b;

        /* renamed from: c  reason: collision with root package name */
        private final InterfaceC1533fa<Jf.e> f14738c;

        /* renamed from: d  reason: collision with root package name */
        private final InterfaceC1533fa<List<Bd>> f14739d;

        /* renamed from: e  reason: collision with root package name */
        private final InterfaceC1533fa<C1880td> f14740e;

        /* renamed from: f  reason: collision with root package name */
        private final InterfaceC1533fa<C1515eh> f14741f;
        @Deprecated

        /* renamed from: g  reason: collision with root package name */
        private final InterfaceC1533fa<C1512ee> f14742g;
        @Deprecated

        /* renamed from: h  reason: collision with root package name */
        private final InterfaceC1533fa<Z1> f14743h;
        private final InterfaceC1533fa<Ud> i;
        private final InterfaceC1533fa<X2> j;
        private final InterfaceC1533fa<C1918v3> k;

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$a */
        /* loaded from: classes5.dex */
        class a extends AbstractC1558ga<C1918v3> {
            a(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected ProtobufStateStorage<C1918v3> a(Context context, R7 r7) {
                return new C1681l9("clids_info", r7, new C1508ea(new C1937vm(context)).c(), new C1972x9());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 c(Context context) {
                return C1632ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 d(Context context) {
                return C1632ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$b  reason: collision with other inner class name */
        /* loaded from: classes5.dex */
        class C0353b extends AbstractC1558ga<C1814qi> {
            C0353b(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected ProtobufStateStorage<C1814qi> a(Context context, R7 r7) {
                return new C1681l9("startup_state", r7, new C1508ea(new C1937vm(context)).i(), new X9());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 c(Context context) {
                return C1632ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 d(Context context) {
                return C1632ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$c */
        /* loaded from: classes5.dex */
        class c extends AbstractC1558ga<Jf.e> {
            c(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected ProtobufStateStorage<Jf.e> a(Context context, R7 r7) {
                return new C1681l9("provided_request_state", r7, new C1508ea(new C1937vm(context)).g(), new R9());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 c(Context context) {
                return C1632ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 d(Context context) {
                return C1632ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$d */
        /* loaded from: classes5.dex */
        class d extends AbstractC1558ga<List<Bd>> {
            d(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected ProtobufStateStorage<List<Bd>> a(Context context, R7 r7) {
                return new C1681l9("permission_list", r7, new C1508ea(new C1937vm(context)).d(), new P9());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 c(Context context) {
                return C1632ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 d(Context context) {
                return C1632ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$e */
        /* loaded from: classes5.dex */
        class e extends AbstractC1558ga<C1880td> {
            e(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected ProtobufStateStorage<C1880td> a(Context context, R7 r7) {
                return new C1681l9("app_permissions_state", r7, new C1508ea(new C1937vm(context)).a(), new C1828r9());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 c(Context context) {
                return C1632ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 d(Context context) {
                return C1632ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$f */
        /* loaded from: classes5.dex */
        class f extends AbstractC1558ga<C1515eh> {
            f(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected ProtobufStateStorage<C1515eh> a(Context context, R7 r7) {
                return new C1681l9("sdk_fingerprinting", r7, new C1508ea(new C1937vm(context)).h(), new V9());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 c(Context context) {
                return C1632ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 d(Context context) {
                return C1632ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$g */
        /* loaded from: classes5.dex */
        class g extends AbstractC1558ga<C1512ee> {
            g(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected ProtobufStateStorage<C1512ee> a(Context context, R7 r7) {
                return new C1681l9("preload_info", r7, new C1508ea(new C1937vm(context)).f(), new C1537fe());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 c(Context context) {
                return C1632ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 d(Context context) {
                return C1632ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$h */
        /* loaded from: classes5.dex */
        class h extends AbstractC1558ga<Z1> {
            h(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected ProtobufStateStorage<Z1> a(Context context, R7 r7) {
                return new C1681l9("satellite_clids_info", r7, new C1731n9(), new T9());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 c(Context context) {
                return C1632ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 d(Context context) {
                return C1632ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$i */
        /* loaded from: classes5.dex */
        class i extends AbstractC1558ga<Ud> {
            i(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected ProtobufStateStorage<Ud> a(Context context, R7 r7) {
                return new C1681l9("preload_info_data", r7, new C1508ea(new C1937vm(context)).e(), new Wd());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 c(Context context) {
                return C1632ja.a(context).n();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 d(Context context) {
                return C1632ja.a(context).o();
            }
        }

        /* renamed from: com.yandex.metrica.impl.ob.fa$b$j */
        /* loaded from: classes5.dex */
        class j extends AbstractC1558ga<X2> {
            j(b bVar) {
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected ProtobufStateStorage<X2> a(Context context, R7 r7) {
                return new C1681l9("auto_inapp_collecting_info_data", r7, new C1508ea(new C1937vm(context)).b(), new Y2());
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 c(Context context) {
                return C1632ja.a(context).a();
            }

            @Override // com.yandex.metrica.impl.ob.AbstractC1558ga
            protected R7 d(Context context) {
                return C1632ja.a(context).b();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.yandex.metrica.impl.ob.fa$b$k */
        /* loaded from: classes5.dex */
        public static final class k {

            /* renamed from: a  reason: collision with root package name */
            static final b f14744a = new b();
        }

        public static <T> InterfaceC1533fa<T> a(Class<T> cls) {
            return (InterfaceC1533fa<T>) k.f14744a.f14736a.get(cls);
        }

        public static <T> InterfaceC1533fa<Collection<T>> b(Class<T> cls) {
            return (InterfaceC1533fa<Collection<T>>) k.f14744a.f14736a.get(cls);
        }

        private b() {
            HashMap<Class<?>, InterfaceC1533fa<?>> hashMap = new HashMap<>();
            this.f14736a = hashMap;
            C0353b c0353b = new C0353b(this);
            this.f14737b = c0353b;
            c cVar = new c(this);
            this.f14738c = cVar;
            d dVar = new d(this);
            this.f14739d = dVar;
            e eVar = new e(this);
            this.f14740e = eVar;
            f fVar = new f(this);
            this.f14741f = fVar;
            g gVar = new g(this);
            this.f14742g = gVar;
            h hVar = new h(this);
            this.f14743h = hVar;
            i iVar = new i(this);
            this.i = iVar;
            j jVar = new j(this);
            this.j = jVar;
            a aVar = new a(this);
            this.k = aVar;
            hashMap.put(C1814qi.class, c0353b);
            hashMap.put(Jf.e.class, cVar);
            hashMap.put(Bd.class, dVar);
            hashMap.put(C1880td.class, eVar);
            hashMap.put(C1515eh.class, fVar);
            hashMap.put(C1512ee.class, gVar);
            hashMap.put(Z1.class, hVar);
            hashMap.put(Ud.class, iVar);
            hashMap.put(X2.class, jVar);
            hashMap.put(C1918v3.class, aVar);
        }
    }

    ProtobufStateStorage<T> a(Context context);

    ProtobufStateStorage<T> b(Context context);
}
