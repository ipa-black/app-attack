package com.applovin.impl.sdk.network;

import android.content.SharedPreferences;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.e.z;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.k;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinPostbackListener;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class f {

    /* renamed from: a  reason: collision with root package name */
    private final n f5955a;

    /* renamed from: b  reason: collision with root package name */
    private final v f5956b;

    /* renamed from: c  reason: collision with root package name */
    private final int f5957c;

    /* renamed from: d  reason: collision with root package name */
    private final g f5958d;

    /* renamed from: e  reason: collision with root package name */
    private final SharedPreferences f5959e;

    /* renamed from: g  reason: collision with root package name */
    private final ArrayList<h> f5961g;

    /* renamed from: f  reason: collision with root package name */
    private final Object f5960f = new Object();

    /* renamed from: h  reason: collision with root package name */
    private final ArrayList<h> f5962h = new ArrayList<>();
    private long i = 0;
    private final Set<h> j = new HashSet();

    public f(n nVar) {
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f5955a = nVar;
        this.f5956b = nVar.D();
        int intValue = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.cS)).intValue();
        this.f5957c = intValue;
        if (nVar.ad() != null) {
            this.f5959e = nVar.P().getSharedPreferences("com.applovin.sdk.impl.postbackQueue.domain", 0);
            this.f5961g = d();
            this.f5958d = null;
            return;
        }
        g gVar = new g(this, nVar);
        this.f5958d = gVar;
        this.f5961g = gVar.a(intValue);
        gVar.a();
        this.f5959e = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final h hVar, final AppLovinPostbackListener appLovinPostbackListener) {
        if (v.a()) {
            this.f5956b.b("PersistentPostbackManager", "Preparing to submit postback..." + hVar);
        }
        if (this.f5955a.c()) {
            if (v.a()) {
                this.f5956b.b("PersistentPostbackManager", "Skipping postback dispatch because SDK is still initializing - postback will be dispatched afterwards");
                return;
            }
            return;
        }
        synchronized (this.f5960f) {
            if (this.j.contains(hVar)) {
                if (v.a()) {
                    this.f5956b.b("PersistentPostbackManager", "Skip pending postback: " + hVar.b());
                }
                return;
            }
            hVar.l();
            if (this.f5955a.ad() != null) {
                f();
            } else {
                e();
            }
            int intValue = ((Integer) this.f5955a.a(com.applovin.impl.sdk.c.b.cQ)).intValue();
            if (hVar.k() > intValue) {
                if (v.a()) {
                    this.f5956b.d("PersistentPostbackManager", "Exceeded maximum persisted attempt count of " + intValue + ". Dequeuing postback: " + hVar);
                }
                d(hVar);
                return;
            }
            synchronized (this.f5960f) {
                this.j.add(hVar);
            }
            this.f5955a.aa().dispatchPostbackRequest(i.b(this.f5955a).a(hVar.b()).c(hVar.c()).a(hVar.d()).b(hVar.a()).b(hVar.e()).a(hVar.f() != null ? new JSONObject(hVar.f()) : null).d(hVar.h()).c(hVar.g()).g(hVar.i()).g(hVar.j()).a(), new AppLovinPostbackListener() { // from class: com.applovin.impl.sdk.network.f.2
                @Override // com.applovin.sdk.AppLovinPostbackListener
                public void onPostbackFailure(String str, int i) {
                    v unused = f.this.f5956b;
                    if (v.a()) {
                        f.this.f5956b.c("PersistentPostbackManager", "Failed to submit postback with errorCode " + i + ". Will retry later...  Postback: " + hVar);
                    }
                    f.this.e(hVar);
                    k.a(appLovinPostbackListener, str, i);
                }

                @Override // com.applovin.sdk.AppLovinPostbackListener
                public void onPostbackSuccess(String str) {
                    f.this.d(hVar);
                    v unused = f.this.f5956b;
                    if (v.a()) {
                        f.this.f5956b.b("PersistentPostbackManager", "Successfully submitted postback: " + hVar);
                    }
                    f.this.g();
                    k.a(appLovinPostbackListener, str);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(h hVar) {
        synchronized (this.f5960f) {
            if (this.f5955a.ad() != null) {
                this.f5961g.add(hVar);
                f();
            } else {
                while (this.f5961g.size() > this.f5957c) {
                    this.f5961g.remove(0);
                }
                this.f5961g.add(hVar);
                e();
            }
            if (v.a()) {
                this.f5956b.b("PersistentPostbackManager", "Enqueued postback: " + hVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(h hVar) {
        a(hVar, (AppLovinPostbackListener) null);
    }

    private ArrayList<h> d() {
        Set<String> set = (Set) this.f5955a.b(com.applovin.impl.sdk.c.d.p, new LinkedHashSet(0), this.f5959e);
        ArrayList<h> arrayList = new ArrayList<>(Math.max(1, set.size()));
        int intValue = ((Integer) this.f5955a.a(com.applovin.impl.sdk.c.b.cQ)).intValue();
        if (v.a()) {
            this.f5956b.b("PersistentPostbackManager", "Deserializing " + set.size() + " postback(s).");
        }
        for (String str : set) {
            try {
                h hVar = new h(new JSONObject(str), this.f5955a);
                if (hVar.k() < intValue) {
                    arrayList.add(hVar);
                } else if (v.a()) {
                    this.f5956b.b("PersistentPostbackManager", "Skipping deserialization because maximum attempt count exceeded for postback: " + hVar);
                }
            } catch (Throwable th) {
                if (v.a()) {
                    this.f5956b.b("PersistentPostbackManager", "Unable to deserialize postback request from json: " + str, th);
                }
            }
        }
        if (v.a()) {
            this.f5956b.b("PersistentPostbackManager", "Successfully loaded postback queue with " + arrayList.size() + " postback(s).");
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(h hVar) {
        synchronized (this.f5960f) {
            this.j.remove(hVar);
            this.f5961g.remove(hVar);
            if (this.f5955a.ad() != null) {
                f();
            } else {
                e();
            }
        }
        if (v.a()) {
            this.f5956b.b("PersistentPostbackManager", "Dequeued successfully transmitted postback: " + hVar);
        }
    }

    private void e() {
        this.i = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(h hVar) {
        synchronized (this.f5960f) {
            this.j.remove(hVar);
            this.f5962h.add(hVar);
        }
    }

    private void f() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(this.f5961g.size());
        Iterator<h> it = this.f5961g.iterator();
        while (it.hasNext()) {
            try {
                linkedHashSet.add(it.next().n().toString());
            } catch (Throwable th) {
                if (v.a()) {
                    this.f5956b.b("PersistentPostbackManager", "Unable to serialize postback request to JSON.", th);
                }
            }
        }
        this.f5955a.a((com.applovin.impl.sdk.c.d<com.applovin.impl.sdk.c.d<HashSet>>) com.applovin.impl.sdk.c.d.p, (com.applovin.impl.sdk.c.d<HashSet>) linkedHashSet, this.f5959e);
        if (v.a()) {
            this.f5956b.b("PersistentPostbackManager", "Wrote updated postback queue to disk.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        synchronized (this.f5960f) {
            Iterator<h> it = this.f5962h.iterator();
            while (it.hasNext()) {
                c(it.next());
            }
            this.f5962h.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long a() {
        return this.i;
    }

    public void a(h hVar) {
        a(hVar, true);
    }

    public void a(h hVar, boolean z) {
        a(hVar, z, (AppLovinPostbackListener) null);
    }

    public void a(final h hVar, boolean z, final AppLovinPostbackListener appLovinPostbackListener) {
        if (StringUtils.isValidString(hVar.b())) {
            if (z) {
                hVar.m();
            }
            Runnable runnable = new Runnable() { // from class: com.applovin.impl.sdk.network.f.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (f.this.f5960f) {
                        f.this.b(hVar);
                        f.this.a(hVar, appLovinPostbackListener);
                    }
                }
            };
            if (!Utils.isMainThread()) {
                runnable.run();
                return;
            }
            this.f5955a.V().a(new z(this.f5955a, runnable), o.a.POSTBACKS);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<h> b() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f5960f) {
            arrayList.ensureCapacity(this.f5961g.size());
            arrayList.addAll(this.f5961g);
        }
        return arrayList;
    }

    public void c() {
        Runnable runnable = new Runnable() { // from class: com.applovin.impl.sdk.network.f.3
            @Override // java.lang.Runnable
            public void run() {
                synchronized (f.this.f5960f) {
                    if (f.this.f5961g != null) {
                        for (h hVar : new ArrayList(f.this.f5961g)) {
                            f.this.c(hVar);
                        }
                    }
                }
            }
        };
        if (!((Boolean) this.f5955a.a(com.applovin.impl.sdk.c.b.cR)).booleanValue()) {
            runnable.run();
            return;
        }
        this.f5955a.V().a(new z(this.f5955a, runnable), o.a.POSTBACKS);
    }
}
