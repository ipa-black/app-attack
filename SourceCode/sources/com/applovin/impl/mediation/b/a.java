package com.applovin.impl.mediation.b;

import android.app.Activity;
import android.text.TextUtils;
import com.amazon.aps.shared.util.APSSharedUtil;
import com.applovin.impl.sdk.e.o;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinMediationProvider;
import java.util.List;
/* loaded from: classes.dex */
public class a extends com.applovin.impl.sdk.e.a {

    /* renamed from: a  reason: collision with root package name */
    private final List<com.applovin.impl.mediation.a.f> f4806a;

    /* renamed from: e  reason: collision with root package name */
    private final Activity f4807e;

    /* renamed from: com.applovin.impl.mediation.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0066a extends com.applovin.impl.sdk.e.a {

        /* renamed from: a  reason: collision with root package name */
        private final com.applovin.impl.mediation.a.f f4810a;

        /* renamed from: e  reason: collision with root package name */
        private final List<com.applovin.impl.mediation.a.f> f4811e;

        /* renamed from: f  reason: collision with root package name */
        private final Activity f4812f;

        private C0066a(com.applovin.impl.mediation.a.f fVar, List<com.applovin.impl.mediation.a.f> list, n nVar, Activity activity) {
            super("TaskSequentialInitAdapter:" + fVar.R(), nVar, true);
            this.f4812f = activity;
            this.f4810a = fVar;
            this.f4811e = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            v vVar = this.f5676d;
            if (v.a()) {
                this.f5676d.b(this.f5675c, "Auto-initing " + this.f4810a + APSSharedUtil.TRUNCATE_SEPARATOR);
            }
            this.f5674b.G().a(this.f4810a, this.f4812f, new Runnable() { // from class: com.applovin.impl.mediation.b.a.a.1
                @Override // java.lang.Runnable
                public void run() {
                    v unused = C0066a.this.f5676d;
                    if (v.a()) {
                        C0066a.this.f5676d.b(C0066a.this.f5675c, "Initialization task for adapter '" + C0066a.this.f4810a.S() + "' finished");
                    }
                    int indexOf = C0066a.this.f4811e.indexOf(C0066a.this.f4810a);
                    if (indexOf < C0066a.this.f4811e.size() - 1) {
                        com.applovin.impl.mediation.a.f fVar = (com.applovin.impl.mediation.a.f) C0066a.this.f4811e.get(indexOf + 1);
                        C0066a.this.f5674b.V().a(new C0066a(fVar, C0066a.this.f4811e, C0066a.this.f5674b, C0066a.this.f4812f), o.a.MAIN, fVar.af());
                        return;
                    }
                    v unused2 = C0066a.this.f5676d;
                    if (v.a()) {
                        C0066a.this.f5676d.b(C0066a.this.f5675c, "Finished initializing adapters");
                    }
                }
            });
        }
    }

    public a(List<com.applovin.impl.mediation.a.f> list, Activity activity, n nVar) {
        super("TaskAutoInitAdapters", nVar, true);
        this.f4806a = list;
        this.f4807e = activity;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f4806a.size() > 0) {
                v vVar = this.f5676d;
                if (v.a()) {
                    this.f5676d.b(this.f5675c, "Auto-initing " + this.f4806a.size() + " adapters" + (this.f5674b.N().a() ? " in test mode" : "") + APSSharedUtil.TRUNCATE_SEPARATOR);
                }
                if (TextUtils.isEmpty(this.f5674b.u())) {
                    this.f5674b.c(AppLovinMediationProvider.MAX);
                } else if (!this.f5674b.f()) {
                    v.i("AppLovinSdk", "Auto-initing adapters for non-MAX mediation provider: " + this.f5674b.u());
                }
                if (this.f4807e == null) {
                    v.i("AppLovinSdk", "\n**********\nAttempting to init 3rd-party SDKs without an Activity instance.\n**********\n");
                }
                if (((Boolean) this.f5674b.a(com.applovin.impl.sdk.c.a.Q)).booleanValue()) {
                    com.applovin.impl.mediation.a.f fVar = this.f4806a.get(0);
                    this.f5674b.V().a(new C0066a(fVar, this.f4806a, this.f5674b, this.f4807e), o.a.MAIN, fVar.af());
                    return;
                }
                for (final com.applovin.impl.mediation.a.f fVar2 : this.f4806a) {
                    this.f5674b.V().a(new Runnable() { // from class: com.applovin.impl.mediation.b.a.1
                        @Override // java.lang.Runnable
                        public void run() {
                            v unused = a.this.f5676d;
                            if (v.a()) {
                                a.this.f5676d.b(a.this.f5675c, "Auto-initing adapter: " + fVar2);
                            }
                            a.this.f5674b.G().a(fVar2, a.this.f4807e);
                        }
                    });
                }
            }
        } catch (Throwable th) {
            v vVar2 = this.f5676d;
            if (v.a()) {
                this.f5676d.b(this.f5675c, "Failed to auto-init adapters", th);
            }
        }
    }
}
