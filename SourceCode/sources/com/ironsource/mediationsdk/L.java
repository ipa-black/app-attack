package com.ironsource.mediationsdk;

import android.text.TextUtils;
import com.ironsource.mediationsdk.logger.IronLog;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3.dex */
public final class L {

    /* renamed from: c  reason: collision with root package name */
    J f10741c;

    /* renamed from: e  reason: collision with root package name */
    private final List<String> f10743e;

    /* renamed from: f  reason: collision with root package name */
    private final int f10744f;

    /* renamed from: a  reason: collision with root package name */
    ConcurrentHashMap<String, CopyOnWriteArrayList<J>> f10739a = new ConcurrentHashMap<>();

    /* renamed from: b  reason: collision with root package name */
    String f10740b = "";

    /* renamed from: d  reason: collision with root package name */
    private String f10742d = "";

    /* renamed from: g  reason: collision with root package name */
    private final Timer f10745g = new Timer();

    public L(List<String> list, int i) {
        this.f10743e = list;
        this.f10744f = i;
    }

    private synchronized boolean c() {
        J j = this.f10741c;
        if (j != null) {
            if (j.f10729b.equals(this.f10742d)) {
                return true;
            }
        }
        return false;
    }

    private void d() {
        Iterator<J> it = a().iterator();
        while (it.hasNext()) {
            J next = it.next();
            if (!next.equals(this.f10741c)) {
                next.d();
            }
        }
    }

    public final CopyOnWriteArrayList<J> a() {
        CopyOnWriteArrayList<J> copyOnWriteArrayList = this.f10739a.get(this.f10740b);
        return copyOnWriteArrayList == null ? new CopyOnWriteArrayList<>() : copyOnWriteArrayList;
    }

    public final synchronized void a(J j) {
        IronLog.INTERNAL.verbose("");
        J j2 = this.f10741c;
        if (j2 != null && !j2.equals(j)) {
            this.f10741c.d();
        }
        this.f10741c = j;
    }

    public final void a(CopyOnWriteArrayList<J> copyOnWriteArrayList, String str) {
        IronLog.INTERNAL.verbose("updating new waterfall with id " + str);
        d();
        this.f10739a.put(str, copyOnWriteArrayList);
        if (!TextUtils.isEmpty(this.f10742d)) {
            if (c()) {
                IronLog.INTERNAL.verbose("ad from previous waterfall " + this.f10742d + " is still showing - the current waterfall " + this.f10740b + " will be deleted instead");
                String str2 = this.f10740b;
                this.f10740b = this.f10742d;
                this.f10742d = str2;
            }
            final String str3 = this.f10742d;
            this.f10745g.schedule(new TimerTask() { // from class: com.ironsource.mediationsdk.L.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public final void run() {
                    try {
                        IronLog.INTERNAL.verbose("removing waterfall with id " + str3 + " from memory");
                        L.this.f10739a.remove(str3);
                        IronLog.INTERNAL.verbose("waterfall size is currently " + L.this.f10739a.size());
                    } finally {
                        cancel();
                    }
                }
            }, this.f10744f);
        }
        this.f10742d = this.f10740b;
        this.f10740b = str;
    }

    public final boolean b() {
        return this.f10739a.size() > 5;
    }

    public final synchronized boolean b(J j) {
        boolean z;
        IronLog.INTERNAL.verbose("");
        if (j != null && (this.f10741c == null || ((j.c() != LoadWhileShowSupportState.LOAD_WHILE_SHOW_BY_NETWORK || !this.f10741c.k().equals(j.k())) && ((j.c() != LoadWhileShowSupportState.NONE && !this.f10743e.contains(j.l())) || !this.f10741c.l().equals(j.l()))))) {
            z = false;
            if (z && j != null) {
                IronLog.INTERNAL.verbose(j.k() + " does not support load while show and will not be added to the auction request");
            }
        }
        z = true;
        if (z) {
            IronLog.INTERNAL.verbose(j.k() + " does not support load while show and will not be added to the auction request");
        }
        return !z;
    }
}
