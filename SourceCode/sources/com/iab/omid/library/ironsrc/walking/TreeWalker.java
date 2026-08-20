package com.iab.omid.library.ironsrc.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.ironsrc.c.a;
import com.iab.omid.library.ironsrc.d.d;
import com.iab.omid.library.ironsrc.d.f;
import com.iab.omid.library.ironsrc.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class TreeWalker implements a.InterfaceC0313a {

    /* renamed from: a  reason: collision with root package name */
    private static TreeWalker f10438a = new TreeWalker();

    /* renamed from: b  reason: collision with root package name */
    private static Handler f10439b = new Handler(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    private static Handler f10440c = null;
    private static final Runnable j = new Runnable() { // from class: com.iab.omid.library.ironsrc.walking.TreeWalker.2
        @Override // java.lang.Runnable
        public final void run() {
            TreeWalker.getInstance().h();
        }
    };
    private static final Runnable k = new Runnable() { // from class: com.iab.omid.library.ironsrc.walking.TreeWalker.3
        @Override // java.lang.Runnable
        public final void run() {
            if (TreeWalker.f10440c != null) {
                TreeWalker.f10440c.post(TreeWalker.j);
                TreeWalker.f10440c.postDelayed(TreeWalker.k, 200L);
            }
        }
    };

    /* renamed from: e  reason: collision with root package name */
    private int f10442e;
    private long i;

    /* renamed from: d  reason: collision with root package name */
    private List<TreeWalkerTimeLogger> f10441d = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private a f10444g = new a();

    /* renamed from: f  reason: collision with root package name */
    private com.iab.omid.library.ironsrc.c.b f10443f = new com.iab.omid.library.ironsrc.c.b();

    /* renamed from: h  reason: collision with root package name */
    private b f10445h = new b(new com.iab.omid.library.ironsrc.walking.a.c());

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
        if (this.f10441d.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f10441d) {
                treeWalkerTimeLogger.onTreeProcessed(this.f10442e, TimeUnit.NANOSECONDS.toMillis(j2));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f10442e, j2);
                }
            }
        }
    }

    private void a(View view, com.iab.omid.library.ironsrc.c.a aVar, JSONObject jSONObject, c cVar) {
        aVar.a(view, jSONObject, this, cVar == c.PARENT_VIEW);
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.ironsrc.c.a b2 = this.f10443f.b();
        String a2 = this.f10444g.a(str);
        if (a2 != null) {
            JSONObject a3 = b2.a(view);
            com.iab.omid.library.ironsrc.d.b.a(a3, str);
            com.iab.omid.library.ironsrc.d.b.b(a3, a2);
            com.iab.omid.library.ironsrc.d.b.a(jSONObject, a3);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        String a2 = this.f10444g.a(view);
        if (a2 != null) {
            com.iab.omid.library.ironsrc.d.b.a(jSONObject, a2);
            this.f10444g.e();
            return true;
        }
        return false;
    }

    private void b(View view, JSONObject jSONObject) {
        a.C0314a b2 = this.f10444g.b(view);
        if (b2 != null) {
            com.iab.omid.library.ironsrc.d.b.a(jSONObject, b2);
        }
    }

    public static TreeWalker getInstance() {
        return f10438a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        i();
        d();
        j();
    }

    private void i() {
        this.f10442e = 0;
        this.i = d.a();
    }

    private void j() {
        a(d.a() - this.i);
    }

    private void k() {
        if (f10440c == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f10440c = handler;
            handler.post(j);
            f10440c.postDelayed(k, 200L);
        }
    }

    private void l() {
        Handler handler = f10440c;
        if (handler != null) {
            handler.removeCallbacks(k);
            f10440c = null;
        }
    }

    public void a() {
        k();
    }

    @Override // com.iab.omid.library.ironsrc.c.a.InterfaceC0313a
    public void a(View view, com.iab.omid.library.ironsrc.c.a aVar, JSONObject jSONObject) {
        c c2;
        if (f.d(view) && (c2 = this.f10444g.c(view)) != c.UNDERLYING_VIEW) {
            JSONObject a2 = aVar.a(view);
            com.iab.omid.library.ironsrc.d.b.a(jSONObject, a2);
            if (!a(view, a2)) {
                b(view, a2);
                a(view, aVar, a2, c2);
            }
            this.f10442e++;
        }
    }

    public void addTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f10441d.contains(treeWalkerTimeLogger)) {
            return;
        }
        this.f10441d.add(treeWalkerTimeLogger);
    }

    public void b() {
        c();
        this.f10441d.clear();
        f10439b.post(new Runnable() { // from class: com.iab.omid.library.ironsrc.walking.TreeWalker.1
            @Override // java.lang.Runnable
            public void run() {
                TreeWalker.this.f10445h.a();
            }
        });
    }

    public void c() {
        l();
    }

    void d() {
        this.f10444g.c();
        long a2 = d.a();
        com.iab.omid.library.ironsrc.c.a a3 = this.f10443f.a();
        if (this.f10444g.b().size() > 0) {
            Iterator<String> it = this.f10444g.b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject a4 = a3.a(null);
                a(next, this.f10444g.b(next), a4);
                com.iab.omid.library.ironsrc.d.b.a(a4);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.f10445h.b(a4, hashSet, a2);
            }
        }
        if (this.f10444g.a().size() > 0) {
            JSONObject a5 = a3.a(null);
            a(null, a3, a5, c.PARENT_VIEW);
            com.iab.omid.library.ironsrc.d.b.a(a5);
            this.f10445h.a(a5, this.f10444g.a(), a2);
        } else {
            this.f10445h.a();
        }
        this.f10444g.d();
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f10441d.contains(treeWalkerTimeLogger)) {
            this.f10441d.remove(treeWalkerTimeLogger);
        }
    }
}
