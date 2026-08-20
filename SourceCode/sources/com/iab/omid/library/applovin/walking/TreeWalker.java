package com.iab.omid.library.applovin.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.applovin.processor.a;
import com.iab.omid.library.applovin.utils.f;
import com.iab.omid.library.applovin.utils.h;
import com.iab.omid.library.applovin.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class TreeWalker implements a.InterfaceC0304a {
    private static TreeWalker i = new TreeWalker();
    private static Handler j = new Handler(Looper.getMainLooper());
    private static Handler k = null;
    private static final Runnable l = new b();
    private static final Runnable m = new c();

    /* renamed from: b  reason: collision with root package name */
    private int f10109b;

    /* renamed from: h  reason: collision with root package name */
    private long f10115h;

    /* renamed from: a  reason: collision with root package name */
    private List<TreeWalkerTimeLogger> f10108a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private boolean f10110c = false;

    /* renamed from: d  reason: collision with root package name */
    private final List<com.iab.omid.library.applovin.weakreference.a> f10111d = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private com.iab.omid.library.applovin.walking.a f10113f = new com.iab.omid.library.applovin.walking.a();

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.applovin.processor.b f10112e = new com.iab.omid.library.applovin.processor.b();

    /* renamed from: g  reason: collision with root package name */
    private com.iab.omid.library.applovin.walking.b f10114g = new com.iab.omid.library.applovin.walking.b(new com.iab.omid.library.applovin.walking.async.c());

    /* loaded from: classes2.dex */
    public interface TreeWalkerNanoTimeLogger extends TreeWalkerTimeLogger {
        void onTreeProcessedNano(int i, long j);
    }

    /* loaded from: classes2.dex */
    public interface TreeWalkerTimeLogger {
        void onTreeProcessed(int i, long j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.this.f10114g.b();
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.getInstance().l();
        }
    }

    /* loaded from: classes2.dex */
    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TreeWalker.k != null) {
                TreeWalker.k.post(TreeWalker.l);
                TreeWalker.k.postDelayed(TreeWalker.m, 200L);
            }
        }
    }

    TreeWalker() {
    }

    private void a(long j2) {
        if (this.f10108a.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f10108a) {
                treeWalkerTimeLogger.onTreeProcessed(this.f10109b, TimeUnit.NANOSECONDS.toMillis(j2));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f10109b, j2);
                }
            }
        }
    }

    private void a(View view, com.iab.omid.library.applovin.processor.a aVar, JSONObject jSONObject, com.iab.omid.library.applovin.walking.c cVar, boolean z) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.applovin.walking.c.PARENT_VIEW, z);
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.applovin.processor.a b2 = this.f10112e.b();
        String b3 = this.f10113f.b(str);
        if (b3 != null) {
            JSONObject a2 = b2.a(view);
            com.iab.omid.library.applovin.utils.c.a(a2, str);
            com.iab.omid.library.applovin.utils.c.b(a2, b3);
            com.iab.omid.library.applovin.utils.c.a(jSONObject, a2);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        a.C0305a c2 = this.f10113f.c(view);
        if (c2 != null) {
            com.iab.omid.library.applovin.utils.c.a(jSONObject, c2);
            return true;
        }
        return false;
    }

    private boolean b(View view, JSONObject jSONObject) {
        String d2 = this.f10113f.d(view);
        if (d2 != null) {
            com.iab.omid.library.applovin.utils.c.a(jSONObject, d2);
            com.iab.omid.library.applovin.utils.c.a(jSONObject, Boolean.valueOf(this.f10113f.f(view)));
            this.f10113f.d();
            return true;
        }
        return false;
    }

    private void d() {
        a(f.b() - this.f10115h);
    }

    private void e() {
        this.f10109b = 0;
        this.f10111d.clear();
        this.f10110c = false;
        Iterator<com.iab.omid.library.applovin.adsession.a> it = com.iab.omid.library.applovin.internal.c.c().a().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().e()) {
                this.f10110c = true;
                break;
            }
        }
        this.f10115h = f.b();
    }

    public static TreeWalker getInstance() {
        return i;
    }

    private void i() {
        if (k == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            k = handler;
            handler.post(l);
            k.postDelayed(m, 200L);
        }
    }

    private void k() {
        Handler handler = k;
        if (handler != null) {
            handler.removeCallbacks(m);
            k = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        e();
        f();
        d();
    }

    @Override // com.iab.omid.library.applovin.processor.a.InterfaceC0304a
    public void a(View view, com.iab.omid.library.applovin.processor.a aVar, JSONObject jSONObject, boolean z) {
        com.iab.omid.library.applovin.walking.c e2;
        if (h.d(view) && (e2 = this.f10113f.e(view)) != com.iab.omid.library.applovin.walking.c.UNDERLYING_VIEW) {
            JSONObject a2 = aVar.a(view);
            com.iab.omid.library.applovin.utils.c.a(jSONObject, a2);
            if (!b(view, a2)) {
                boolean z2 = z || a(view, a2);
                if (this.f10110c && e2 == com.iab.omid.library.applovin.walking.c.OBSTRUCTION_VIEW && !z2) {
                    this.f10111d.add(new com.iab.omid.library.applovin.weakreference.a(view));
                }
                a(view, aVar, a2, e2, z2);
            }
            this.f10109b++;
        }
    }

    public void addTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f10108a.contains(treeWalkerTimeLogger)) {
            return;
        }
        this.f10108a.add(treeWalkerTimeLogger);
    }

    void f() {
        this.f10113f.e();
        long b2 = f.b();
        com.iab.omid.library.applovin.processor.a a2 = this.f10112e.a();
        if (this.f10113f.b().size() > 0) {
            Iterator<String> it = this.f10113f.b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject a3 = a2.a(null);
                a(next, this.f10113f.a(next), a3);
                com.iab.omid.library.applovin.utils.c.b(a3);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.f10114g.a(a3, hashSet, b2);
            }
        }
        if (this.f10113f.c().size() > 0) {
            JSONObject a4 = a2.a(null);
            a(null, a2, a4, com.iab.omid.library.applovin.walking.c.PARENT_VIEW, false);
            com.iab.omid.library.applovin.utils.c.b(a4);
            this.f10114g.b(a4, this.f10113f.c(), b2);
            if (this.f10110c) {
                for (com.iab.omid.library.applovin.adsession.a aVar : com.iab.omid.library.applovin.internal.c.c().a()) {
                    aVar.a(this.f10111d);
                }
            }
        } else {
            this.f10114g.b();
        }
        this.f10113f.a();
    }

    public void g() {
        k();
    }

    public void h() {
        i();
    }

    public void j() {
        g();
        this.f10108a.clear();
        j.post(new a());
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f10108a.contains(treeWalkerTimeLogger)) {
            this.f10108a.remove(treeWalkerTimeLogger);
        }
    }
}
