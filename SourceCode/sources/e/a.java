package e;

import e.a;
import f.c;
import f.e;
import io.bidmachine.analytics.AnalyticsConfig;
import io.bidmachine.analytics.entity.Event;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    public final AnalyticsConfig f16331a;

    /* renamed from: b  reason: collision with root package name */
    public final g.a f16332b;

    /* renamed from: c  reason: collision with root package name */
    public final b f16333c;

    /* renamed from: d  reason: collision with root package name */
    public final Runnable f16334d = new Runnable() { // from class: e.a$$ExternalSyntheticLambda1
        @Override // java.lang.Runnable
        public final void run() {
            a.this.a();
        }
    };

    /* loaded from: classes5.dex */
    public static final class b implements c<e>, f.b<e> {

        /* renamed from: a  reason: collision with root package name */
        public final g.a f16335a;

        private b(g.a aVar) {
            this.f16335a = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public /* synthetic */ void a2(e eVar) {
            try {
                this.f16335a.c(eVar.h());
            } catch (Throwable unused) {
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b  reason: avoid collision after fix types in other method */
        public /* synthetic */ void b2(e eVar) {
            try {
                this.f16335a.a(eVar.h());
            } catch (Throwable unused) {
            }
        }

        @Override // f.b
        /* renamed from: c */
        public void b(final e eVar) {
            a.a.b(new Runnable() { // from class: e.a$b$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    a.b.this.a2(eVar);
                }
            });
        }

        @Override // f.c
        /* renamed from: d */
        public void a(final e eVar) {
            a.a.b(new Runnable() { // from class: e.a$b$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    a.b.this.b2(eVar);
                }
            });
        }
    }

    public a(AnalyticsConfig analyticsConfig, g.a aVar) {
        this.f16331a = analyticsConfig;
        this.f16332b = aVar;
        this.f16333c = new b(aVar);
        a.a.b(new Runnable() { // from class: e.a$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                a.this.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a() {
        a(0);
    }

    public final void a(int i) {
        try {
            List<b.a> a2 = this.f16332b.a(this.f16331a.getEventBatchMaxSize());
            int size = a2.size();
            if (size <= 0 || size < i) {
                b();
            } else {
                a(a2);
            }
        } catch (Throwable unused) {
        }
    }

    public final void a(b.a aVar) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(aVar);
        a(arrayList);
    }

    public final void a(List<b.a> list) {
        for (List<b.a> list2 : a.a.a(list, this.f16331a.getEventBatchMaxSize())) {
            this.f16332b.b(list2);
            new e(this.f16331a.getRequestUrl(), list2).a((c<e>) this.f16333c).a((f.b<e>) this.f16333c).f();
        }
        b();
    }

    public final void b() {
        a.a.b(this.f16334d, this.f16331a.getIntervalMs());
    }

    public void b(final Event event) {
        a.a.b(new Runnable() { // from class: e.a$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                a.this.a(event);
            }
        });
    }

    public final boolean b(b.a aVar) {
        return this.f16332b.a(aVar);
    }

    public final void c() {
        try {
            a(this.f16332b.a());
        } catch (Throwable unused) {
        }
    }

    /* renamed from: c */
    public final synchronized void a(Event event) {
        try {
            b.a aVar = new b.a(this.f16331a.getContext(), event);
            if (b(aVar)) {
                a(this.f16331a.getEventBatchSize());
            } else {
                a(aVar);
            }
        } catch (Throwable unused) {
        }
    }
}
