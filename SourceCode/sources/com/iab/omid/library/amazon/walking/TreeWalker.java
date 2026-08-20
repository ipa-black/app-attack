package com.iab.omid.library.amazon.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.amazon.c.a;
import com.iab.omid.library.amazon.d.d;
import com.iab.omid.library.amazon.d.f;
import com.iab.omid.library.amazon.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class TreeWalker implements a.InterfaceC0301a {

    /* renamed from: a  reason: collision with root package name */
    private static TreeWalker f9994a = new TreeWalker();

    /* renamed from: b  reason: collision with root package name */
    private static Handler f9995b = new Handler(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    private static Handler f9996c = null;
    private static final Runnable l = new Runnable() { // from class: com.iab.omid.library.amazon.walking.TreeWalker.2
        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.getInstance().h();
        }
    };
    private static final Runnable m = new Runnable() { // from class: com.iab.omid.library.amazon.walking.TreeWalker.3
        @Override // java.lang.Runnable
        public void run() {
            if (TreeWalker.f9996c != null) {
                TreeWalker.f9996c.post(TreeWalker.l);
                TreeWalker.f9996c.postDelayed(TreeWalker.m, 200L);
            }
        }
    };

    /* renamed from: e  reason: collision with root package name */
    private int f9998e;
    private long k;

    /* renamed from: d  reason: collision with root package name */
    private List<TreeWalkerTimeLogger> f9997d = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private boolean f9999f = false;

    /* renamed from: g  reason: collision with root package name */
    private final List<com.iab.omid.library.amazon.e.a> f10000g = new ArrayList();
    private a i = new a();

    /* renamed from: h  reason: collision with root package name */
    private com.iab.omid.library.amazon.c.b f10001h = new com.iab.omid.library.amazon.c.b();
    private b j = new b(new com.iab.omid.library.amazon.walking.a.c());

    /* loaded from: classes2.dex */
    public interface TreeWalkerNanoTimeLogger extends TreeWalkerTimeLogger {
        void onTreeProcessedNano(int i, long j);
    }

    /* loaded from: classes2.dex */
    public interface TreeWalkerTimeLogger {
        void onTreeProcessed(int i, long j);
    }

    TreeWalker() {
    }

    private void a(long j) {
        if (this.f9997d.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f9997d) {
                treeWalkerTimeLogger.onTreeProcessed(this.f9998e, TimeUnit.NANOSECONDS.toMillis(j));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f9998e, j);
                }
            }
        }
    }

    private void a(View view, com.iab.omid.library.amazon.c.a aVar, JSONObject jSONObject, c cVar, boolean z) {
        aVar.a(view, jSONObject, this, cVar == c.PARENT_VIEW, z);
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.amazon.c.a b2 = this.f10001h.b();
        String a2 = this.i.a(str);
        if (a2 != null) {
            JSONObject a3 = b2.a(view);
            com.iab.omid.library.amazon.d.b.a(a3, str);
            com.iab.omid.library.amazon.d.b.b(a3, a2);
            com.iab.omid.library.amazon.d.b.a(jSONObject, a3);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        String a2 = this.i.a(view);
        if (a2 != null) {
            com.iab.omid.library.amazon.d.b.a(jSONObject, a2);
            com.iab.omid.library.amazon.d.b.a(jSONObject, Boolean.valueOf(this.i.d(view)));
            this.i.e();
            return true;
        }
        return false;
    }

    private boolean b(View view, JSONObject jSONObject) {
        a.C0302a b2 = this.i.b(view);
        if (b2 != null) {
            com.iab.omid.library.amazon.d.b.a(jSONObject, b2);
            return true;
        }
        return false;
    }

    public static TreeWalker getInstance() {
        return f9994a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        i();
        d();
        j();
    }

    private void i() {
        this.f9998e = 0;
        this.f10000g.clear();
        this.f9999f = false;
        Iterator<com.iab.omid.library.amazon.adsession.a> it = com.iab.omid.library.amazon.b.a.a().c().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().b()) {
                this.f9999f = true;
                break;
            }
        }
        this.k = d.a();
    }

    private void j() {
        a(d.a() - this.k);
    }

    private void k() {
        if (f9996c == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f9996c = handler;
            handler.post(l);
            f9996c.postDelayed(m, 200L);
        }
    }

    private void l() {
        Handler handler = f9996c;
        if (handler != null) {
            handler.removeCallbacks(m);
            f9996c = null;
        }
    }

    public void a() {
        k();
    }

    @Override // com.iab.omid.library.amazon.c.a.InterfaceC0301a
    public void a(View view, com.iab.omid.library.amazon.c.a aVar, JSONObject jSONObject, boolean z) {
        c c2;
        if (f.d(view) && (c2 = this.i.c(view)) != c.UNDERLYING_VIEW) {
            JSONObject a2 = aVar.a(view);
            com.iab.omid.library.amazon.d.b.a(jSONObject, a2);
            if (!a(view, a2)) {
                boolean z2 = z || b(view, a2);
                if (this.f9999f && c2 == c.OBSTRUCTION_VIEW && !z2) {
                    this.f10000g.add(new com.iab.omid.library.amazon.e.a(view));
                }
                a(view, aVar, a2, c2, z2);
            }
            this.f9998e++;
        }
    }

    public void addTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f9997d.contains(treeWalkerTimeLogger)) {
            return;
        }
        this.f9997d.add(treeWalkerTimeLogger);
    }

    public void b() {
        c();
        this.f9997d.clear();
        f9995b.post(new Runnable() { // from class: com.iab.omid.library.amazon.walking.TreeWalker.1
            @Override // java.lang.Runnable
            public void run() {
                TreeWalker.this.j.a();
            }
        });
    }

    public void c() {
        l();
    }

    void d() {
        this.i.c();
        long a2 = d.a();
        com.iab.omid.library.amazon.c.a a3 = this.f10001h.a();
        if (this.i.b().size() > 0) {
            Iterator<String> it = this.i.b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject a4 = a3.a(null);
                a(next, this.i.b(next), a4);
                com.iab.omid.library.amazon.d.b.a(a4);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.j.b(a4, hashSet, a2);
            }
        }
        if (this.i.a().size() > 0) {
            JSONObject a5 = a3.a(null);
            a(null, a3, a5, c.PARENT_VIEW, false);
            com.iab.omid.library.amazon.d.b.a(a5);
            this.j.a(a5, this.i.a(), a2);
            if (this.f9999f) {
                for (com.iab.omid.library.amazon.adsession.a aVar : com.iab.omid.library.amazon.b.a.a().c()) {
                    aVar.a(this.f10000g);
                }
            }
        } else {
            this.j.a();
        }
        this.i.d();
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f9997d.contains(treeWalkerTimeLogger)) {
            this.f9997d.remove(treeWalkerTimeLogger);
        }
    }
}
