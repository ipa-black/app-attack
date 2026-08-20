package com.appodeal.ads;

import android.os.Handler;
import android.text.TextUtils;
import com.appodeal.ads.Native;
import com.appodeal.ads.l;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.networking.LoadingError;
import com.appodeal.ads.o1;
import com.appodeal.ads.r;
import com.appodeal.ads.unified.UnifiedAdCallbackClickTrackListener;
import com.appodeal.ads.utils.EventsTracker;
import com.appodeal.ads.utils.ExchangeAd;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.utils.o;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class b0<AdObjectType extends l, AdRequestType extends r<AdObjectType>, ReferenceObjectType> {

    /* renamed from: a  reason: collision with root package name */
    public u<AdObjectType, AdRequestType, ?> f6556a;

    /* renamed from: b  reason: collision with root package name */
    public final g<AdRequestType, AdObjectType, ReferenceObjectType> f6557b;

    public b0(g<AdRequestType, AdObjectType, ReferenceObjectType> gVar) {
        this.f6557b = gVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(r rVar, l lVar, Object obj) {
        this.f6557b.a(rVar, lVar, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(r rVar, l lVar, Object obj, LoadingError loadingError) {
        this.f6557b.b(rVar, lVar, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(r rVar, l lVar) {
        this.f6557b.b(rVar, lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(r rVar, l lVar) {
        this.f6557b.e(rVar, lVar);
    }

    public void a(r rVar, j1 j1Var) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void a(t2 t2Var, l lVar) {
        a((b0<AdObjectType, AdRequestType, ReferenceObjectType>) t2Var, (t2) lVar, (LoadingError) null);
    }

    public final void a(u<AdObjectType, AdRequestType, ?> uVar) {
        this.f6556a = uVar;
    }

    @Deprecated
    public boolean a() {
        return !(this instanceof Native.b);
    }

    public boolean a(AdRequestType adrequesttype, AdObjectType adobjecttype) {
        return adrequesttype.v;
    }

    public final void b(AdRequestType adrequesttype) {
        this.f6556a.a((u<AdObjectType, AdRequestType, ?>) adrequesttype, 0, false, false);
    }

    public boolean b() {
        return this instanceof o1.b;
    }

    public boolean b(r rVar, l lVar, l2 l2Var) {
        return rVar.z;
    }

    public boolean c(r rVar, l lVar, l2 l2Var) {
        return rVar.C;
    }

    public final void d(final r rVar, final l lVar, final l2 l2Var) {
        h5.f6714a.post(new Runnable() { // from class: com.appodeal.ads.b0$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                b0.this.a(rVar, lVar, l2Var);
            }
        });
    }

    public boolean d(AdRequestType adrequesttype) {
        return true;
    }

    public com.appodeal.ads.segments.g e(r rVar, l lVar, l2 l2Var) {
        return this.f6556a.e();
    }

    public final void f(final AdRequestType adrequesttype, final AdObjectType adobjecttype) {
        h5.f6714a.post(new Runnable() { // from class: com.appodeal.ads.b0$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                b0.this.c(adrequesttype, adobjecttype);
            }
        });
    }

    public abstract void f(r rVar, l lVar, l2 l2Var);

    public final void g(final AdRequestType adrequesttype, final AdObjectType adobjecttype) {
        h5.f6714a.post(new Runnable() { // from class: com.appodeal.ads.b0$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                b0.this.d(adrequesttype, adobjecttype);
            }
        });
    }

    public abstract void g(r rVar, l lVar, l2 l2Var);

    public void h(AdRequestType adrequesttype, AdObjectType adobjecttype) {
    }

    public abstract void h(r rVar, l lVar, l2 l2Var);

    public void i(r rVar, l lVar) {
    }

    public final void i(r rVar, l lVar, l2 l2Var) {
        try {
            if (b(rVar, lVar, l2Var)) {
                return;
            }
            rVar.z = true;
            rVar.o = System.currentTimeMillis();
            lVar.getClass();
            com.appodeal.ads.utils.d0.a(lVar);
            ExchangeAd exchangeAd = lVar.i;
            if (exchangeAd != null) {
                exchangeAd.trackFinish();
            }
            UnifiedAdType unifiedadtype = lVar.f6829f;
            if (unifiedadtype != 0) {
                unifiedadtype.onFinished();
            }
            if (lVar.q == 0) {
                lVar.q = System.currentTimeMillis();
            }
            this.f6556a.a(LogConstants.EVENT_FINISHED, lVar, (LoadingError) null);
            EventsTracker.get().a(this.f6556a.f7691f, lVar, EventsTracker.EventType.Finish);
            k0.a(rVar, lVar, Integer.valueOf(e(rVar, lVar, l2Var).f7504a), Double.valueOf(this.f6556a.h()));
            g(rVar, lVar, l2Var);
            h5.f6714a.post(new z(this, rVar, lVar, l2Var));
        } catch (Exception e2) {
            Log.log(e2);
        }
    }

    public void j(r rVar, l lVar) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final synchronized void j(r rVar, l lVar, l2 l2Var) {
        if (rVar != 0) {
            try {
                if (!c(rVar, lVar, l2Var)) {
                    rVar.C = true;
                    rVar.m = System.currentTimeMillis();
                    rVar.a(false, true);
                    if (!rVar.B) {
                        o(rVar, lVar);
                    }
                    a((b0<AdObjectType, AdRequestType, ReferenceObjectType>) rVar);
                    com.appodeal.ads.utils.o.b(lVar);
                    com.appodeal.ads.utils.y.a(this.f6556a.f7691f);
                    q4.a(this.f6556a.f7691f, lVar.f6825b.getName(), lVar.f6827d, lVar.f6826c.getAdUnitName(), e(rVar, lVar, l2Var), lVar.f6826c.getEcpm());
                    this.f6556a.a(LogConstants.EVENT_SHOWN, lVar, (LoadingError) null);
                    rVar.u = false;
                    rVar.v = false;
                    rVar.e(lVar);
                    if (b()) {
                        UnifiedAdType unifiedadtype = lVar.f6829f;
                        if (unifiedadtype != 0) {
                            unifiedadtype.onShow();
                        }
                        if (lVar.n == 0) {
                            lVar.n = System.currentTimeMillis();
                        }
                    }
                    lVar.b(this.f6556a.e().f7504a);
                    EventsTracker.get().a(this.f6556a.f7691f, lVar, EventsTracker.EventType.Impression);
                    k0.b(rVar, lVar, Integer.valueOf(e(rVar, lVar, l2Var).f7504a), Double.valueOf(this.f6556a.h()));
                    h(rVar, lVar, l2Var);
                    h5.f6714a.post(new a0(this, rVar, lVar, l2Var));
                }
            } catch (Exception e2) {
                Log.log(e2);
            }
        }
    }

    public final void k(AdRequestType adrequesttype, AdObjectType adobjecttype) {
        if (!adobjecttype.f()) {
            if (adobjecttype.f6826c.isPrecache()) {
                adrequesttype.v = true;
            } else {
                adrequesttype.u = true;
            }
            com.appodeal.ads.utils.o.b(adrequesttype.s);
            AdObjectType adobjecttype2 = adrequesttype.s;
            if (adobjecttype2 != null && adobjecttype2 != adobjecttype && !adobjecttype2.f()) {
                adobjecttype2.k();
            }
            adrequesttype.s = adobjecttype;
            AdRequestType adrequesttype2 = this.f6556a.x;
            if (adrequesttype2 == null || adrequesttype2 != adrequesttype) {
                adrequesttype.a(false, true);
                return;
            } else if (adobjecttype.f6826c.isPrecache()) {
                return;
            } else {
                adrequesttype.a(false, false);
                return;
            }
        }
        adrequesttype.getClass();
        for (int i = 0; i < adobjecttype.f6828e.size(); i++) {
            try {
                String str = (String) adobjecttype.f6828e.get(i);
                l lVar = (l) adrequesttype.q.get(str);
                if (lVar == null || adobjecttype.f6826c.getEcpm() > lVar.f6826c.getEcpm()) {
                    adrequesttype.q.put(str, adobjecttype);
                }
            } catch (Exception e2) {
                Log.log(e2);
            }
        }
        adrequesttype.f7335c.remove(adobjecttype);
    }

    public abstract boolean k(r rVar, l lVar, l2 l2Var);

    public void l(AdRequestType adrequesttype, AdObjectType adobjecttype) {
        adrequesttype.t = adobjecttype.f6826c.getEcpm();
    }

    /* renamed from: m */
    public final void e(AdRequestType adrequesttype, AdObjectType adobjecttype) {
        u<AdObjectType, AdRequestType, ?> uVar = this.f6556a;
        AdRequestType adrequesttype2 = uVar.x;
        if (adrequesttype2 != null && adrequesttype2 == adrequesttype && uVar.f7692g.contains(adrequesttype)) {
            this.f6556a.a(LogConstants.EVENT_EXPIRED, adobjecttype, (LoadingError) null);
            EventsTracker.get().a(this.f6556a.f7691f, adobjecttype, EventsTracker.EventType.Expired);
            if (!a()) {
                if (adobjecttype != null) {
                    com.appodeal.ads.utils.o.b(adobjecttype);
                    String id = adobjecttype.f6826c.getId();
                    adrequesttype.getClass();
                    try {
                        Iterator it = adrequesttype.q.values().iterator();
                        while (it.hasNext()) {
                            if (((l) it.next()).f6826c.getId().equals(id)) {
                                it.remove();
                            }
                        }
                    } catch (Exception e2) {
                        Log.log(e2);
                    }
                }
                AdObjectType adobjecttype2 = adrequesttype.s;
                if (adobjecttype2 != null) {
                    adobjecttype2.k();
                    adrequesttype.s = null;
                    adrequesttype.I.f7668a = null;
                    adrequesttype.u = false;
                    adrequesttype.v = false;
                }
            } else if (adobjecttype.f()) {
                com.appodeal.ads.utils.o.b(adobjecttype);
                String id2 = adobjecttype.f6826c.getId();
                adrequesttype.getClass();
                try {
                    Iterator it2 = adrequesttype.q.values().iterator();
                    while (it2.hasNext()) {
                        if (((l) it2.next()).f6826c.getId().equals(id2)) {
                            it2.remove();
                        }
                    }
                } catch (Exception e3) {
                    Log.log(e3);
                }
                adobjecttype.k();
                return;
            } else {
                AdObjectType adobjecttype3 = adrequesttype.s;
                if (adobjecttype3 == null || adobjecttype3 != adobjecttype) {
                    return;
                }
                com.appodeal.ads.utils.o.b(adobjecttype);
                com.appodeal.ads.utils.o.a(adrequesttype.q.values());
                AdObjectType adobjecttype4 = adrequesttype.s;
                if (adobjecttype4 != null) {
                    adobjecttype4.k();
                    adrequesttype.s = null;
                    adrequesttype.I.f7668a = null;
                    adrequesttype.u = false;
                    adrequesttype.v = false;
                }
                try {
                    Iterator it3 = adrequesttype.q.values().iterator();
                    while (it3.hasNext()) {
                        l lVar = (l) it3.next();
                        if (lVar != null) {
                            lVar.k();
                        }
                        it3.remove();
                    }
                } catch (Exception e4) {
                    Log.log(e4);
                }
            }
            adrequesttype.y();
            h(adrequesttype, adobjecttype);
            f(adrequesttype, adobjecttype);
        }
    }

    public final void n(final AdRequestType adrequesttype, AdObjectType adobjecttype) {
        AdObjectType adobjecttype2;
        AdObjectType adobjecttype3;
        AdObjectType adobjecttype4;
        if (adrequesttype != null) {
            try {
                if (!adrequesttype.F && !adrequesttype.C && !adrequesttype.B) {
                    AdRequestType adrequesttype2 = this.f6556a.y;
                    if (adrequesttype2 != null && adrequesttype2 == adrequesttype) {
                        if (adobjecttype == null || (adobjecttype4 = adrequesttype.s) == null || adobjecttype4 != adobjecttype) {
                            adobjecttype.k();
                            return;
                        }
                        return;
                    } else if (adobjecttype.l == 3) {
                        adobjecttype.k();
                        return;
                    } else {
                        if (adrequesttype.f7337e.contains(adobjecttype)) {
                            adrequesttype.f7337e.remove(adobjecttype);
                        }
                        adobjecttype.l = 2;
                        this.f6556a.a(LogConstants.EVENT_LOADED, adobjecttype, (LoadingError) null);
                        ExchangeAd exchangeAd = adobjecttype.i;
                        if (exchangeAd != null) {
                            exchangeAd.trackFill();
                        }
                        UnifiedAdType unifiedadtype = adobjecttype.f6829f;
                        if (unifiedadtype != 0) {
                            unifiedadtype.onLoaded();
                        }
                        if (!adrequesttype.f7338f.contains(adobjecttype)) {
                            adrequesttype.f7338f.add(adobjecttype);
                        }
                        if ((!TextUtils.isEmpty(adobjecttype.f6826c.getId())) && adobjecttype.f6826c.getRequestResult() == null) {
                            adobjecttype.f6826c.a(e0.Successful);
                            adobjecttype.f6826c.a(System.currentTimeMillis());
                        }
                        r.a aVar = adrequesttype.I;
                        aVar.getClass();
                        if (!adobjecttype.f() && ((adobjecttype2 = aVar.f7668a) == null || adobjecttype2.f6826c.getEcpm() < adobjecttype.f6826c.getEcpm())) {
                            aVar.f7668a = adobjecttype;
                        }
                        AdObjectType adobjecttype5 = adrequesttype.I.f7668a;
                        if (adobjecttype5 == null) {
                            adobjecttype5 = adobjecttype;
                        }
                        if (adobjecttype5.f() || (adobjecttype3 = adrequesttype.s) == null || adobjecttype3 == adobjecttype || adobjecttype3.f6826c.getEcpm() < adobjecttype5.f6826c.getEcpm()) {
                            l(adrequesttype, adobjecttype5);
                            k(adrequesttype, adobjecttype5);
                        }
                        q4.k().c(this.f6556a.f7691f, adrequesttype.t, adobjecttype.f6827d, adobjecttype.f6826c.getAdUnitName());
                        AdRequestType adrequesttype3 = this.f6556a.x;
                        boolean z = false;
                        boolean z2 = adrequesttype3 != null && adrequesttype3 == adrequesttype;
                        if (!adrequesttype.f7340h && (!adrequesttype.f7333a.isEmpty()) && p(adrequesttype, adobjecttype)) {
                            b(adrequesttype);
                            z = true;
                        }
                        if ((!z && !(true ^ adrequesttype.f7337e.isEmpty()) && d(adrequesttype)) || !z2) {
                            o(adrequesttype, adobjecttype);
                        }
                        if (z2) {
                            o.b bVar = new o.b() { // from class: com.appodeal.ads.b0$$ExternalSyntheticLambda4
                                @Override // com.appodeal.ads.utils.o.b
                                public final void a(l lVar) {
                                    b0.this.e(adrequesttype, lVar);
                                }
                            };
                            Handler handler = com.appodeal.ads.utils.o.f7805a;
                            if (adobjecttype.f6826c.getExpTime() > 0) {
                                Runnable runnable = (Runnable) com.appodeal.ads.utils.o.f7806b.get(adobjecttype);
                                if (runnable != null) {
                                    com.appodeal.ads.utils.o.f7805a.removeCallbacks(runnable);
                                }
                                com.appodeal.ads.utils.o.f7806b.put(adobjecttype, new o.a(adobjecttype, bVar));
                                com.appodeal.ads.utils.o.a(adobjecttype);
                            }
                            if (adrequesttype.H == null && !adobjecttype.f()) {
                                a((b0<AdObjectType, AdRequestType, ReferenceObjectType>) adrequesttype, (AdRequestType) adobjecttype, z);
                                this.f6556a.B = 5000;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                }
            } catch (Exception e2) {
                Log.log(e2);
                b(adrequesttype, adobjecttype, null, LoadingError.InternalError);
                return;
            }
        }
        adobjecttype.k();
    }

    public final void o(AdRequestType adrequesttype, AdObjectType adobjecttype) {
        try {
            if (adrequesttype.B) {
                return;
            }
            if (adrequesttype.f7335c.isEmpty() && adrequesttype.f7336d.isEmpty()) {
                return;
            }
            if (!adrequesttype.F) {
                q4.k().a(this.f6556a.f7691f, adrequesttype.t, b((b0<AdObjectType, AdRequestType, ReferenceObjectType>) adrequesttype, (AdRequestType) adobjecttype));
            }
            adrequesttype.b(adobjecttype);
            adrequesttype.B = true;
            k0.a(this.f6556a, adrequesttype, adobjecttype);
        } catch (Exception e2) {
            Log.log(e2);
        }
    }

    public boolean p(AdRequestType adrequesttype, AdObjectType adobjecttype) {
        if (!adobjecttype.f6826c.isPrecache() && !adobjecttype.f()) {
            this.f6556a.getClass();
            if (!u.b(adrequesttype, adobjecttype)) {
                return false;
            }
        }
        return true;
    }

    public boolean q(AdRequestType adrequesttype, AdObjectType adobjecttype) {
        return true;
    }

    public boolean a(r rVar, l lVar, l2 l2Var) {
        return rVar.D;
    }

    public boolean b(AdRequestType adrequesttype, AdObjectType adobjecttype) {
        return adrequesttype.u || adrequesttype.v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void c(AdRequestType adrequesttype) {
        JSONObject jSONObject;
        u<AdObjectType, AdRequestType, ?> uVar = this.f6556a;
        int indexOf = uVar.f7692g.indexOf(adrequesttype) + 1;
        r rVar = (indexOf <= 0 || indexOf >= uVar.f7692g.size()) ? null : (r) uVar.f7692g.get(indexOf);
        if (rVar == null || (jSONObject = rVar.G) == null) {
            return;
        }
        ArrayList arrayList = rVar.f7333a;
        arrayList.remove(arrayList.size() - 1);
        rVar.f7333a.add(0, jSONObject);
        if (rVar.t < rVar.G.optDouble("ecpm", 0.0d) && (rVar.f7333a.size() == 1 || rVar.u)) {
            b(rVar);
        } else if (!rVar.u || rVar.u()) {
        } else {
            o(rVar, rVar.s);
        }
    }

    public final void a(final r rVar, final l lVar, final l2 l2Var, final LoadingError loadingError) {
        if (loadingError == LoadingError.ShowFailed) {
            h5.f6714a.post(new Runnable() { // from class: com.appodeal.ads.b0$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    b0.this.a(rVar, lVar, l2Var, loadingError);
                }
            });
            return;
        }
        h5.f6714a.post(new w(this, rVar, lVar, loadingError));
    }

    public final void b(r rVar, j1 j1Var) {
        if (rVar != null) {
            try {
                if (rVar.A) {
                    return;
                }
                rVar.A = true;
                UnifiedAdType unifiedadtype = j1Var.f6829f;
                if (unifiedadtype != 0) {
                    unifiedadtype.onHide();
                }
                this.f6556a.a(LogConstants.EVENT_CLOSED, j1Var, (LoadingError) null);
                a(rVar, j1Var);
                h5.f6714a.post(new y((v2) this, rVar, j1Var));
            } catch (Exception e2) {
                Log.log(e2);
            }
        }
    }

    public boolean l(r rVar, l lVar, l2 l2Var) {
        return !rVar.C;
    }

    public void a(AdRequestType adrequesttype) {
        HashSet hashSet = new HashSet();
        while (adrequesttype != null) {
            hashSet.addAll(adrequesttype.f7338f);
            adrequesttype = adrequesttype.H;
        }
        if (hashSet.isEmpty()) {
            return;
        }
        Iterator it = hashSet.iterator();
        l lVar = null;
        while (it.hasNext()) {
            l lVar2 = (l) it.next();
            if (lVar == null || lVar.f6826c.getEcpm() < lVar2.f6826c.getEcpm()) {
                lVar = lVar2;
            }
        }
        if (lVar != null) {
            lVar.j();
            hashSet.remove(lVar);
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                ((l) it2.next()).a(lVar.f6827d, lVar.f6826c.getEcpm());
            }
        }
    }

    public final void b(r rVar, l lVar, l2 l2Var, LoadingError loadingError) {
        if (loadingError == null) {
            try {
                loadingError = LoadingError.InternalError;
            } catch (Exception e2) {
                Log.log(e2);
                return;
            }
        }
        this.f6556a.a(LogConstants.EVENT_LOAD_FAILED_SOFT, lVar, loadingError);
        EventsTracker.get().a(this.f6556a.f7691f, lVar, EventsTracker.EventType.InternalError);
        if (rVar != null) {
            rVar.a(false, false);
            rVar.u = false;
            rVar.v = false;
        }
        if (lVar != null) {
            ExchangeAd exchangeAd = lVar.i;
            if (exchangeAd != null && loadingError == LoadingError.TimeoutError) {
                exchangeAd.trackError(1005);
            }
            UnifiedAdType unifiedadtype = lVar.f6829f;
            if (unifiedadtype != 0) {
                unifiedadtype.onError(loadingError);
            }
        }
        if (rVar == null || rVar.H == null) {
            j(rVar, lVar);
            u<AdObjectType, AdRequestType, ?> uVar = this.f6556a;
            int i = uVar.B;
            if (uVar.k()) {
                h5.f6714a.postDelayed(new x(this), i);
            }
            a(rVar, lVar, l2Var, loadingError);
        }
    }

    public void a(AdRequestType adrequesttype, AdObjectType adobjecttype, boolean z) {
        if (b((b0<AdObjectType, AdRequestType, ReferenceObjectType>) adrequesttype, (AdRequestType) adobjecttype, z)) {
            adrequesttype.y = true;
            g(adrequesttype, adobjecttype);
        }
    }

    public final void a(r rVar, l lVar, l2 l2Var, UnifiedAdCallbackClickTrackListener unifiedAdCallbackClickTrackListener) {
        try {
            if (l(rVar, lVar, l2Var)) {
                j(rVar, lVar, l2Var);
            }
            if (k(rVar, lVar, l2Var)) {
                i(rVar, lVar, l2Var);
            }
            if (a(rVar, lVar, l2Var)) {
                if (unifiedAdCallbackClickTrackListener != null) {
                    unifiedAdCallbackClickTrackListener.onTrackError();
                    return;
                }
                return;
            }
            rVar.D = true;
            rVar.n = System.currentTimeMillis();
            q4.k().a(this.f6556a.f7691f, lVar.f6826c.getEcpm(), lVar.f6827d, lVar.f6826c.getAdUnitName());
            this.f6556a.a(LogConstants.EVENT_CLICKED, lVar, (LoadingError) null);
            com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext();
            lVar.h();
            EventsTracker.get().a(this.f6556a.f7691f, lVar, EventsTracker.EventType.Click);
            k0.a(rVar, lVar, Integer.valueOf(e(rVar, lVar, l2Var).f7504a), Double.valueOf(this.f6556a.h()), unifiedAdCallbackClickTrackListener);
            f(rVar, lVar, l2Var);
            d(rVar, lVar, l2Var);
        } catch (Exception e2) {
            Log.log(e2);
        }
    }

    public boolean b(AdRequestType adrequesttype, AdObjectType adobjecttype, boolean z) {
        return !adrequesttype.y && (!z || this.f6556a.t);
    }

    /* JADX WARN: Removed duplicated region for block: B:102:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0175 A[Catch: Exception -> 0x0180, TryCatch #0 {Exception -> 0x0180, blocks: (B:3:0x0002, B:5:0x0006, B:8:0x000c, B:10:0x0016, B:13:0x001e, B:16:0x0023, B:18:0x0039, B:20:0x005e, B:22:0x0062, B:23:0x0067, B:25:0x006b, B:27:0x0070, B:30:0x0078, B:32:0x007f, B:31:0x007d, B:33:0x0089, B:36:0x0092, B:39:0x009d, B:41:0x00a5, B:43:0x00ab, B:46:0x00bb, B:49:0x00c5, B:51:0x00ce, B:52:0x00d5, B:83:0x015d, B:55:0x00e0, B:58:0x00eb, B:60:0x0102, B:81:0x0157, B:89:0x0175, B:61:0x0109, B:63:0x0112, B:65:0x011b, B:66:0x011e, B:68:0x0122, B:69:0x0126, B:72:0x012b, B:74:0x013a, B:78:0x0147, B:80:0x014f, B:77:0x0143, B:84:0x0161, B:87:0x0166, B:90:0x0179), top: B:95:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(AdRequestType r12, AdObjectType r13, com.appodeal.ads.f5 r14, com.appodeal.ads.networking.LoadingError r15) {
        /*
            Method dump skipped, instructions count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.appodeal.ads.b0.a(com.appodeal.ads.r, com.appodeal.ads.l, com.appodeal.ads.f5, com.appodeal.ads.networking.LoadingError):void");
    }

    public final void a(AdRequestType adrequesttype, AdObjectType adobjecttype, LoadingError loadingError) {
        f5 f5Var = adobjecttype != null ? adobjecttype.f6826c : null;
        if (loadingError == null) {
            loadingError = LoadingError.NoFill;
        }
        a((b0<AdObjectType, AdRequestType, ReferenceObjectType>) adrequesttype, (AdRequestType) adobjecttype, f5Var, loadingError);
    }
}
