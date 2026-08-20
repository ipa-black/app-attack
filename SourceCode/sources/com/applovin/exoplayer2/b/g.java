package com.applovin.exoplayer2.b;

import android.os.Handler;
import com.applovin.exoplayer2.b.g;
import com.applovin.exoplayer2.l.ai;
/* loaded from: classes.dex */
public interface g {

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final Handler f1489a;

        /* renamed from: b  reason: collision with root package name */
        private final g f1490b;

        public a(Handler handler, g gVar) {
            this.f1489a = gVar != null ? (Handler) com.applovin.exoplayer2.l.a.b(handler) : null;
            this.f1490b = gVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(int i, long j, long j2) {
            ((g) ai.a(this.f1490b)).a(i, j, j2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(long j) {
            ((g) ai.a(this.f1490b)).a(j);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.c.h hVar) {
            ((g) ai.a(this.f1490b)).a(vVar);
            ((g) ai.a(this.f1490b)).b(vVar, hVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str) {
            ((g) ai.a(this.f1490b)).b(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(String str, long j, long j2) {
            ((g) ai.a(this.f1490b)).b(str, j, j2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(boolean z) {
            ((g) ai.a(this.f1490b)).a_(z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(com.applovin.exoplayer2.c.e eVar) {
            eVar.a();
            ((g) ai.a(this.f1490b)).d(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c(Exception exc) {
            ((g) ai.a(this.f1490b)).c(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(com.applovin.exoplayer2.c.e eVar) {
            ((g) ai.a(this.f1490b)).c(eVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d(Exception exc) {
            ((g) ai.a(this.f1490b)).b(exc);
        }

        public void a(final int i, final long j, final long j2) {
            Handler handler = this.f1489a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.g$a$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a.this.b(i, j, j2);
                    }
                });
            }
        }

        public void a(final long j) {
            Handler handler = this.f1489a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.g$a$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a.this.b(j);
                    }
                });
            }
        }

        public void a(final com.applovin.exoplayer2.c.e eVar) {
            Handler handler = this.f1489a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.g$a$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a.this.d(eVar);
                    }
                });
            }
        }

        public void a(final com.applovin.exoplayer2.v vVar, final com.applovin.exoplayer2.c.h hVar) {
            Handler handler = this.f1489a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.g$a$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a.this.b(vVar, hVar);
                    }
                });
            }
        }

        public void a(final Exception exc) {
            Handler handler = this.f1489a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.g$a$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a.this.d(exc);
                    }
                });
            }
        }

        public void a(final String str) {
            Handler handler = this.f1489a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.g$a$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a.this.b(str);
                    }
                });
            }
        }

        public void a(final String str, final long j, final long j2) {
            Handler handler = this.f1489a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.g$a$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a.this.b(str, j, j2);
                    }
                });
            }
        }

        public void a(final boolean z) {
            Handler handler = this.f1489a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.g$a$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a.this.b(z);
                    }
                });
            }
        }

        public void b(final com.applovin.exoplayer2.c.e eVar) {
            eVar.a();
            Handler handler = this.f1489a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.g$a$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a.this.c(eVar);
                    }
                });
            }
        }

        public void b(final Exception exc) {
            Handler handler = this.f1489a;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.applovin.exoplayer2.b.g$a$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.a.this.c(exc);
                    }
                });
            }
        }
    }

    default void a(int i, long j, long j2) {
    }

    default void a(long j) {
    }

    @Deprecated
    default void a(com.applovin.exoplayer2.v vVar) {
    }

    default void a_(boolean z) {
    }

    default void b(com.applovin.exoplayer2.v vVar, com.applovin.exoplayer2.c.h hVar) {
    }

    default void b(Exception exc) {
    }

    default void b(String str) {
    }

    default void b(String str, long j, long j2) {
    }

    default void c(com.applovin.exoplayer2.c.e eVar) {
    }

    default void c(Exception exc) {
    }

    default void d(com.applovin.exoplayer2.c.e eVar) {
    }
}
