package com.yandex.metrica.impl.ob;

import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingQueue;
/* renamed from: com.yandex.metrica.impl.ob.l3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1675l3 {

    /* renamed from: a  reason: collision with root package name */
    private final Lm f15047a;

    /* renamed from: b  reason: collision with root package name */
    private final BlockingQueue<b> f15048b = new LinkedBlockingQueue();

    /* renamed from: c  reason: collision with root package name */
    private ConcurrentHashMap<Class, CopyOnWriteArrayList<C1775p3<? extends C1725n3>>> f15049c = new ConcurrentHashMap<>();

    /* renamed from: d  reason: collision with root package name */
    private WeakHashMap<Object, CopyOnWriteArrayList<d>> f15050d = new WeakHashMap<>();

    /* renamed from: e  reason: collision with root package name */
    private ConcurrentHashMap<Class, C1725n3> f15051e = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.l3$a */
    /* loaded from: classes5.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                C1675l3.this.getClass();
                try {
                    ((b) C1675l3.this.f15048b.take()).a();
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.yandex.metrica.impl.ob.l3$b */
    /* loaded from: classes5.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final C1725n3 f15053a;

        /* renamed from: b  reason: collision with root package name */
        private final C1775p3<? extends C1725n3> f15054b;

        /* synthetic */ b(C1725n3 c1725n3, C1775p3 c1775p3, a aVar) {
            this(c1725n3, c1775p3);
        }

        void a() {
            try {
                if (this.f15054b.a(this.f15053a)) {
                    return;
                }
                this.f15054b.b(this.f15053a);
            } catch (Throwable unused) {
            }
        }

        private b(C1725n3 c1725n3, C1775p3<? extends C1725n3> c1775p3) {
            this.f15053a = c1725n3;
            this.f15054b = c1775p3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.yandex.metrica.impl.ob.l3$c */
    /* loaded from: classes5.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private static final C1675l3 f15055a = new C1675l3();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.yandex.metrica.impl.ob.l3$d */
    /* loaded from: classes5.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        final CopyOnWriteArrayList<C1775p3<? extends C1725n3>> f15056a;

        /* renamed from: b  reason: collision with root package name */
        final C1775p3<? extends C1725n3> f15057b;

        /* synthetic */ d(CopyOnWriteArrayList copyOnWriteArrayList, C1775p3 c1775p3, a aVar) {
            this(copyOnWriteArrayList, c1775p3);
        }

        protected void finalize() throws Throwable {
            super.finalize();
            this.f15056a.remove(this.f15057b);
        }

        private d(CopyOnWriteArrayList<C1775p3<? extends C1725n3>> copyOnWriteArrayList, C1775p3<? extends C1725n3> c1775p3) {
            this.f15056a = copyOnWriteArrayList;
            this.f15057b = c1775p3;
        }
    }

    C1675l3() {
        Lm a2 = Mm.a("YMM-BD", new a());
        this.f15047a = a2;
        a2.start();
    }

    public static final C1675l3 a() {
        return c.f15055a;
    }

    public synchronized void a(C1725n3 c1725n3) {
        synchronized (this) {
            CopyOnWriteArrayList<C1775p3<? extends C1725n3>> copyOnWriteArrayList = this.f15049c.get(c1725n3.getClass());
            if (copyOnWriteArrayList != null) {
                Iterator<C1775p3<? extends C1725n3>> it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    this.f15048b.add(new b(c1725n3, it.next(), null));
                }
            }
        }
        this.f15051e.put(c1725n3.getClass(), c1725n3);
    }

    public synchronized void a(Object obj, Class cls, C1775p3<? extends C1725n3> c1775p3) {
        CopyOnWriteArrayList<C1775p3<? extends C1725n3>> copyOnWriteArrayList = this.f15049c.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.f15049c.put(cls, copyOnWriteArrayList);
        }
        copyOnWriteArrayList.add(c1775p3);
        CopyOnWriteArrayList<d> copyOnWriteArrayList2 = this.f15050d.get(obj);
        if (copyOnWriteArrayList2 == null) {
            copyOnWriteArrayList2 = new CopyOnWriteArrayList<>();
            this.f15050d.put(obj, copyOnWriteArrayList2);
        }
        copyOnWriteArrayList2.add(new d(copyOnWriteArrayList, c1775p3, null));
        C1725n3 c1725n3 = this.f15051e.get(cls);
        if (c1725n3 != null) {
            this.f15048b.add(new b(c1725n3, c1775p3, null));
        }
    }

    public synchronized void a(Object obj) {
        CopyOnWriteArrayList<d> remove = this.f15050d.remove(obj);
        if (remove != null) {
            for (d dVar : remove) {
                dVar.f15056a.remove(dVar.f15057b);
            }
        }
    }
}
