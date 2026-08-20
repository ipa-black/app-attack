package com.applovin.impl.sdk;

import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import com.applovin.impl.sdk.utils.CollectionUtils;
import java.util.Map;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final n f5586a;

    /* renamed from: b  reason: collision with root package name */
    private final v f5587b;

    /* renamed from: d  reason: collision with root package name */
    private final Map<com.applovin.impl.sdk.ad.d, x> f5589d = CollectionUtils.map();

    /* renamed from: e  reason: collision with root package name */
    private final Map<com.applovin.impl.sdk.ad.d, x> f5590e = CollectionUtils.map();

    /* renamed from: c  reason: collision with root package name */
    private final Object f5588c = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(n nVar) {
        this.f5586a = nVar;
        this.f5587b = nVar.D();
        for (com.applovin.impl.sdk.ad.d dVar : com.applovin.impl.sdk.ad.d.f()) {
            this.f5589d.put(dVar, new x());
            this.f5590e.put(dVar, new x());
        }
    }

    private x d(com.applovin.impl.sdk.ad.d dVar) {
        x xVar;
        synchronized (this.f5588c) {
            xVar = this.f5589d.get(dVar);
            if (xVar == null) {
                xVar = new x();
                this.f5589d.put(dVar, xVar);
            }
        }
        return xVar;
    }

    private x e(com.applovin.impl.sdk.ad.d dVar) {
        x xVar;
        synchronized (this.f5588c) {
            xVar = this.f5590e.get(dVar);
            if (xVar == null) {
                xVar = new x();
                this.f5590e.put(dVar, xVar);
            }
        }
        return xVar;
    }

    private x f(com.applovin.impl.sdk.ad.d dVar) {
        synchronized (this.f5588c) {
            x e2 = e(dVar);
            if (e2.a() > 0) {
                return e2;
            }
            return d(dVar);
        }
    }

    public AppLovinAdImpl a(com.applovin.impl.sdk.ad.d dVar) {
        com.applovin.impl.sdk.ad.f fVar;
        v vVar;
        String str;
        StringBuilder sb;
        synchronized (this.f5588c) {
            x d2 = d(dVar);
            if (d2.a() > 0) {
                e(dVar).a(d2.c());
                fVar = new com.applovin.impl.sdk.ad.f(dVar, this.f5586a);
            } else {
                fVar = null;
            }
        }
        boolean a2 = v.a();
        if (fVar != null) {
            if (a2) {
                vVar = this.f5587b;
                str = "AdPreloadManager";
                sb = new StringBuilder("Retrieved ad of zone ");
                vVar.b(str, sb.append(dVar).append(APSSharedUtil.TRUNCATE_SEPARATOR).toString());
            }
            return fVar;
        }
        if (a2) {
            vVar = this.f5587b;
            str = "AdPreloadManager";
            sb = new StringBuilder("Unable to retrieve ad of zone ");
            vVar.b(str, sb.append(dVar).append(APSSharedUtil.TRUNCATE_SEPARATOR).toString());
        }
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.f5588c) {
            d(appLovinAdImpl.getAdZone()).a(appLovinAdImpl);
            if (v.a()) {
                this.f5587b.b("AdPreloadManager", "Ad enqueued: " + appLovinAdImpl);
            }
        }
    }

    public AppLovinAdImpl b(com.applovin.impl.sdk.ad.d dVar) {
        AppLovinAdImpl c2;
        synchronized (this.f5588c) {
            c2 = f(dVar).c();
        }
        return c2;
    }

    public AppLovinAdBase c(com.applovin.impl.sdk.ad.d dVar) {
        AppLovinAdImpl d2;
        synchronized (this.f5588c) {
            d2 = f(dVar).d();
        }
        return d2;
    }
}
