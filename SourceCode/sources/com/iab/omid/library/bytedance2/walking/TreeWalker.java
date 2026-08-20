package com.iab.omid.library.bytedance2.walking;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import com.iab.omid.library.bytedance2.processor.a;
import com.iab.omid.library.bytedance2.utils.f;
import com.iab.omid.library.bytedance2.utils.h;
import com.iab.omid.library.bytedance2.walking.a;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class TreeWalker implements a.InterfaceC0310a {
    private static TreeWalker i = new TreeWalker();
    private static Handler j = new Handler(Looper.getMainLooper());
    private static Handler k = null;
    private static final Runnable l = new b();
    private static final Runnable m = new c();

    /* renamed from: b  reason: collision with root package name */
    private int f10331b;

    /* renamed from: h  reason: collision with root package name */
    private long f10337h;

    /* renamed from: a  reason: collision with root package name */
    private List<TreeWalkerTimeLogger> f10330a = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private boolean f10332c = false;

    /* renamed from: d  reason: collision with root package name */
    private final List<com.iab.omid.library.bytedance2.weakreference.a> f10333d = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private com.iab.omid.library.bytedance2.walking.a f10335f = new com.iab.omid.library.bytedance2.walking.a();

    /* renamed from: e  reason: collision with root package name */
    private com.iab.omid.library.bytedance2.processor.b f10334e = new com.iab.omid.library.bytedance2.processor.b();

    /* renamed from: g  reason: collision with root package name */
    private com.iab.omid.library.bytedance2.walking.b f10336g = new com.iab.omid.library.bytedance2.walking.b(new com.iab.omid.library.bytedance2.walking.async.c());

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
            TreeWalker.this.f10336g.b();
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
        if (this.f10330a.size() > 0) {
            for (TreeWalkerTimeLogger treeWalkerTimeLogger : this.f10330a) {
                treeWalkerTimeLogger.onTreeProcessed(this.f10331b, TimeUnit.NANOSECONDS.toMillis(j2));
                if (treeWalkerTimeLogger instanceof TreeWalkerNanoTimeLogger) {
                    ((TreeWalkerNanoTimeLogger) treeWalkerTimeLogger).onTreeProcessedNano(this.f10331b, j2);
                }
            }
        }
    }

    private void a(View view, com.iab.omid.library.bytedance2.processor.a aVar, JSONObject jSONObject, com.iab.omid.library.bytedance2.walking.c cVar, boolean z) {
        aVar.a(view, jSONObject, this, cVar == com.iab.omid.library.bytedance2.walking.c.PARENT_VIEW, z);
    }

    private void a(String str, View view, JSONObject jSONObject) {
        com.iab.omid.library.bytedance2.processor.a b2 = this.f10334e.b();
        String b3 = this.f10335f.b(str);
        if (b3 != null) {
            JSONObject a2 = b2.a(view);
            com.iab.omid.library.bytedance2.utils.c.a(a2, str);
            com.iab.omid.library.bytedance2.utils.c.b(a2, b3);
            com.iab.omid.library.bytedance2.utils.c.a(jSONObject, a2);
        }
    }

    private boolean a(View view, JSONObject jSONObject) {
        a.C0311a c2 = this.f10335f.c(view);
        if (c2 != null) {
            com.iab.omid.library.bytedance2.utils.c.a(jSONObject, c2);
            return true;
        }
        return false;
    }

    private boolean b(View view, JSONObject jSONObject) {
        String d2 = this.f10335f.d(view);
        if (d2 != null) {
            com.iab.omid.library.bytedance2.utils.c.a(jSONObject, d2);
            com.iab.omid.library.bytedance2.utils.c.a(jSONObject, Boolean.valueOf(this.f10335f.f(view)));
            this.f10335f.d();
            return true;
        }
        return false;
    }

    private void d() {
        a(f.b() - this.f10337h);
    }

    private void e() {
        this.f10331b = 0;
        this.f10333d.clear();
        this.f10332c = false;
        Iterator<com.iab.omid.library.bytedance2.adsession.a> it = com.iab.omid.library.bytedance2.internal.c.c().a().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().e()) {
                this.f10332c = true;
                break;
            }
        }
        this.f10337h = f.b();
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

    @Override // com.iab.omid.library.bytedance2.processor.a.InterfaceC0310a
    public void a(View view, com.iab.omid.library.bytedance2.processor.a aVar, JSONObject jSONObject, boolean z) {
        com.iab.omid.library.bytedance2.walking.c e2;
        if (h.d(view) && (e2 = this.f10335f.e(view)) != com.iab.omid.library.bytedance2.walking.c.UNDERLYING_VIEW) {
            JSONObject a2 = aVar.a(view);
            com.iab.omid.library.bytedance2.utils.c.a(jSONObject, a2);
            if (!b(view, a2)) {
                boolean z2 = z || a(view, a2);
                if (this.f10332c && e2 == com.iab.omid.library.bytedance2.walking.c.OBSTRUCTION_VIEW && !z2) {
                    this.f10333d.add(new com.iab.omid.library.bytedance2.weakreference.a(view));
                }
                a(view, aVar, a2, e2, z2);
            }
            this.f10331b++;
        }
    }

    public void addTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f10330a.contains(treeWalkerTimeLogger)) {
            return;
        }
        this.f10330a.add(treeWalkerTimeLogger);
    }

    void f() {
        this.f10335f.e();
        long b2 = f.b();
        com.iab.omid.library.bytedance2.processor.a a2 = this.f10334e.a();
        if (this.f10335f.b().size() > 0) {
            Iterator<String> it = this.f10335f.b().iterator();
            while (it.hasNext()) {
                String next = it.next();
                JSONObject a3 = a2.a(null);
                a(next, this.f10335f.a(next), a3);
                com.iab.omid.library.bytedance2.utils.c.b(a3);
                HashSet<String> hashSet = new HashSet<>();
                hashSet.add(next);
                this.f10336g.a(a3, hashSet, b2);
            }
        }
        if (this.f10335f.c().size() > 0) {
            JSONObject a4 = a2.a(null);
            a(null, a2, a4, com.iab.omid.library.bytedance2.walking.c.PARENT_VIEW, false);
            com.iab.omid.library.bytedance2.utils.c.b(a4);
            this.f10336g.b(a4, this.f10335f.c(), b2);
            if (this.f10332c) {
                for (com.iab.omid.library.bytedance2.adsession.a aVar : com.iab.omid.library.bytedance2.internal.c.c().a()) {
                    aVar.a(this.f10333d);
                }
            }
        } else {
            this.f10336g.b();
        }
        this.f10335f.a();
    }

    public void g() {
        k();
    }

    public void h() {
        i();
    }

    public void j() {
        g();
        this.f10330a.clear();
        j.post(new a());
    }

    public void removeTimeLogger(TreeWalkerTimeLogger treeWalkerTimeLogger) {
        if (this.f10330a.contains(treeWalkerTimeLogger)) {
            this.f10330a.remove(treeWalkerTimeLogger);
        }
    }
}
