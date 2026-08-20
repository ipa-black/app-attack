package com.applovin.exoplayer2.h;

import android.os.Handler;
import com.applovin.exoplayer2.h.p;
import com.applovin.exoplayer2.h.q;
import com.applovin.exoplayer2.l.ai;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public interface q {

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3090a;

        /* renamed from: b  reason: collision with root package name */
        public final p.a f3091b;

        /* renamed from: c  reason: collision with root package name */
        private final CopyOnWriteArrayList<C0044a> f3092c;

        /* renamed from: d  reason: collision with root package name */
        private final long f3093d;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.applovin.exoplayer2.h.q$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0044a {

            /* renamed from: a  reason: collision with root package name */
            public Handler f3094a;

            /* renamed from: b  reason: collision with root package name */
            public q f3095b;

            public C0044a(Handler handler, q qVar) {
                this.f3094a = handler;
                this.f3095b = qVar;
            }
        }

        public a() {
            this(new CopyOnWriteArrayList(), 0, null, 0L);
        }

        private a(CopyOnWriteArrayList<C0044a> copyOnWriteArrayList, int i, p.a aVar, long j) {
            this.f3092c = copyOnWriteArrayList;
            this.f3090a = i;
            this.f3091b = aVar;
            this.f3093d = j;
        }

        private long a(long j) {
            long a2 = com.applovin.exoplayer2.h.a(j);
            return a2 == C.TIME_UNSET ? C.TIME_UNSET : this.f3093d + a2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(q qVar, j jVar, m mVar) {
            qVar.c(this.f3090a, this.f3091b, jVar, mVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(q qVar, j jVar, m mVar, IOException iOException, boolean z) {
            qVar.a(this.f3090a, this.f3091b, jVar, mVar, iOException, z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(q qVar, m mVar) {
            qVar.a(this.f3090a, this.f3091b, mVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(q qVar, j jVar, m mVar) {
            qVar.b(this.f3090a, this.f3091b, jVar, mVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(q qVar, j jVar, m mVar) {
            qVar.a(this.f3090a, this.f3091b, jVar, mVar);
        }

        public a a(int i, p.a aVar, long j) {
            return new a(this.f3092c, i, aVar, j);
        }

        public void a(int i, com.applovin.exoplayer2.v vVar, int i2, Object obj, long j) {
            a(new m(1, i, vVar, i2, obj, a(j), C.TIME_UNSET));
        }

        public void a(Handler handler, q qVar) {
            com.applovin.exoplayer2.l.a.b(handler);
            com.applovin.exoplayer2.l.a.b(qVar);
            this.f3092c.add(new C0044a(handler, qVar));
        }

        public void a(j jVar, int i, int i2, com.applovin.exoplayer2.v vVar, int i3, Object obj, long j, long j2) {
            a(jVar, new m(i, i2, vVar, i3, obj, a(j), a(j2)));
        }

        public void a(j jVar, int i, int i2, com.applovin.exoplayer2.v vVar, int i3, Object obj, long j, long j2, IOException iOException, boolean z) {
            a(jVar, new m(i, i2, vVar, i3, obj, a(j), a(j2)), iOException, z);
        }

        public void a(final j jVar, final m mVar) {
            Iterator<C0044a> it = this.f3092c.iterator();
            while (it.hasNext()) {
                C0044a next = it.next();
                final q qVar = next.f3095b;
                ai.a(next.f3094a, new Runnable() { // from class: com.applovin.exoplayer2.h.q$a$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        q.a.this.c(qVar, jVar, mVar);
                    }
                });
            }
        }

        public void a(final j jVar, final m mVar, final IOException iOException, final boolean z) {
            Iterator<C0044a> it = this.f3092c.iterator();
            while (it.hasNext()) {
                C0044a next = it.next();
                final q qVar = next.f3095b;
                ai.a(next.f3094a, new Runnable() { // from class: com.applovin.exoplayer2.h.q$a$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        q.a.this.a(qVar, jVar, mVar, iOException, z);
                    }
                });
            }
        }

        public void a(final m mVar) {
            Iterator<C0044a> it = this.f3092c.iterator();
            while (it.hasNext()) {
                C0044a next = it.next();
                final q qVar = next.f3095b;
                ai.a(next.f3094a, new Runnable() { // from class: com.applovin.exoplayer2.h.q$a$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        q.a.this.a(qVar, mVar);
                    }
                });
            }
        }

        public void a(q qVar) {
            Iterator<C0044a> it = this.f3092c.iterator();
            while (it.hasNext()) {
                C0044a next = it.next();
                if (next.f3095b == qVar) {
                    this.f3092c.remove(next);
                }
            }
        }

        public void b(j jVar, int i, int i2, com.applovin.exoplayer2.v vVar, int i3, Object obj, long j, long j2) {
            b(jVar, new m(i, i2, vVar, i3, obj, a(j), a(j2)));
        }

        public void b(final j jVar, final m mVar) {
            Iterator<C0044a> it = this.f3092c.iterator();
            while (it.hasNext()) {
                C0044a next = it.next();
                final q qVar = next.f3095b;
                ai.a(next.f3094a, new Runnable() { // from class: com.applovin.exoplayer2.h.q$a$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        q.a.this.b(qVar, jVar, mVar);
                    }
                });
            }
        }

        public void c(j jVar, int i, int i2, com.applovin.exoplayer2.v vVar, int i3, Object obj, long j, long j2) {
            c(jVar, new m(i, i2, vVar, i3, obj, a(j), a(j2)));
        }

        public void c(final j jVar, final m mVar) {
            Iterator<C0044a> it = this.f3092c.iterator();
            while (it.hasNext()) {
                C0044a next = it.next();
                final q qVar = next.f3095b;
                ai.a(next.f3094a, new Runnable() { // from class: com.applovin.exoplayer2.h.q$a$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        q.a.this.a(qVar, jVar, mVar);
                    }
                });
            }
        }
    }

    default void a(int i, p.a aVar, j jVar, m mVar) {
    }

    default void a(int i, p.a aVar, j jVar, m mVar, IOException iOException, boolean z) {
    }

    default void a(int i, p.a aVar, m mVar) {
    }

    default void b(int i, p.a aVar, j jVar, m mVar) {
    }

    default void c(int i, p.a aVar, j jVar, m mVar) {
    }
}
