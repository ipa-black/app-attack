package com.yandex.metrica.impl.ob;

import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.yandex.metrica.impl.ob.mg  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1713mg {

    /* renamed from: a  reason: collision with root package name */
    private final Lazy f15206a = LazyKt.lazy(new c());

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f15207b = LazyKt.lazy(new b());

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f15208c = LazyKt.lazy(new d());

    /* renamed from: d  reason: collision with root package name */
    private final List<C1489dg> f15209d = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private final C1859sg f15210e;

    /* renamed from: f  reason: collision with root package name */
    private final C1955wg f15211f;

    /* renamed from: g  reason: collision with root package name */
    private final C1564gg f15212g;

    /* renamed from: h  reason: collision with root package name */
    private final C1979xg f15213h;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.yandex.metrica.impl.ob.mg$a */
    /* loaded from: classes5.dex */
    public interface a {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.mg$b */
    /* loaded from: classes5.dex */
    public static final class b extends Lambda implements Function0<C1738ng> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public C1738ng invoke() {
            return new C1738ng(this);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.mg$c */
    /* loaded from: classes5.dex */
    static final class c extends Lambda implements Function0<C1763og> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public C1763og invoke() {
            return new C1763og(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.mg$d */
    /* loaded from: classes5.dex */
    public static final class d extends Lambda implements Function0<C1788pg> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public C1788pg invoke() {
            return new C1788pg(this);
        }
    }

    public C1713mg(C1859sg c1859sg, C1955wg c1955wg, C1564gg c1564gg, C1979xg c1979xg) {
        this.f15210e = c1859sg;
        this.f15211f = c1955wg;
        this.f15212g = c1564gg;
        this.f15213h = c1979xg;
    }

    public static final a b(C1713mg c1713mg) {
        return (a) c1713mg.f15207b.getValue();
    }

    public static final a c(C1713mg c1713mg) {
        return (a) c1713mg.f15206a.getValue();
    }

    public static final void a(C1713mg c1713mg, C1489dg c1489dg, a aVar) {
        c1713mg.f15209d.add(c1489dg);
        if (c1713mg.f15213h.a(c1489dg)) {
            c1713mg.f15210e.a(c1489dg);
        } else {
            aVar.a();
        }
    }

    public final void b() {
        this.f15211f.a((InterfaceC1931vg) this.f15208c.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a() {
        List<C1489dg> list = this.f15209d;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (this.f15213h.b((C1489dg) obj)) {
                arrayList.add(obj);
            }
        }
        this.f15210e.a(this.f15213h.a(CollectionsKt.filterNotNull(arrayList)));
    }
}
