package com.appodeal.ads;

import android.content.Context;
import com.appodeal.ads.Native;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.utils.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes.dex */
public final class n2 extends g<t2, s2, l2> {

    /* renamed from: e  reason: collision with root package name */
    public static NativeCallbacks f7088e;

    /* renamed from: a  reason: collision with root package name */
    public int f7089a = 2;

    /* renamed from: b  reason: collision with root package name */
    public boolean f7090b = false;

    /* renamed from: c  reason: collision with root package name */
    public boolean f7091c = false;

    /* renamed from: d  reason: collision with root package name */
    public final ArrayList f7092d = new ArrayList();

    @Override // com.appodeal.ads.g
    /* renamed from: a */
    public final void e(t2 t2Var, s2 s2Var) {
        ArrayList o = s2Var.o();
        synchronized (this.f7092d) {
            this.f7092d.addAll(o);
            Collections.sort(this.f7092d, new Comparator() { // from class: com.appodeal.ads.n2$$ExternalSyntheticLambda0
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    int compare;
                    compare = Double.compare(((NativeAd) obj2).getPredictedEcpm(), ((NativeAd) obj).getPredictedEcpm());
                    return compare;
                }
            });
        }
        if (!this.f7090b) {
            this.f7090b = true;
            Log.log("NativeAdBox", LogConstants.EVENT_NOTIFY_LOADED, String.format(Locale.ENGLISH, "available count of Native Ads: %d", Integer.valueOf(this.f7092d.size())));
            NativeCallbacks nativeCallbacks = f7088e;
            if (nativeCallbacks != null) {
                nativeCallbacks.onNativeLoaded();
            }
        }
        if (t2Var.q()) {
            return;
        }
        a(false);
    }

    public final void a(boolean z) {
        int i;
        synchronized (this.f7092d) {
            Native.a a2 = Native.a();
            if (z || a2.k()) {
                int i2 = i0.f6732e;
                if (i2 > 0 && i2 != this.f7089a) {
                    this.f7089a = i2;
                }
                int i3 = this.f7089a;
                int size = this.f7092d.size();
                synchronized (this.f7092d) {
                    Iterator it = this.f7092d.iterator();
                    i = 0;
                    while (it.hasNext()) {
                        if (((NativeAd) it.next()).isPrecache()) {
                            i++;
                        }
                    }
                }
                int i4 = i3 - (size - i);
                if (i4 > 0) {
                    Native.f6381a = i4;
                    t2 f2 = a2.f();
                    if (f2 == null || !f2.u()) {
                        Native.a().c(com.appodeal.ads.context.b.f6583b.getApplicationContext());
                    }
                } else if (!this.f7090b) {
                    this.f7090b = true;
                    NativeCallbacks nativeCallbacks = f7088e;
                    if (nativeCallbacks != null) {
                        nativeCallbacks.onNativeLoaded();
                    }
                }
            }
        }
    }

    public final void b(int i) {
        if (i > 5) {
            i = 5;
        }
        if (i < 2) {
            i = 2;
        }
        this.f7089a = i;
    }

    @Override // com.appodeal.ads.g
    public final void b(t2 t2Var, s2 s2Var) {
        if (this.f7092d.size() == 0) {
            Log.log(LogConstants.KEY_NATIVE, LogConstants.EVENT_NOTIFY_EXPIRED, Log.LogLevel.verbose);
            NativeCallbacks nativeCallbacks = f7088e;
            if (nativeCallbacks != null) {
                nativeCallbacks.onNativeExpired();
            }
        }
    }

    public final boolean b() {
        boolean z;
        synchronized (this.f7092d) {
            z = !this.f7092d.isEmpty();
        }
        return z;
    }

    public final void c() {
        a(false, false, false);
    }

    @Override // com.appodeal.ads.g
    public final void c(t2 t2Var, s2 s2Var, l2 l2Var) {
        l2 l2Var2 = l2Var;
        Log.log(LogConstants.KEY_NATIVE, LogConstants.EVENT_NOTIFY_SHOWN, Log.LogLevel.verbose);
        NativeCallbacks nativeCallbacks = f7088e;
        if (nativeCallbacks != null) {
            nativeCallbacks.onNativeShown(l2Var2);
        }
    }

    @Override // com.appodeal.ads.g
    public final void d(r rVar, l lVar) {
        t2 t2Var = (t2) rVar;
        s2 s2Var = (s2) lVar;
        if (this.f7090b || this.f7091c) {
            return;
        }
        this.f7091c = true;
        Log.log(LogConstants.KEY_NATIVE, LogConstants.EVENT_NOTIFY_LOAD_FAILED, Log.LogLevel.verbose);
        NativeCallbacks nativeCallbacks = f7088e;
        if (nativeCallbacks != null) {
            nativeCallbacks.onNativeFailedToLoad();
        }
    }

    @Override // com.appodeal.ads.g
    public final void b(r rVar, l lVar, Object obj) {
        t2 t2Var = (t2) rVar;
        s2 s2Var = (s2) lVar;
        l2 l2Var = (l2) obj;
        Log.log(LogConstants.KEY_NATIVE, LogConstants.EVENT_NOTIFY_SHOW_FAILED, Log.LogLevel.verbose);
        NativeCallbacks nativeCallbacks = f7088e;
        if (nativeCallbacks != null) {
            nativeCallbacks.onNativeShowFailed(l2Var);
        }
    }

    public final HashSet a() {
        HashSet hashSet;
        synchronized (this.f7092d) {
            hashSet = new HashSet();
            Iterator it = this.f7092d.iterator();
            while (it.hasNext()) {
                hashSet.add(((l2) ((NativeAd) it.next())).f6833a);
            }
        }
        return hashSet;
    }

    public final ArrayList a(int i) {
        ArrayList<NativeAd> arrayList;
        synchronized (this.f7092d) {
            if (i >= this.f7092d.size()) {
                arrayList = new ArrayList(this.f7092d);
            } else {
                ArrayList arrayList2 = new ArrayList(i);
                for (int i2 = 0; i2 < i; i2++) {
                    arrayList2.add((NativeAd) this.f7092d.get(i2));
                }
                arrayList = arrayList2;
            }
            for (NativeAd nativeAd : arrayList) {
                com.appodeal.ads.utils.o.b(((l2) nativeAd).f6833a);
            }
            this.f7092d.removeAll(arrayList);
            if (this.f7092d.size() == 0) {
                this.f7090b = false;
                this.f7091c = false;
            }
            Log.log("NativeAdBox", LogConstants.EVENT_GET_ADS, String.format(Locale.ENGLISH, "available count of Native Ads: %d", Integer.valueOf(this.f7092d.size())));
            a(false);
        }
        return arrayList;
    }

    public final void a(boolean z, boolean z2, boolean z3) {
        synchronized (this.f7092d) {
            if (this.f7092d.size() == 0) {
                this.f7090b = false;
                this.f7091c = false;
            }
            if (z) {
                this.f7092d.clear();
                Native.a a2 = Native.a();
                Context applicationContext = com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext();
                Native.c cVar = new Native.c();
                cVar.f7445a = true;
                cVar.f7446b = z2;
                cVar.f7447c = z3;
                a2.b(applicationContext, (Context) cVar);
            } else {
                a(true);
            }
        }
    }

    @Override // com.appodeal.ads.g
    public final void a(t2 t2Var, s2 s2Var, l2 l2Var) {
        l2 l2Var2 = l2Var;
        Log.log(LogConstants.KEY_NATIVE, LogConstants.EVENT_NOTIFY_CLICKED, Log.LogLevel.verbose);
        NativeCallbacks nativeCallbacks = f7088e;
        if (nativeCallbacks != null) {
            nativeCallbacks.onNativeClicked(l2Var2);
        }
    }
}
