package com.applovin.impl.sdk;

import com.applovin.impl.sdk.utils.CollectionUtils;
import java.util.Map;
/* loaded from: classes.dex */
public class w {

    /* renamed from: a  reason: collision with root package name */
    private final v f6220a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, com.applovin.impl.mediation.a.a> f6221b = CollectionUtils.map(4);

    /* renamed from: c  reason: collision with root package name */
    private final Object f6222c = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(n nVar) {
        this.f6220a = nVar.D();
    }

    public com.applovin.impl.mediation.a.a a(String str) {
        com.applovin.impl.mediation.a.a aVar;
        synchronized (this.f6222c) {
            aVar = this.f6221b.get(str);
        }
        return aVar;
    }

    public void a(com.applovin.impl.mediation.a.a aVar) {
        synchronized (this.f6222c) {
            if (v.a()) {
                this.f6220a.b("MediationWaterfallWinnerTracker", "Tracking winning ad: " + aVar);
            }
            this.f6221b.put(aVar.getAdUnitId(), aVar);
        }
    }

    public void b(com.applovin.impl.mediation.a.a aVar) {
        synchronized (this.f6222c) {
            String adUnitId = aVar.getAdUnitId();
            com.applovin.impl.mediation.a.a aVar2 = this.f6221b.get(adUnitId);
            if (aVar == aVar2) {
                if (v.a()) {
                    this.f6220a.b("MediationWaterfallWinnerTracker", "Clearing previous winning ad: " + aVar2);
                }
                this.f6221b.remove(adUnitId);
            } else if (v.a()) {
                this.f6220a.b("MediationWaterfallWinnerTracker", "Previous winner not cleared for ad: " + aVar + " , since it could have already been updated with a new ad: " + aVar2);
            }
        }
    }
}
