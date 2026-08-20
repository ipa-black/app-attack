package com.yandex.metrica.impl.ob;

import com.yandex.metrica.core.api.executors.ICommonExecutor;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class Ll<T> {

    /* renamed from: a  reason: collision with root package name */
    private T f13445a;

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f13446b;

    /* renamed from: c  reason: collision with root package name */
    private final List<E1<T>> f13447c = new ArrayList();

    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ E1 f13448a;

        a(E1 e1) {
            this.f13448a = e1;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            synchronized (Ll.this) {
                Object obj = Ll.this.f13445a;
                if (obj == null) {
                    Ll.this.f13447c.add(this.f13448a);
                } else {
                    this.f13448a.b(obj);
                }
            }
        }
    }

    public Ll(ICommonExecutor iCommonExecutor) {
        this.f13446b = iCommonExecutor;
    }

    public void a(E1<T> e1) {
        this.f13446b.execute(new a(e1));
    }

    public synchronized void a(T t) {
        this.f13445a = t;
        for (E1<T> e1 : this.f13447c) {
            e1.b(t);
        }
        this.f13447c.clear();
    }
}
