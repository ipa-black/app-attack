package com.iab.omid.library.adcolony.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.adcolony.c.a;
import com.iab.omid.library.adcolony.d.d;
import com.iab.omid.library.adcolony.d.f;
import com.iab.omid.library.adcolony.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class TreeWalker implements a.InterfaceC0298a {

    /* renamed from: a  reason: collision with root package name */
    private static TreeWalker f9887a = new TreeWalker();

    /* renamed from: b  reason: collision with root package name */
    private static Handler f9888b = new Handler(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    private static Handler f9889c = null;
    private static final Runnable l = new Runnable() { // from class: com.iab.omid.library.adcolony.walking.TreeWalker.2
        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.getInstance().h();
        }
    };
    private static final Runnable m = new Runnable() { // from class: com.iab.omid.library.adcolony.walking.TreeWalker.3
        @Override // java.lang.Runnable
        public void run() {
            if (TreeWalker.f9889c != null) {
                TreeWalker.f9889c.post(TreeWalker.l);
                TreeWalker.f9889c.postDelayed(TreeWalker.m, 200L);
            }
        }
    };

    /* renamed from: e  reason: collision with root package name */
    private int f9891e;
    private long k;

    /* renamed from: d  reason: collision with root package name */
    private List<TreeWalkerTimeLogger> f9890d = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private boolean f9892f = false;

    /* renamed from: g  reason: collision with root package name */
    private final List<com.iab.omid.library.adcolony.e.a> f9893g = new ArrayList();
    private a i = new a();

    /* renamed from: h  reason: collision with root package name */
    private com.iab.omid.library.adcolony.c.b f9894h = new com.iab.omid.library.adcolony.c.b();
    private b j = new b(new com.iab.omid.library.adcolony.walking.a.c());

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
        if (this.f9890d.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f9890d) {
                treeWalkerTimeLogger.onTreeProcessed(this.f9891e, TimeUnit.NANOSECONDS.toMillis(j));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f9891e, j);
                }
            }
        }
    }

    private void a(View view, com.iab.omid.library.adcolony.c.a aVar, JSONObject jSONObject, c cVar, boolean z) {
        aVar.a(view, jSONObject, this, cVar == c.PARENT_VIEW, z);
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.adcolony.c.a b2 = this.f9894h.b();
        String a2 = this.i.a(str);
        if (a2 != null) {
            JSONObject a3 = b2.a(view);
            com.iab.omid.library.adcolony.d.b.a(a3, str);
            com.iab.omid.library.adcolony.d.b.b(a3, a2);
            com.iab.omid.library.adcolony.d.b.a(jSONObject, a3);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        String a2 = this.i.a(view);
        if (a2 != null) {
            com.iab.omid.library.adcolony.d.b.a(jSONObject, a2);
            com.iab.omid.library.adcolony.d.b.a(jSONObject, Boolean.valueOf(this.i.d(view)));
            this.i.e();
            return true;
        }
        return false;
    }

    private boolean b(View view, JSONObject jSONObject) {
        a.C0299a b2 = this.i.b(view);
        if (b2 != null) {
            com.iab.omid.library.adcolony.d.b.a(jSONObject, b2);
            return true;
        }
        return false;
    }

    public static TreeWalker getInstance() {
        return f9887a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        i();
        d();
        j();
    }

    private void i() {
        this.f9891e = 0;
        this.f9893g.clear();
        this.f9892f = false;
        Iterator<com.iab.omid.library.adcolony.adsession.a> it = com.iab.omid.library.adcolony.b.a.a().c().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().b()) {
                this.f9892f = true;
                break;
            }
        }
        this.k = d.a();
    }

    private void j() {
        a(d.a() - this.k);
    }

    private void k() {
        if (f9889c == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f9889c = handler;
            handler.post(l);
            f9889c.postDelayed(m, 200L);
        }
    }

    private void l() {
        Handler handler = f9889c;
        if (handler != null) {
            handler.removeCallbacks(m);
            f9889c = null;
        }
    }

    public void a() {
        k();
    }

    @Override // com.iab.omid.library.adcolony.c.a.InterfaceC0298a
    public void a(View view, com.iab.omid.library.adcolony.c.a aVar, JSONObject jSONObject, boolean z) {
        c c2;
        if (f.d(view) && (c2 = this.i.c(view)) != c.UNDERLYING_VIEW) {
            JSONObject a2 = aVar.a(view);
            com.iab.omid.library.adcolony.d.b.a(jSONObject, a2);
            if (!a(view, a2)) {
                boolean z2 = z || b(view, a2);
                if (this.f9892f && c2 == c.OBSTRUCTION_VIEW && !z2) {
                    this.f9893g.add(new com.iab.omid.library.adcolony.e.a(view));
                }
                a(view, aVar, a2, c2, z2);
            }
            this.f9891e++;
        }
    }

    public void addTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f9890d.contains(treeWalkerTimeLogger)) {
            return;
        }
        this.f9890d.add(treeWalkerTimeLogger);
    }

    public void b() {
        c();
        this.f9890d.clear();
        f9888b.post(new Runnable() { // from class: com.iab.omid.library.adcolony.walking.TreeWalker.1
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
        com.iab.omid.library.adcolony.c.a a3 = this.f9894h.a();
        if (this.i.b().size() > 0) {
            Iterator<String> it = this.i.b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject a4 = a3.a(null);
                a(next, this.i.b(next), a4);
                com.iab.omid.library.adcolony.d.b.a(a4);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.j.b(a4, hashSet, a2);
            }
        }
        if (this.i.a().size() > 0) {
            JSONObject a5 = a3.a(null);
            a(null, a3, a5, c.PARENT_VIEW, false);
            com.iab.omid.library.adcolony.d.b.a(a5);
            this.j.a(a5, this.i.a(), a2);
            if (this.f9892f) {
                for (com.iab.omid.library.adcolony.adsession.a aVar : com.iab.omid.library.adcolony.b.a.a().c()) {
                    aVar.a(this.f9893g);
                }
            }
        } else {
            this.j.a();
        }
        this.i.d();
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f9890d.contains(treeWalkerTimeLogger)) {
            this.f9890d.remove(treeWalkerTimeLogger);
        }
    }
}
