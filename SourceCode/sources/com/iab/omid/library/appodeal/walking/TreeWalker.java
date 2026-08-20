package com.iab.omid.library.appodeal.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.appodeal.c.a;
import com.iab.omid.library.appodeal.d.d;
import com.iab.omid.library.appodeal.d.f;
import com.iab.omid.library.appodeal.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class TreeWalker implements a.InterfaceC0307a {

    /* renamed from: a  reason: collision with root package name */
    private static TreeWalker f10215a = new TreeWalker();

    /* renamed from: b  reason: collision with root package name */
    private static Handler f10216b = new Handler(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    private static Handler f10217c = null;
    private static final Runnable j = new Runnable() { // from class: com.iab.omid.library.appodeal.walking.TreeWalker.2
        @Override // java.lang.Runnable
        public void run() {
            TreeWalker.getInstance().h();
        }
    };
    private static final Runnable k = new Runnable() { // from class: com.iab.omid.library.appodeal.walking.TreeWalker.3
        @Override // java.lang.Runnable
        public void run() {
            if (TreeWalker.f10217c != null) {
                TreeWalker.f10217c.post(TreeWalker.j);
                TreeWalker.f10217c.postDelayed(TreeWalker.k, 200L);
            }
        }
    };

    /* renamed from: e  reason: collision with root package name */
    private int f10219e;
    private long i;

    /* renamed from: d  reason: collision with root package name */
    private List<TreeWalkerTimeLogger> f10218d = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private a f10221g = new a();

    /* renamed from: f  reason: collision with root package name */
    private com.iab.omid.library.appodeal.c.b f10220f = new com.iab.omid.library.appodeal.c.b();

    /* renamed from: h  reason: collision with root package name */
    private b f10222h = new b(new com.iab.omid.library.appodeal.walking.a.c());

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

    private void a(long j2) {
        if (this.f10218d.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f10218d) {
                treeWalkerTimeLogger.onTreeProcessed(this.f10219e, TimeUnit.NANOSECONDS.toMillis(j2));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f10219e, j2);
                }
            }
        }
    }

    private void a(View view, com.iab.omid.library.appodeal.c.a aVar, JSONObject jSONObject, c cVar) {
        aVar.a(view, jSONObject, this, cVar == c.PARENT_VIEW);
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.appodeal.c.a b2 = this.f10220f.b();
        String a2 = this.f10221g.a(str);
        if (a2 != null) {
            JSONObject a3 = b2.a(view);
            com.iab.omid.library.appodeal.d.b.a(a3, str);
            com.iab.omid.library.appodeal.d.b.b(a3, a2);
            com.iab.omid.library.appodeal.d.b.a(jSONObject, a3);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        String a2 = this.f10221g.a(view);
        if (a2 != null) {
            com.iab.omid.library.appodeal.d.b.a(jSONObject, a2);
            this.f10221g.e();
            return true;
        }
        return false;
    }

    private void b(View view, JSONObject jSONObject) {
        a.C0308a b2 = this.f10221g.b(view);
        if (b2 != null) {
            com.iab.omid.library.appodeal.d.b.a(jSONObject, b2);
        }
    }

    public static TreeWalker getInstance() {
        return f10215a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        i();
        d();
        j();
    }

    private void i() {
        this.f10219e = 0;
        this.i = d.a();
    }

    private void j() {
        a(d.a() - this.i);
    }

    private void k() {
        if (f10217c == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f10217c = handler;
            handler.post(j);
            f10217c.postDelayed(k, 200L);
        }
    }

    private void l() {
        Handler handler = f10217c;
        if (handler != null) {
            handler.removeCallbacks(k);
            f10217c = null;
        }
    }

    public void a() {
        k();
    }

    @Override // com.iab.omid.library.appodeal.c.a.InterfaceC0307a
    public void a(View view, com.iab.omid.library.appodeal.c.a aVar, JSONObject jSONObject) {
        c c2;
        if (f.d(view) && (c2 = this.f10221g.c(view)) != c.UNDERLYING_VIEW) {
            JSONObject a2 = aVar.a(view);
            com.iab.omid.library.appodeal.d.b.a(jSONObject, a2);
            if (!a(view, a2)) {
                b(view, a2);
                a(view, aVar, a2, c2);
            }
            this.f10219e++;
        }
    }

    public void addTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f10218d.contains(treeWalkerTimeLogger)) {
            return;
        }
        this.f10218d.add(treeWalkerTimeLogger);
    }

    public void b() {
        c();
        this.f10218d.clear();
        f10216b.post(new Runnable() { // from class: com.iab.omid.library.appodeal.walking.TreeWalker.1
            @Override // java.lang.Runnable
            public void run() {
                TreeWalker.this.f10222h.a();
            }
        });
    }

    public void c() {
        l();
    }

    void d() {
        this.f10221g.c();
        long a2 = d.a();
        com.iab.omid.library.appodeal.c.a a3 = this.f10220f.a();
        if (this.f10221g.b().size() > 0) {
            Iterator<String> it = this.f10221g.b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject a4 = a3.a(null);
                a(next, this.f10221g.b(next), a4);
                com.iab.omid.library.appodeal.d.b.a(a4);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.f10222h.b(a4, hashSet, a2);
            }
        }
        if (this.f10221g.a().size() > 0) {
            JSONObject a5 = a3.a(null);
            a(null, a3, a5, c.PARENT_VIEW);
            com.iab.omid.library.appodeal.d.b.a(a5);
            this.f10222h.a(a5, this.f10221g.a(), a2);
        } else {
            this.f10222h.a();
        }
        this.f10221g.d();
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f10218d.contains(treeWalkerTimeLogger)) {
            this.f10218d.remove(treeWalkerTimeLogger);
        }
    }
}
