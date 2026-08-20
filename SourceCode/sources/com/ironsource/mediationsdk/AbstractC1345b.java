package com.ironsource.mediationsdk;

import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import java.util.Timer;
/* renamed from: com.ironsource.mediationsdk.b  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public abstract class AbstractC1345b {

    /* renamed from: b  reason: collision with root package name */
    public AbstractAdapter f11075b;

    /* renamed from: c  reason: collision with root package name */
    NetworkSettings f11076c;

    /* renamed from: d  reason: collision with root package name */
    String f11077d;

    /* renamed from: e  reason: collision with root package name */
    boolean f11078e;

    /* renamed from: f  reason: collision with root package name */
    public String f11079f;

    /* renamed from: g  reason: collision with root package name */
    public String f11080g;
    Timer i;
    Timer j;
    int k;
    int l;
    public int m;
    public int n;
    private String r;
    private String t = "maxAdsPerSession";
    private String u = "maxAdsPerIteration";
    private String v = "maxAdsPerDay";

    /* renamed from: h  reason: collision with root package name */
    int f11081h = 0;
    private int s = 0;

    /* renamed from: a  reason: collision with root package name */
    a f11074a = a.NOT_INITIATED;
    IronSourceLoggerManager q = IronSourceLoggerManager.getLogger();
    protected Long o = null;
    protected Long p = null;

    /* renamed from: com.ironsource.mediationsdk.b$a */
    /* loaded from: classes3.dex */
    public enum a {
        NOT_INITIATED(0),
        INIT_FAILED(1),
        INITIATED(2),
        AVAILABLE(3),
        NOT_AVAILABLE(4),
        EXHAUSTED(5),
        CAPPED_PER_SESSION(6),
        INIT_PENDING(7),
        LOAD_PENDING(8),
        CAPPED_PER_DAY(9),
        NEEDS_RELOAD(10);
        
        public int l;

        a(int i) {
            this.l = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractC1345b(NetworkSettings networkSettings) {
        this.r = networkSettings.getProviderTypeForReflection();
        this.f11077d = networkSettings.getProviderInstanceName();
        this.f11078e = networkSettings.isMultipleInstances();
        this.f11076c = networkSettings;
        this.f11079f = networkSettings.getSubProviderId();
        this.f11080g = networkSettings.getAdSourceNameForEvents();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized void a(a aVar) {
        if (this.f11074a == aVar) {
            return;
        }
        this.f11074a = aVar;
        this.q.log(IronSourceLogger.IronSourceTag.INTERNAL, "Smart Loading - " + this.f11077d + " state changed to " + aVar.toString(), 0);
        if (this.f11075b != null && (aVar == a.CAPPED_PER_SESSION || aVar == a.CAPPED_PER_DAY)) {
            this.f11075b.setMediationState(aVar, k());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str, String str2) {
        this.q.log(IronSourceLogger.IronSourceTag.INTERNAL, str + " exception: " + this.f11077d + " | " + str2, 3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a() {
        return this.f11081h >= this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b() {
        return this.s >= this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c() {
        return (a() || b() || this.f11074a == a.CAPPED_PER_DAY) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void d() {
        this.f11081h++;
        this.s++;
        if (b()) {
            a(a.CAPPED_PER_SESSION);
        } else if (a()) {
            a(a.EXHAUSTED);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void e() {
        try {
            Timer timer = this.i;
            if (timer != null) {
                timer.cancel();
            }
        } catch (Exception e2) {
            a("stopInitTimer", e2.getLocalizedMessage());
        } finally {
            this.i = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void f() {
        try {
            Timer timer = this.j;
            if (timer != null) {
                timer.cancel();
            }
        } catch (Exception e2) {
            a("stopLoadTimer", e2.getLocalizedMessage());
        } finally {
            this.j = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void g();

    abstract void h();

    abstract void i();

    public final String j() {
        return this.f11078e ? this.r : this.f11077d;
    }

    protected abstract String k();

    public final Long l() {
        return this.o;
    }

    public final Long m() {
        return this.p;
    }
}
