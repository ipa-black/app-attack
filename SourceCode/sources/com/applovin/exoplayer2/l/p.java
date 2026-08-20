package com.applovin.exoplayer2.l;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.applovin.exoplayer2.l.m;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes.dex */
public final class p<T> {

    /* renamed from: a  reason: collision with root package name */
    private final d f3815a;

    /* renamed from: b  reason: collision with root package name */
    private final o f3816b;

    /* renamed from: c  reason: collision with root package name */
    private final b<T> f3817c;

    /* renamed from: d  reason: collision with root package name */
    private final CopyOnWriteArraySet<c<T>> f3818d;

    /* renamed from: e  reason: collision with root package name */
    private final ArrayDeque<Runnable> f3819e;

    /* renamed from: f  reason: collision with root package name */
    private final ArrayDeque<Runnable> f3820f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f3821g;

    /* loaded from: classes.dex */
    public interface a<T> {
        void invoke(T t);
    }

    /* loaded from: classes.dex */
    public interface b<T> {
        void invoke(T t, m mVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c<T> {

        /* renamed from: a  reason: collision with root package name */
        public final T f3822a;

        /* renamed from: b  reason: collision with root package name */
        private m.a f3823b = new m.a();

        /* renamed from: c  reason: collision with root package name */
        private boolean f3824c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f3825d;

        public c(T t) {
            this.f3822a = t;
        }

        public void a(int i, a<T> aVar) {
            if (this.f3825d) {
                return;
            }
            if (i != -1) {
                this.f3823b.a(i);
            }
            this.f3824c = true;
            aVar.invoke(this.f3822a);
        }

        public void a(b<T> bVar) {
            this.f3825d = true;
            if (this.f3824c) {
                bVar.invoke(this.f3822a, this.f3823b.a());
            }
        }

        public void b(b<T> bVar) {
            if (this.f3825d || !this.f3824c) {
                return;
            }
            m a2 = this.f3823b.a();
            this.f3823b = new m.a();
            this.f3824c = false;
            bVar.invoke(this.f3822a, a2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            return this.f3822a.equals(((c) obj).f3822a);
        }

        public int hashCode() {
            return this.f3822a.hashCode();
        }
    }

    public p(Looper looper, d dVar, b<T> bVar) {
        this(new CopyOnWriteArraySet(), looper, dVar, bVar);
    }

    private p(CopyOnWriteArraySet<c<T>> copyOnWriteArraySet, Looper looper, d dVar, b<T> bVar) {
        this.f3815a = dVar;
        this.f3818d = copyOnWriteArraySet;
        this.f3817c = bVar;
        this.f3819e = new ArrayDeque<>();
        this.f3820f = new ArrayDeque<>();
        this.f3816b = dVar.a(looper, new Handler.Callback() { // from class: com.applovin.exoplayer2.l.p$$ExternalSyntheticLambda0
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean a2;
                a2 = p.this.a(message);
                return a2;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(CopyOnWriteArraySet copyOnWriteArraySet, int i, a aVar) {
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((c) it.next()).a(i, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Message message) {
        Iterator<c<T>> it = this.f3818d.iterator();
        while (it.hasNext()) {
            it.next().b(this.f3817c);
            if (this.f3816b.a(0)) {
                return true;
            }
        }
        return true;
    }

    public p<T> a(Looper looper, b<T> bVar) {
        return new p<>(this.f3818d, looper, this.f3815a, bVar);
    }

    public void a() {
        if (this.f3820f.isEmpty()) {
            return;
        }
        if (!this.f3816b.a(0)) {
            o oVar = this.f3816b;
            oVar.a(oVar.b(0));
        }
        boolean z = !this.f3819e.isEmpty();
        this.f3819e.addAll(this.f3820f);
        this.f3820f.clear();
        if (z) {
            return;
        }
        while (!this.f3819e.isEmpty()) {
            this.f3819e.peekFirst().run();
            this.f3819e.removeFirst();
        }
    }

    public void a(final int i, final a<T> aVar) {
        final CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet(this.f3818d);
        this.f3820f.add(new Runnable() { // from class: com.applovin.exoplayer2.l.p$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                p.a(copyOnWriteArraySet, i, aVar);
            }
        });
    }

    public void a(T t) {
        if (this.f3821g) {
            return;
        }
        com.applovin.exoplayer2.l.a.b(t);
        this.f3818d.add(new c<>(t));
    }

    public void b() {
        Iterator<c<T>> it = this.f3818d.iterator();
        while (it.hasNext()) {
            it.next().a(this.f3817c);
        }
        this.f3818d.clear();
        this.f3821g = true;
    }

    public void b(int i, a<T> aVar) {
        a(i, aVar);
        a();
    }

    public void b(T t) {
        Iterator<c<T>> it = this.f3818d.iterator();
        while (it.hasNext()) {
            c<T> next = it.next();
            if (next.f3822a.equals(t)) {
                next.a(this.f3817c);
                this.f3818d.remove(next);
            }
        }
    }
}
