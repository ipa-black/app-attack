package com.applovin.impl.mediation;

import android.app.Activity;
import android.os.Bundle;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.v;
/* loaded from: classes.dex */
public class a extends com.applovin.impl.sdk.utils.a {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.a f4679a;

    /* renamed from: b  reason: collision with root package name */
    private final v f4680b;

    /* renamed from: c  reason: collision with root package name */
    private InterfaceC0064a f4681c;

    /* renamed from: d  reason: collision with root package name */
    private com.applovin.impl.mediation.a.c f4682d;

    /* renamed from: e  reason: collision with root package name */
    private int f4683e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f4684f;

    /* renamed from: com.applovin.impl.mediation.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0064a {
        void a(com.applovin.impl.mediation.a.c cVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(n nVar) {
        this.f4680b = nVar.D();
        this.f4679a = nVar.ai();
    }

    public void a() {
        if (v.a()) {
            this.f4680b.b("AdActivityObserver", "Cancelling...");
        }
        this.f4679a.b(this);
        this.f4681c = null;
        this.f4682d = null;
        this.f4683e = 0;
        this.f4684f = false;
    }

    public void a(com.applovin.impl.mediation.a.c cVar, InterfaceC0064a interfaceC0064a) {
        if (v.a()) {
            this.f4680b.b("AdActivityObserver", "Starting for ad " + cVar.getAdUnitId() + APSSharedUtil.TRUNCATE_SEPARATOR);
        }
        a();
        this.f4681c = interfaceC0064a;
        this.f4682d = cVar;
        this.f4679a.a(this);
    }

    @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (!this.f4684f) {
            this.f4684f = true;
        }
        this.f4683e++;
        if (v.a()) {
            this.f4680b.b("AdActivityObserver", "Created Activity: " + activity + ", counter is " + this.f4683e);
        }
    }

    @Override // com.applovin.impl.sdk.utils.a, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (this.f4684f) {
            this.f4683e--;
            if (v.a()) {
                this.f4680b.b("AdActivityObserver", "Destroyed Activity: " + activity + ", counter is " + this.f4683e);
            }
            if (this.f4683e <= 0) {
                if (v.a()) {
                    this.f4680b.b("AdActivityObserver", "Last ad Activity destroyed");
                }
                if (this.f4681c != null) {
                    if (v.a()) {
                        this.f4680b.b("AdActivityObserver", "Invoking callback...");
                    }
                    this.f4681c.a(this.f4682d);
                }
                a();
            }
        }
    }
}
