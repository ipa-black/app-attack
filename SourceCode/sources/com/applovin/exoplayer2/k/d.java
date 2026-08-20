package com.applovin.exoplayer2.k;

import android.os.Handler;
import com.applovin.exoplayer2.k.d;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public interface d {

    /* loaded from: classes.dex */
    public interface a {

        /* renamed from: com.applovin.exoplayer2.k.d$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0054a {

            /* renamed from: a  reason: collision with root package name */
            private final CopyOnWriteArrayList<C0055a> f3601a = new CopyOnWriteArrayList<>();

            /* JADX INFO: Access modifiers changed from: private */
            /* renamed from: com.applovin.exoplayer2.k.d$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public static final class C0055a {

                /* renamed from: a  reason: collision with root package name */
                private final Handler f3602a;

                /* renamed from: b  reason: collision with root package name */
                private final a f3603b;

                /* renamed from: c  reason: collision with root package name */
                private boolean f3604c;

                public C0055a(Handler handler, a aVar) {
                    this.f3602a = handler;
                    this.f3603b = aVar;
                }

                public void a() {
                    this.f3604c = true;
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ void a(C0055a c0055a, int i, long j, long j2) {
                c0055a.f3603b.b(i, j, j2);
            }

            public void a(final int i, final long j, final long j2) {
                Iterator<C0055a> it = this.f3601a.iterator();
                while (it.hasNext()) {
                    final C0055a next = it.next();
                    if (!next.f3604c) {
                        next.f3602a.post(new Runnable() { // from class: com.applovin.exoplayer2.k.d$a$a$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                d.a.C0054a.a(d.a.C0054a.C0055a.this, i, j, j2);
                            }
                        });
                    }
                }
            }

            public void a(Handler handler, a aVar) {
                com.applovin.exoplayer2.l.a.b(handler);
                com.applovin.exoplayer2.l.a.b(aVar);
                a(aVar);
                this.f3601a.add(new C0055a(handler, aVar));
            }

            public void a(a aVar) {
                Iterator<C0055a> it = this.f3601a.iterator();
                while (it.hasNext()) {
                    C0055a next = it.next();
                    if (next.f3603b == aVar) {
                        next.a();
                        this.f3601a.remove(next);
                    }
                }
            }
        }

        void b(int i, long j, long j2);
    }

    aa a();

    void a(Handler handler, a aVar);

    void a(a aVar);
}
