package com.applovin.impl.sdk.e;

import androidx.browser.trusted.sharing.ShareTarget;
import com.applovin.impl.sdk.network.c;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.sdk.AppLovinAdLoadListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class x extends a {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.b.e f5773a;

    /* renamed from: e  reason: collision with root package name */
    private final AppLovinAdLoadListener f5774e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(com.applovin.impl.b.e eVar, AppLovinAdLoadListener appLovinAdLoadListener, com.applovin.impl.sdk.n nVar) {
        super("TaskResolveVastWrapper", nVar);
        this.f5774e = appLovinAdLoadListener;
        this.f5773a = eVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        com.applovin.impl.sdk.v vVar = this.f5676d;
        if (com.applovin.impl.sdk.v.a()) {
            this.f5676d.e(this.f5675c, "Failed to resolve VAST wrapper due to error code " + i);
        }
        if (i != -1009) {
            com.applovin.impl.b.m.a(this.f5773a, this.f5774e, i == -1001 ? com.applovin.impl.b.f.TIMED_OUT : com.applovin.impl.b.f.GENERAL_WRAPPER_ERROR, i, this.f5674b);
            return;
        }
        AppLovinAdLoadListener appLovinAdLoadListener = this.f5774e;
        if (appLovinAdLoadListener != null) {
            appLovinAdLoadListener.failedToReceiveAd(i);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        String a2 = com.applovin.impl.b.m.a(this.f5773a);
        if (StringUtils.isValidString(a2)) {
            com.applovin.impl.sdk.v vVar = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.b(this.f5675c, "Resolving VAST ad with depth " + this.f5773a.a() + " at " + a2);
            }
            try {
                this.f5674b.V().a((a) new u<com.applovin.impl.sdk.utils.s>(com.applovin.impl.sdk.network.c.a(this.f5674b).a(a2).b(ShareTarget.METHOD_GET).a((c.a) com.applovin.impl.sdk.utils.s.f6204a).a(((Integer) this.f5674b.a(com.applovin.impl.sdk.c.b.ew)).intValue()).b(((Integer) this.f5674b.a(com.applovin.impl.sdk.c.b.ex)).intValue()).c(false).a(), this.f5674b) { // from class: com.applovin.impl.sdk.e.x.1
                    @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
                    public void a(int i, String str, com.applovin.impl.sdk.utils.s sVar) {
                        com.applovin.impl.sdk.v vVar2 = this.f5676d;
                        if (com.applovin.impl.sdk.v.a()) {
                            this.f5676d.e(this.f5675c, "Unable to resolve VAST wrapper. Server returned " + i);
                        }
                        x.this.a(i);
                    }

                    @Override // com.applovin.impl.sdk.e.u, com.applovin.impl.sdk.network.b.c
                    public void a(com.applovin.impl.sdk.utils.s sVar, int i) {
                        this.f5674b.V().a((a) r.a(sVar, x.this.f5773a, x.this.f5774e, x.this.f5674b));
                    }
                });
                return;
            } catch (Throwable th) {
                com.applovin.impl.sdk.v vVar2 = this.f5676d;
                if (com.applovin.impl.sdk.v.a()) {
                    this.f5676d.b(this.f5675c, "Unable to resolve VAST wrapper", th);
                }
            }
        } else {
            com.applovin.impl.sdk.v vVar3 = this.f5676d;
            if (com.applovin.impl.sdk.v.a()) {
                this.f5676d.e(this.f5675c, "Resolving VAST failed. Could not find resolution URL");
            }
        }
        a(-1);
    }
}
