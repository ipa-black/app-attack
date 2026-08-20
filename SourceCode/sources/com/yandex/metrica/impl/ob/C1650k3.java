package com.yandex.metrica.impl.ob;

import android.os.Looper;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* renamed from: com.yandex.metrica.impl.ob.k3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1650k3 {

    /* renamed from: a  reason: collision with root package name */
    private final c f15016a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1694lm<Thread, StackTraceElement[], E6> f15017b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC1445bm f15018c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.k3$a */
    /* loaded from: classes5.dex */
    public class a implements c {
        a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.k3$b */
    /* loaded from: classes5.dex */
    public class b implements Comparator<Thread> {
        b(C1650k3 c1650k3) {
        }

        @Override // java.util.Comparator
        public int compare(Thread thread, Thread thread2) {
            Thread thread3 = thread;
            Thread thread4 = thread2;
            if (thread3 != thread4) {
                String name = thread3.getName();
                String name2 = thread4.getName();
                if (name != null) {
                    if (name2 == null) {
                        return 1;
                    }
                    return name.compareTo(name2);
                } else if (name2 != null) {
                    return -1;
                }
            }
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.k3$c */
    /* loaded from: classes5.dex */
    public interface c {
    }

    public C1650k3() {
        this(new a(), new C1625j3(), P.g().j());
    }

    public C1945w6 a() {
        StackTraceElement[] stackTraceElementArr;
        ((a) this.f15016a).getClass();
        Thread thread = Looper.getMainLooper().getThread();
        try {
            stackTraceElementArr = thread.getStackTrace();
        } catch (SecurityException unused) {
            stackTraceElementArr = null;
        }
        return new C1945w6(this.f15017b.a(thread, stackTraceElementArr), a(thread, null), ((Xl) this.f15018c).b());
    }

    C1650k3(c cVar, InterfaceC1694lm<Thread, StackTraceElement[], E6> interfaceC1694lm, InterfaceC1445bm interfaceC1445bm) {
        this.f15016a = cVar;
        this.f15017b = interfaceC1694lm;
        this.f15018c = interfaceC1445bm;
    }

    public List<E6> a(Thread thread) {
        StackTraceElement[] stackTraceElementArr;
        ((a) this.f15016a).getClass();
        Thread thread2 = Looper.getMainLooper().getThread();
        List<E6> a2 = a(thread2, thread);
        if (thread != thread2) {
            try {
                stackTraceElementArr = thread2.getStackTrace();
            } catch (SecurityException unused) {
                stackTraceElementArr = null;
            }
            ((ArrayList) a2).add(0, this.f15017b.a(thread2, stackTraceElementArr));
        }
        return a2;
    }

    private List<E6> a(Thread thread, Thread thread2) {
        Map<Thread, StackTraceElement[]> map;
        ArrayList arrayList = new ArrayList();
        TreeMap treeMap = new TreeMap(new b(this));
        try {
            ((a) this.f15016a).getClass();
            map = Thread.getAllStackTraces();
        } catch (SecurityException unused) {
            map = null;
        }
        if (map != null) {
            treeMap.putAll(map);
        }
        if (thread2 != null) {
            treeMap.remove(thread2);
        }
        for (Map.Entry entry : treeMap.entrySet()) {
            Thread thread3 = (Thread) entry.getKey();
            if (thread3 != thread && thread3 != thread2) {
                arrayList.add(this.f15017b.a(thread3, (StackTraceElement[]) entry.getValue()));
            }
        }
        return arrayList;
    }
}
