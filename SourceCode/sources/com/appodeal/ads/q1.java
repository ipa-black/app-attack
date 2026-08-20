package com.appodeal.ads;

import android.content.Context;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.o1;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.w2;
/* loaded from: classes.dex */
public final class q1 {

    /* renamed from: f  reason: collision with root package name */
    public static volatile q1 f7289f;

    /* renamed from: a  reason: collision with root package name */
    public InterstitialCallbacks f7290a;

    /* renamed from: b  reason: collision with root package name */
    public boolean f7291b = false;

    /* renamed from: c  reason: collision with root package name */
    public boolean f7292c = true;

    /* renamed from: d  reason: collision with root package name */
    public final a f7293d;

    /* renamed from: e  reason: collision with root package name */
    public final b f7294e;

    /* loaded from: classes.dex */
    public class a extends c<r1, p1, o1.c> {
        public a(q1 q1Var) {
            super();
        }

        @Override // com.appodeal.ads.q1.c
        public final u<p1, r1, o1.c> a() {
            return o1.a();
        }
    }

    /* loaded from: classes.dex */
    public class b extends c<q5, o5, w2.a> {
        public b(q1 q1Var) {
            super();
        }

        @Override // com.appodeal.ads.q1.c
        public final u<o5, q5, w2.a> a() {
            return w2.a();
        }
    }

    /* loaded from: classes.dex */
    public abstract class c<AdRequestType extends r<AdObjectType>, AdObjectType extends l, RequestParamsType extends s> extends g<AdRequestType, AdObjectType, Object> {

        /* renamed from: a  reason: collision with root package name */
        public c f7295a;

        /* renamed from: b  reason: collision with root package name */
        public boolean f7296b = false;

        /* renamed from: c  reason: collision with root package name */
        public boolean f7297c = true;

        /* renamed from: d  reason: collision with root package name */
        public boolean f7298d = false;

        public c() {
        }

        public abstract u<AdObjectType, AdRequestType, RequestParamsType> a();

        public final void a(Context context, RequestParamsType requestparamstype) {
            u<AdObjectType, AdRequestType, RequestParamsType> a2 = a();
            if (requestparamstype.f7445a) {
                a2.b(context, (Context) requestparamstype);
            } else if (!a2.i) {
                Log.log("Interstitial", LogConstants.EVENT_REQUEST_FAILED, LogConstants.MSG_NOT_INITIALIZED);
            } else if (this.f7297c) {
                boolean z = false;
                this.f7297c = false;
                this.f7296b = true;
                this.f7298d = false;
                AdRequestType f2 = a2.f();
                if (f2 != null && f2.u && !a2.j) {
                    AdObjectType adobjecttype = f2.s;
                    if (adobjecttype != null && adobjecttype.f6826c.isPrecache()) {
                        z = true;
                    }
                    a(z);
                } else if (f2 == null || f2.b() || a2.j) {
                    a2.b(context, (Context) requestparamstype);
                }
            }
        }

        @Override // com.appodeal.ads.g
        public final void a(AdRequestType adrequesttype, AdObjectType adobjecttype) {
            Log.log("Interstitial", LogConstants.EVENT_NOTIFY_CLOSED, Log.LogLevel.verbose);
            if (q1.this.f7290a != null) {
                q1.this.f7290a.onInterstitialClosed();
            }
        }

        @Override // com.appodeal.ads.g
        public final void a(AdRequestType adrequesttype, AdObjectType adobjecttype, Object obj) {
            Log.log("Interstitial", LogConstants.EVENT_NOTIFY_CLICKED, Log.LogLevel.verbose);
            if (q1.this.f7290a != null) {
                q1.this.f7290a.onInterstitialClicked();
            }
        }

        public final void a(boolean z) {
            this.f7298d = false;
            if (q1.this.f7291b) {
                return;
            }
            q1.this.f7291b = true;
            Log.log("Interstitial", LogConstants.EVENT_NOTIFY_LOADED, String.format("isPrecache: %s", Boolean.valueOf(z)), Log.LogLevel.verbose);
            if (q1.this.f7290a != null) {
                q1.this.f7290a.onInterstitialLoaded(z);
            }
        }

