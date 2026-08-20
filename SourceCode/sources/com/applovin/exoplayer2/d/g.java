package com.applovin.exoplayer2.d;

import android.os.Handler;
import com.applovin.exoplayer2.d.g;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.l.ai;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public interface g {

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f2020a;

        /* renamed from: b  reason: collision with root package name */
        public final p.a f2021b;

        /* renamed from: c  reason: collision with root package name */
        private final CopyOnWriteArrayList<C0032a> f2022c;

        /* renamed from: com.applovin.exoplayer2.d.g$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static final class C0032a {

            /* renamed from: a  reason: collision with root package name */
            public Handler f2023a;

            /* renamed from: b  reason: collision with root package name */
            public g f2024b;

            public C0032a(Handler handler, g gVar) {
                this.f2023a = handler;
                this.f2024b = gVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        private a(CopyOnWriteArrayList<C0032a> copyOnWriteArrayList, int i, p.a aVar) {
            this.f2022c = copyOnWriteArrayList;
            this.f2020a = i;
            this.f2021b = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(g gVar, int i) {
            gVar.e(this.f2020a, this.f2021b);
            gVar.a(this.f2020a, this.f2021b, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(g gVar, Exception exc) {
            gVar.a(this.f2020a, this.f2021b, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(g gVar) {
            gVar.d(this.f2020a, this.f2021b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(g gVar) {
            gVar.c(this.f2020a, this.f2021b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(g gVar) {
            gVar.b(this.f2020a, this.f2021b);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e(g gVar) {
            gVar.a(this.f2020a, this.f2021b);
        }

        public a a(int i, p.a aVar) {
            return new a(this.f2022c, i, aVar);
        }

        public void a() {
            Iterator<C0032a> it = this.f2022c.iterator();
            while (it.hasNext()) {
                C0032a next = it.next();
                final g gVar = next.f2024b;
                ai.a(next.f2023a, new Runnable() { // from class: com.applovin.exoplayer2.d.g$a$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a.this.e(gVar);
                    }
                });
            }
        }

        public void a(final int i) {
            Iterator<C0032a> it = this.f2022c.iterator();
            while (it.hasNext()) {
                C0032a next = it.next();
                final g gVar = next.f2024b;
                ai.a(next.f2023a, new Runnable() { // from class: com.applovin.exoplayer2.d.g$a$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a.this.a(gVar, i);
                    }
                });
            }
        }

        public void a(Handler handler, g gVar) {
            com.applovin.exoplayer2.l.a.b(handler);
            com.applovin.exoplayer2.l.a.b(gVar);
            this.f2022c.add(new C0032a(handler, gVar));
        }

        public void a(g gVar) {
            Iterator<C0032a> it = this.f2022c.iterator();
            while (it.hasNext()) {
                C0032a next = it.next();
                if (next.f2024b == gVar) {
                    this.f2022c.remove(next);
                }
            }
        }

        public void a(final Exception exc) {
            Iterator<C0032a> it = this.f2022c.iterator();
            while (it.hasNext()) {
                C0032a next = it.next();
                final g gVar = next.f2024b;
                ai.a(next.f2023a, new Runnable() { // from class: com.applovin.exoplayer2.d.g$a$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a.this.a(gVar, exc);
                    }
                });
            }
        }

        public void b() {
            Iterator<C0032a> it = this.f2022c.iterator();
            while (it.hasNext()) {
                C0032a next = it.next();
                final g gVar = next.f2024b;
                ai.a(next.f2023a, new Runnable() { // from class: com.applovin.exoplayer2.d.g$a$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a.this.d(gVar);
                    }
                });
            }
        }

        public void c() {
            Iterator<C0032a> it = this.f2022c.iterator();
            while (it.hasNext()) {
                C0032a next = it.next();
                final g gVar = next.f2024b;
                ai.a(next.f2023a, new Runnable() { // from class: com.applovin.exoplayer2.d.g$a$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a.this.c(gVar);
                    }
                });
            }
        }

        public void d() {
            Iterator<C0032a> it = this.f2022c.iterator();
            while (it.hasNext()) {
                C0032a next = it.next();
                final g gVar = next.f2024b;
                ai.a(next.f2023a, new Runnable() { // from class: com.applovin.exoplayer2.d.g$a$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a.this.b(gVar);
                    }
                });
            }
        }
    }

    default void a(int i, p.a aVar) {
    }

    default void a(int i, p.a aVar, int i2) {
    }

    default void a(int i, p.a aVar, Exception exc) {
    }

    default void b(int i, p.a aVar) {
    }

    default void c(int i, p.a aVar) {
    }

    default void d(int i, p.a aVar) {
    }

    @Deprecated
    default void e(int i, p.a aVar) {
    }
}
