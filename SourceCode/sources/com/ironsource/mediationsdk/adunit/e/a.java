package com.ironsource.mediationsdk.adunit.e;

import android.text.TextUtils;
import com.ironsource.mediationsdk.adunit.c.b.a;
import com.ironsource.mediationsdk.adunit.d.a.c;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public final class a<Smash extends c<?>> {

    /* renamed from: d  reason: collision with root package name */
    private c<?> f11062d;

    /* renamed from: e  reason: collision with root package name */
    private final List<String> f11063e;

    /* renamed from: f  reason: collision with root package name */
    private final int f11064f;

    /* renamed from: h  reason: collision with root package name */
    private b f11066h;

    /* renamed from: a  reason: collision with root package name */
    ConcurrentHashMap<String, CopyOnWriteArrayList<Smash>> f11059a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    public String f11060b = "";

    /* renamed from: c  reason: collision with root package name */
    private String f11061c = "";

    /* renamed from: g  reason: collision with root package name */
    private final Timer f11065g = new Timer();
    private final int i = 5;

    public a(List<String> list, int i, b bVar) {
        this.f11063e = list;
        this.f11064f = i;
        this.f11066h = bVar;
    }

    private synchronized void b() {
        c<?> cVar = this.f11062d;
        if (cVar != null) {
            cVar.o();
        }
    }

    private synchronized boolean c() {
        c<?> cVar = this.f11062d;
        if (cVar != null && cVar.p()) {
            if (this.f11062d.n().equals(this.f11061c)) {
                return true;
            }
        }
        return false;
    }

    private void d() {
        Iterator<Smash> it = a().iterator();
        while (it.hasNext()) {
            Smash next = it.next();
            if (!next.equals(this.f11062d)) {
                next.o();
            }
        }
    }

    public final CopyOnWriteArrayList<Smash> a() {
        CopyOnWriteArrayList<Smash> copyOnWriteArrayList = this.f11059a.get(this.f11060b);
        return copyOnWriteArrayList == null ? new CopyOnWriteArrayList<>() : copyOnWriteArrayList;
    }

    public final void a(a.EnumC0323a enumC0323a, CopyOnWriteArrayList<Smash> copyOnWriteArrayList, String str) {
        IronLog.INTERNAL.verbose("updating new waterfall with id " + str);
        d();
        if (enumC0323a == a.EnumC0323a.AUTOMATIC_LOAD_WHILE_SHOW) {
            this.f11059a.put(str, copyOnWriteArrayList);
            if (!TextUtils.isEmpty(this.f11061c)) {
                if (c()) {
                    IronLog.INTERNAL.verbose("ad from previous waterfall " + this.f11061c + " is still showing - the current waterfall " + this.f11060b + " will be deleted instead");
                    String str2 = this.f11060b;
                    this.f11060b = this.f11061c;
                    this.f11061c = str2;
                }
                final String str3 = this.f11061c;
                this.f11065g.schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.adunit.e.a.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public final void run() {
                        try {
                            IronLog.INTERNAL.verbose("removing waterfall with id " + str3 + " from memory");
                            a.this.f11059a.remove(str3);
                            IronLog.INTERNAL.verbose("waterfall size is currently " + a.this.f11059a.size());
                        } finally {
                            cancel();
                        }
                    }
                }, this.f11064f);
            }
        } else {
            this.f11059a.clear();
            this.f11059a.put(str, copyOnWriteArrayList);
        }
        this.f11061c = this.f11060b;
        this.f11060b = str;
        if (this.f11059a.size() > 5) {
            this.f11066h.a(this.f11059a.size());
        }
    }

    public final synchronized void a(c<?> cVar) {
        IronLog.INTERNAL.verbose("");
        c<?> cVar2 = this.f11062d;
        if (cVar2 != null && !cVar2.equals(cVar)) {
            b();
        }
        this.f11062d = cVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0021, code lost:
        if (r2.f11062d.k().equals(r4) == false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean a(com.ironsource.mediationsdk.adunit.c.b.a.EnumC0323a r3, java.lang.String r4, java.lang.String r5, com.ironsource.mediationsdk.LoadWhileShowSupportState r6) {
        /*
            r2 = this;
            monitor-enter(r2)
            com.ironsource.mediationsdk.adunit.c.b.a$a r0 = com.ironsource.mediationsdk.adunit.c.b.a.EnumC0323a.AUTOMATIC_LOAD_WHILE_SHOW     // Catch: java.lang.Throwable -> L5a
            r1 = 1
            if (r3 == r0) goto L7
            goto L3e
        L7:
            com.ironsource.mediationsdk.adunit.d.a.c<?> r3 = r2.f11062d     // Catch: java.lang.Throwable -> L5a
            if (r3 == 0) goto L3e
            boolean r3 = r3.p()     // Catch: java.lang.Throwable -> L5a
            if (r3 != 0) goto L12
            goto L3e
        L12:
            com.ironsource.mediationsdk.LoadWhileShowSupportState r3 = com.ironsource.mediationsdk.LoadWhileShowSupportState.LOAD_WHILE_SHOW_BY_NETWORK     // Catch: java.lang.Throwable -> L5a
            r0 = 0
            if (r6 != r3) goto L25
            com.ironsource.mediationsdk.adunit.d.a.c<?> r3 = r2.f11062d     // Catch: java.lang.Throwable -> L5a
            java.lang.String r3 = r3.k()     // Catch: java.lang.Throwable -> L5a
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Throwable -> L5a
            if (r3 == 0) goto L25
        L23:
            r1 = r0
            goto L3e
        L25:
            com.ironsource.mediationsdk.LoadWhileShowSupportState r3 = com.ironsource.mediationsdk.LoadWhileShowSupportState.NONE     // Catch: java.lang.Throwable -> L5a
            if (r6 == r3) goto L31
            java.util.List<java.lang.String> r3 = r2.f11063e     // Catch: java.lang.Throwable -> L5a
            boolean r3 = r3.contains(r5)     // Catch: java.lang.Throwable -> L5a
            if (r3 == 0) goto L3e
        L31:
            com.ironsource.mediationsdk.adunit.d.a.c<?> r3 = r2.f11062d     // Catch: java.lang.Throwable -> L5a
            java.lang.String r3 = r3.m()     // Catch: java.lang.Throwable -> L5a
            boolean r3 = r3.equals(r5)     // Catch: java.lang.Throwable -> L5a
            if (r3 == 0) goto L3e
            goto L23
        L3e:
            if (r1 != 0) goto L58
            com.ironsource.mediationsdk.logger.IronLog r3 = com.ironsource.mediationsdk.logger.IronLog.INTERNAL     // Catch: java.lang.Throwable -> L5a
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5a
            r5.<init>()     // Catch: java.lang.Throwable -> L5a
            java.lang.StringBuilder r4 = r5.append(r4)     // Catch: java.lang.Throwable -> L5a
            java.lang.String r5 = " does not support load while show and will not be added to the auction request"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L5a
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L5a
            r3.verbose(r4)     // Catch: java.lang.Throwable -> L5a
        L58:
            monitor-exit(r2)
            return r1
        L5a:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.adunit.e.a.a(com.ironsource.mediationsdk.adunit.c.b.a$a, java.lang.String, java.lang.String, com.ironsource.mediationsdk.LoadWhileShowSupportState):boolean");
    }
}