        @Override // com.appodeal.ads.g
        public final void b(AdRequestType adrequesttype, AdObjectType adobjecttype) {
            if (a().k()) {
                this.f7297c = true;
                a().c(com.appodeal.ads.context.b.f6583b.getApplicationContext());
            }
            AdRequestType f2 = this.f7295a.a().f();
            if (f2 == null || !f2.p() || this.f7295a.a().p()) {
                Log.log("Interstitial", LogConstants.EVENT_NOTIFY_EXPIRED, Log.LogLevel.verbose);
                if (q1.this.f7290a != null) {
                    q1.this.f7290a.onInterstitialExpired();
                }
                if (q1.this.f7292c) {
                    q1.this.f7291b = false;
                }
            }
        }

        @Override // com.appodeal.ads.g
        public final void b(r rVar, l lVar, Object obj) {
            this.f7298d = true;
            Log.log("Interstitial", LogConstants.EVENT_NOTIFY_SHOW_FAILED, Log.LogLevel.verbose);
            if (q1.this.f7290a != null) {
                q1.this.f7290a.onInterstitialShowFailed();
            }
            c cVar = this.f7295a;
            if (!cVar.f7296b || cVar.f7298d || cVar.a().m()) {
                this.f7297c = true;
                c cVar2 = this.f7295a;
                if (cVar2.f7296b && cVar2.f7298d) {
                    cVar2.f7297c = true;
                }
            }
        }

        @Override // com.appodeal.ads.g
        public final void c(AdRequestType adrequesttype, AdObjectType adobjecttype, Object obj) {
            Log.log("Interstitial", LogConstants.EVENT_NOTIFY_SHOWN, Log.LogLevel.verbose);
            if (q1.this.f7290a != null) {
                q1.this.f7290a.onInterstitialShown();
            }
            q1.this.f7291b = false;
            this.f7296b = false;
            this.f7298d = false;
            this.f7297c = true;
            c cVar = this.f7295a;
            if (cVar.f7296b && cVar.f7298d) {
                cVar.f7297c = true;
            } else if (q4.e(cVar.a().d().getCode())) {
                c cVar2 = this.f7295a;
                cVar2.a(q4.f(cVar2.a().d().getCode()));
            }
            if (adrequesttype == null || adrequesttype.q() || !q1.a().b()) {
                return;
            }
            AdRequestType f2 = a().f();
            if (f2 == null || f2.b()) {
                a().c(com.appodeal.ads.context.b.f6583b.getApplicationContext());
            }
        }

        @Override // com.appodeal.ads.g
        public final void d(r rVar, l lVar) {
            this.f7298d = true;
            c cVar = this.f7295a;
            if (!cVar.f7296b || cVar.f7298d || cVar.a().m()) {
                this.f7297c = true;
                Log.log("Interstitial", LogConstants.EVENT_NOTIFY_LOAD_FAILED, Log.LogLevel.verbose);
                if (q1.this.f7290a != null) {
                    q1.this.f7290a.onInterstitialFailedToLoad();
                }
                c cVar2 = this.f7295a;
                if (cVar2.f7296b && cVar2.f7298d) {
                    cVar2.f7297c = true;
                }
            }
        }

        @Override // com.appodeal.ads.g
        public final void e(AdRequestType adrequesttype, AdObjectType adobjecttype) {
            a(adobjecttype != null && adobjecttype.f6826c.isPrecache());
        }
    }

    public q1() {
        a aVar = new a(this);
        this.f7293d = aVar;
        b bVar = new b(this);
        this.f7294e = bVar;
        aVar.f7295a = bVar;
        bVar.f7295a = aVar;
    }

    public static q1 a() {
        if (f7289f == null) {
            synchronized (q1.class) {
                if (f7289f == null) {
                    f7289f = new q1();
                }
            }
        }
        return f7289f;
    }

    public final boolean b() {
        return this.f7292c;
    }

    public final void c() {
        this.f7291b = false;
        this.f7293d.f7297c = true;
        this.f7294e.f7297c = true;
    }
}
