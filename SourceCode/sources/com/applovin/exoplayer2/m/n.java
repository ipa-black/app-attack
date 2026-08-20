package com.applovin.exoplayer2.m;

import android.os.Handler;
import android.os.SystemClock;
import com.applovin.exoplayer2.l.ai;
import com.applovin.exoplayer2.m.n;
import com.applovin.exoplayer2.v;
/* loaded from: classes.dex */
public interface n {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f4010a;

        /* renamed from: b  reason: collision with root package name */
        private final n f4011b;

        public a(Handler handler, n nVar) {
            this.f4010a = nVar != null ? (Handler) com.applovin.exoplayer2.l.a.b(handler) : null;
            this.f4011b = nVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Object obj, long j) {
            ((n) ai.a(this.f4011b)).a(obj, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(int i, long j) {
            ((n) ai.a(this.f4011b)).a(i, j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(long j, int i) {
            ((n) ai.a(this.f4011b)).a(j, i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(o oVar) {
            ((n) ai.a(this.f4011b)).a(oVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(v vVar, com.applovin.exoplayer2.c.h hVar) {
            ((n) ai.a(this.f4011b)).a_(vVar);
            ((n) ai.a(this.f4011b)).a(vVar, hVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(Exception exc) {
            ((n) ai.a(this.f4011b)).a(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str) {
            ((n) ai.a(this.f4011b)).a(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str, long j, long j2) {
            ((n) ai.a(this.f4011b)).a(str, j, j2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(com.applovin.exoplayer2.c.e eVar) {
            eVar.a();
            ((n) ai.a(this.f4011b)).b(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(com.applovin.exoplayer2.c.e eVar) {
            ((n) ai.a(this.f4011b)).a(eVar);
        }

        public void a(final int i, final long j) {
            Handler handler = this.f4010a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.n$a$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.a.this.b(i, j);
                    }
                });
            }
        }

        public void a(final long j, final int i) {
            Handler handler = this.f4010a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.n$a$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.a.this.b(j, i);
                    }
                });
            }
        }

        public void a(final com.applovin.exoplayer2.c.e eVar) {
            Handler handler = this.f4010a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.n$a$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.a.this.d(eVar);
                    }
                });
            }
        }

        public void a(final o oVar) {
            Handler handler = this.f4010a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.n$a$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.a.this.b(oVar);
                    }
                });
            }
        }

        public void a(final v vVar, final com.applovin.exoplayer2.c.h hVar) {
            Handler handler = this.f4010a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.n$a$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.a.this.b(vVar, hVar);
                    }
                });
            }
        }

        public void a(final Exception exc) {
            Handler handler = this.f4010a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.n$a$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.a.this.b(exc);
                    }
                });
            }
        }

        public void a(final Object obj) {
            if (this.f4010a != null) {
                final long elapsedRealtime = SystemClock.elapsedRealtime();
                this.f4010a.post(new Runnable() { // from class: com.applovin.exoplayer2.m.n$a$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.a.this.a(obj, elapsedRealtime);
                    }
                });
            }
        }

        public void a(final String str) {
            Handler handler = this.f4010a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.n$a$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.a.this.b(str);
                    }
                });
            }
        }

        public void a(final String str, final long j, final long j2) {
            Handler handler = this.f4010a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.n$a$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.a.this.b(str, j, j2);
                    }
                });
            }
        }

        public void b(final com.applovin.exoplayer2.c.e eVar) {
            eVar.a();
            Handler handler = this.f4010a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.m.n$a$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        n.a.this.c(eVar);
                    }
                });
            }
        }
    }

    default void a(int i, long j) {
    }

    default void a(long j, int i) {
    }

    default void a(com.applovin.exoplayer2.c.e eVar) {
    }

    default void a(o oVar) {
    }

    default void a(v vVar, com.applovin.exoplayer2.c.h hVar) {
    }

    default void a(Exception exc) {
    }

    default void a(Object obj, long j) {
    }

    default void a(String str) {
    }

    default void a(String str, long j, long j2) {
    }

    @Deprecated
    default void a_(v vVar) {
    }

    default void b(com.applovin.exoplayer2.c.e eVar) {
    }
}
