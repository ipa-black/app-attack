package com.applovin.impl.mediation;

import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.v;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final n f4857a;

    /* renamed from: b  reason: collision with root package name */
    private final v f4858b;

    /* renamed from: c  reason: collision with root package name */
    private final a f4859c;

    /* renamed from: d  reason: collision with root package name */
    private com.applovin.impl.sdk.utils.f f4860d;

    /* loaded from: classes.dex */
    public interface a {
        void c(com.applovin.impl.mediation.a.c cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(n nVar, a aVar) {
        this.f4857a = nVar;
        this.f4858b = nVar.D();
        this.f4859c = aVar;
    }

    public void a() {
        if (v.a()) {
            this.f4858b.b("AdHiddenCallbackTimeoutManager", "Cancelling timeout");
        }
        com.applovin.impl.sdk.utils.f fVar = this.f4860d;
        if (fVar != null) {
            fVar.a();
            this.f4860d = null;
        }
    }

    public void a(final com.applovin.impl.mediation.a.c cVar, long j) {
        if (v.a()) {
            this.f4858b.b("AdHiddenCallbackTimeoutManager", "Scheduling in " + j + "ms...");
        }
        this.f4860d = com.applovin.impl.sdk.utils.f.a(j, this.f4857a, new Runnable() { // from class: com.applovin.impl.mediation.c.1
            @Override // java.lang.Runnable
            public void run() {
                v unused = c.this.f4858b;
                if (v.a()) {
                    c.this.f4858b.b("AdHiddenCallbackTimeoutManager", "Timing out...");
                }
                c.this.f4859c.c(cVar);
            }
        });
    }
}
