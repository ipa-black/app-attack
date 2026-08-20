package com.yandex.metrica.impl.ob;

import android.app.Activity;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C1795q;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
/* renamed from: com.yandex.metrica.impl.ob.p  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1771p implements C1795q.b {

    /* renamed from: a  reason: collision with root package name */
    private final Set<b> f15350a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private final ICommonExecutor f15351b;

    /* renamed from: com.yandex.metrica.impl.ob.p$a */
    /* loaded from: classes5.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f15352a;

        a(Activity activity) {
            this.f15352a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            C1771p.this.a(this.f15352a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.p$b */
    /* loaded from: classes5.dex */
    public interface b {
        void a(Activity activity);
    }

    public C1771p(C1795q c1795q, ICommonExecutor iCommonExecutor) {
        this.f15351b = iCommonExecutor;
        c1795q.a(this, new C1795q.a[0]);
    }

    public synchronized void a(b bVar) {
        this.f15350a.add(bVar);
    }

    public void a(Activity activity) {
        HashSet hashSet;
        synchronized (this) {
            hashSet = new HashSet(this.f15350a);
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((b) it.next()).a(activity);
        }
    }

    @Override // com.yandex.metrica.impl.ob.C1795q.b
    public void a(Activity activity, C1795q.a aVar) {
        this.f15351b.execute(new a(activity));
    }
}
