package com.appodeal.ads;

import com.appodeal.ads.api.Stats;
import com.appodeal.ads.l;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.modules.common.internal.adtype.AdType;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.networking.binders.b;
import com.appodeal.ads.utils.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class r<AdObjectType extends l> {
    public JSONObject G;
    public r<AdObjectType> H;

    /* renamed from: h  reason: collision with root package name */
    public boolean f7340h;
    public boolean i;
    public String j;
    public b.a.InterfaceC0131a l;
    public AdObjectType s;
    public double t;

    /* renamed from: a  reason: collision with root package name */
    public ArrayList f7333a = new ArrayList(0);

    /* renamed from: b  reason: collision with root package name */
    public ArrayList f7334b = new ArrayList(0);

    /* renamed from: c  reason: collision with root package name */
    public final CopyOnWriteArrayList f7335c = new CopyOnWriteArrayList();

    /* renamed from: d  reason: collision with root package name */
    public final CopyOnWriteArrayList f7336d = new CopyOnWriteArrayList();

    /* renamed from: e  reason: collision with root package name */
    public final CopyOnWriteArrayList f7337e = new CopyOnWriteArrayList();

    /* renamed from: f  reason: collision with root package name */
    public final CopyOnWriteArrayList f7338f = new CopyOnWriteArrayList();

    /* renamed from: g  reason: collision with root package name */
    public final CopyOnWriteArrayList f7339g = new CopyOnWriteArrayList();
    public Long k = null;
    public long m = 0;
    public long n = 0;
    public long o = 0;
    public final AtomicLong p = new AtomicLong(0);
    public final HashMap q = new HashMap();
    public final String r = UUID.randomUUID().toString();
    public boolean u = false;
    public boolean v = false;
    public boolean w = false;
    public boolean x = false;
    public boolean y = false;
    public boolean z = false;
    public boolean A = false;
    public boolean B = false;
    public boolean C = false;
    public boolean D = false;
    public boolean E = false;
    public boolean F = false;
    public final a I = new a();

    /* loaded from: classes.dex */
    public class a extends t<AdObjectType> {
    }

    public r(s sVar) {
        if (sVar != null) {
            this.f7340h = sVar.b();
            this.i = sVar.c();
        }
    }

    public final int a() {
        return this.f7334b.size() + this.f7333a.size();
    }

    public final JSONObject a(int i) {
        if (i < this.f7333a.size()) {
            return (JSONObject) this.f7333a.get(i);
        }
        return null;
    }

    public final JSONObject a(int i, boolean z, boolean z2) {
        JSONObject jSONObject;
        ArrayList arrayList;
        if (z && this.f7334b.size() > i) {
            jSONObject = (JSONObject) this.f7334b.get(i);
            if (!this.i) {
                arrayList = this.f7334b;
                arrayList.remove(i);
            }
        } else if (this.f7333a.size() > i) {
            jSONObject = (JSONObject) this.f7333a.get(i);
            if (!this.i) {
                arrayList = this.f7333a;
                arrayList.remove(i);
            }
        } else {
            jSONObject = null;
        }
        if (z2 && !this.i) {
            this.f7333a.clear();
            this.f7334b.clear();
        }
        return jSONObject;
    }

    public void a(Stats.Builder builder) {
    }

    public final void a(d0 d0Var) {
        this.f7339g.add(d0Var);
    }

    public final void a(AdObjectType adobjecttype) {
        this.f7337e.add(adobjecttype);
    }

    public final void a(l lVar, String str, Object obj) {
        if (str != null && obj != null) {
            str = "(" + obj + ") " + str;
        } else if (str == null) {
            str = "(network not provided any appropriate text or code)";
        }
        a(lVar, str);
    }

    public final void a(b.a.InterfaceC0131a interfaceC0131a) {
        this.l = interfaceC0131a;
    }

    public final void a(Long l) {
        this.k = l;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0017, code lost:
        if (r5 == false) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(boolean r5, boolean r6) {
        /*
            r4 = this;
            boolean r0 = r4.w
            if (r0 != 0) goto L15
            if (r5 == 0) goto L15
            java.util.concurrent.atomic.AtomicLong r6 = r4.p
            long r0 = java.lang.System.currentTimeMillis()
            r2 = 0
            r6.compareAndSet(r2, r0)
            r6 = 0
        L12:
            r4.x = r6
            goto L1a
        L15:
            if (r0 == 0) goto L1a
            if (r5 != 0) goto L1a
            goto L12
        L1a:
            r4.w = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.r.a(boolean, boolean):void");
    }

    public final boolean a(AdObjectType adobjecttype, com.appodeal.ads.segments.g gVar, AdType adType) {
        try {
            if (adobjecttype.f()) {
                boolean z = true;
                int i = 0;
                while (i < adobjecttype.f6828e.size()) {
                    String str = (String) adobjecttype.f6828e.get(i);
                    if (!this.q.containsKey(str)) {
                        return true;
                    }
                    l lVar = (l) this.q.get(str);
                    if (lVar != null && !gVar.a(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), adType, lVar.f6826c.getEcpm())) {
                        String id = lVar.f6826c.getId();
                        try {
                            Iterator it = this.q.values().iterator();
                            while (it.hasNext()) {
                                if (((l) it.next()).f6826c.getId().equals(id)) {
                                    it.remove();
                                }
                            }
                        } catch (Exception e2) {
                            Log.log(e2);
                        }
                        return true;
                    }
                    i++;
                    z = false;
                }
                return z;
            }
            return true;
        } catch (Exception e3) {
            Log.log(e3);
            return true;
        }
    }

    public final void b(d0 d0Var) {
        this.f7339g.remove(d0Var);
    }

    public final void b(AdObjectType adobjecttype) {
        if (adobjecttype == null || this.f7335c.contains(adobjecttype)) {
            return;
        }
        this.f7335c.add(adobjecttype);
    }

    public final void b(String str) {
        this.j = str;
    }

    public final boolean b() {
        return !this.f7340h && (!(this.u || u()) || this.C);
    }

    public final void c() {
        if (this.B) {
            this.f7333a.clear();
            this.f7334b.clear();
            this.f7337e.clear();
            this.f7335c.clear();
            this.f7336d.clear();
            this.f7339g.clear();
            this.f7338f.clear();
            this.E = true;
            AdObjectType adobjecttype = this.s;
            if (adobjecttype != null) {
                adobjecttype.k();
                this.s = null;
                this.I.f7668a = null;
                this.u = false;
                this.v = false;
            }
            try {
                Iterator it = this.q.values().iterator();
                while (it.hasNext()) {
                    l lVar = (l) it.next();
                    if (lVar != null) {
                        lVar.k();
                    }
                    it.remove();
                }
            } catch (Exception e2) {
                Log.log(e2);
            }
        }
    }

    public final void c(AdObjectType adobjecttype) {
        if (this.f7336d.contains(adobjecttype)) {
            return;
        }
        this.f7336d.add(adobjecttype);
    }

    public final b.a.InterfaceC0131a d() {
        return this.l;
    }

    public final void d(l lVar) {
        if (lVar == null) {
            return;
        }
        Iterator it = this.f7335c.iterator();
        while (it.hasNext()) {
            l lVar2 = (l) it.next();
            if (lVar2.f6826c.getId().equals(lVar.f6826c.getId())) {
                this.f7335c.remove(lVar2);
                return;
            }
        }
        this.f7339g.remove(lVar);
    }

    public final long e() {
        return this.n;
    }

    public abstract void e(AdObjectType adobjecttype);

    public final long f() {
        return this.o;
    }

    public final String g() {
        return this.r;
    }

    public final AdObjectType h() {
        return this.s;
    }

    public final HashMap i() {
        return this.q;
    }

    public final List<JSONObject> j() {
        return this.f7334b;
    }

    public final List<JSONObject> k() {
        return this.f7333a;
    }

    public final Long l() {
        return this.k;
    }

    public final long m() {
        return this.m;
    }

    public abstract AdType n();

    public final String o() {
        return this.j;
    }

    public final boolean p() {
        return this.u;
    }

    public final boolean q() {
        return this.f7340h;
    }

    public final boolean r() {
        return this.F;
    }

    public final boolean s() {
        return this.z;
    }

    public final boolean t() {
        return this.i;
    }

    public final boolean u() {
        return this.w && System.currentTimeMillis() - this.p.get() <= 120000;
    }

    public final boolean v() {
        return (this.C || this.u || !this.v) ? false : true;
    }

    public final Stats.Builder w() {
        Stats.Builder newBuilder = Stats.newBuilder();
        newBuilder.setStart(this.p.get());
        newBuilder.setSuccessful(this.u || this.v);
        newBuilder.setCompleted(this.x);
        Iterator it = this.f7339g.iterator();
        long j = 0;
        while (it.hasNext()) {
            f5 f5Var = (f5) it.next();
            if (f5Var.getRequestResult() == null) {
                LoadingError loadingError = LoadingError.Canceled;
                if (f5Var.getRequestResult() == null) {
                    f5Var.a(loadingError != null ? loadingError.getRequestResult() : e0.Exception);
                    f5Var.a(System.currentTimeMillis());
                }
            }
            newBuilder.addAdUnit(f5Var.a());
            j = Math.max(j, f5Var.c());
        }
        newBuilder.setFinish(j);
        a(newBuilder);
        return newBuilder;
    }

    public final Long x() {
        Long l = this.k;
        return Long.valueOf(l == null ? -1L : l.longValue());
    }

    public final void y() {
        this.C = false;
        this.B = false;
        this.v = false;
        this.u = false;
        this.y = false;
        this.A = false;
        this.D = false;
        this.z = false;
    }

    public final void z() {
        a(true, false);
    }

    public final void a(com.appodeal.ads.waterfall_filter.a aVar) {
        com.appodeal.ads.waterfall_filter.d dVar = aVar.f7884e;
        this.f7333a = dVar.f7892b;
        this.f7334b = dVar.f7891a;
    }

    public final AdObjectType a(String str) {
        if (str != null && this.q.containsKey(str)) {
            return (AdObjectType) this.q.get(str);
        }
        return this.s;
    }

    public final void a(l lVar, String str) {
        if (lVar == null || lVar.getRequestResult() == e0.TimeOutReached || this.F || this.C) {
            return;
        }
        Log.log(n().getDisplayName(), LogConstants.EVENT_NETWORK_ERROR, String.format("%s - %s", n5.a(lVar.getStatus()), str));
    }

    public final void a(JSONObject jSONObject) {
        this.G = jSONObject;
        if (jSONObject != null) {
            this.f7333a.add(jSONObject);
        }
    }
}
