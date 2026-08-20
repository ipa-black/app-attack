package com.applovin.exoplayer2.l;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Looper;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private static w f3852a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f3853b = new Handler(Looper.getMainLooper());

    /* renamed from: c  reason: collision with root package name */
    private final CopyOnWriteArrayList<WeakReference<b>> f3854c = new CopyOnWriteArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    private final Object f3855d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private int f3856e = 0;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static volatile boolean f3857a;
    }

    /* loaded from: classes.dex */
    public interface b {
        void onNetworkTypeChanged(int i);
    }

    /* loaded from: classes.dex */
    private final class c extends BroadcastReceiver {
        private c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int c2 = w.c(context);
            if (ai.f3781a >= 29 && !a.f3857a && c2 == 5) {
                try {
                    TelephonyManager telephonyManager = (TelephonyManager) com.applovin.exoplayer2.l.a.b((TelephonyManager) context.getSystemService("phone"));
                    d dVar = new d();
                    if (ai.f3781a < 31) {
                        telephonyManager.listen(dVar, 1);
                    } else {
                        telephonyManager.listen(dVar, 1048576);
                    }
                    telephonyManager.listen(dVar, 0);
                    return;
                } catch (RuntimeException unused) {
                }
            }
            w.this.a(c2);
        }
    }

    /* loaded from: classes.dex */
    private class d extends PhoneStateListener {
        private d() {
        }

        @Override // android.telephony.PhoneStateListener
        public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
            int overrideNetworkType = telephonyDisplayInfo.getOverrideNetworkType();
            w.this.a(overrideNetworkType == 3 || overrideNetworkType == 4 ? 10 : 5);
        }

        @Override // android.telephony.PhoneStateListener
        public void onServiceStateChanged(ServiceState serviceState) {
            String serviceState2 = serviceState == null ? "" : serviceState.toString();
            w.this.a(serviceState2.contains("nrState=CONNECTED") || serviceState2.contains("nrState=NOT_RESTRICTED") ? 10 : 5);
        }
    }

    private w(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(new c(), intentFilter);
    }

    private static int a(NetworkInfo networkInfo) {
        switch (networkInfo.getSubtype()) {
            case 1:
            case 2:
                return 3;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 17:
                return 4;
            case 13:
                return 5;
            case 16:
            case 19:
            default:
                return 6;
            case 18:
                return 2;
            case 20:
                return ai.f3781a >= 29 ? 9 : 0;
        }
    }

    public static synchronized w a(Context context) {
        w wVar;
        synchronized (w.class) {
            if (f3852a == null) {
                f3852a = new w(context);
            }
            wVar = f3852a;
        }
        return wVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        synchronized (this.f3855d) {
            if (this.f3856e == i) {
                return;
            }
            this.f3856e = i;
            Iterator<WeakReference<b>> it = this.f3854c.iterator();
            while (it.hasNext()) {
                WeakReference<b> next = it.next();
                b bVar = next.get();
                if (bVar != null) {
                    bVar.onNetworkTypeChanged(i);
                } else {
                    this.f3854c.remove(next);
                }
            }
        }
    }

    private void b() {
        Iterator<WeakReference<b>> it = this.f3854c.iterator();
        while (it.hasNext()) {
            WeakReference<b> next = it.next();
            if (next.get() == null) {
                this.f3854c.remove(next);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(b bVar) {
        bVar.onNetworkTypeChanged(a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int c(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        int i = 0;
        if (connectivityManager == null) {
            return 0;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            i = 1;
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type == 1) {
                        return 2;
                    }
                    if (type != 4 && type != 5) {
                        if (type != 6) {
                            return type != 9 ? 8 : 7;
                        }
                        return 5;
                    }
                }
                return a(activeNetworkInfo);
            }
        } catch (SecurityException unused) {
        }
        return i;
    }

    public int a() {
        int i;
        synchronized (this.f3855d) {
            i = this.f3856e;
        }
        return i;
    }

    public void a(final b bVar) {
        b();
        this.f3854c.add(new WeakReference<>(bVar));
        this.f3853b.post(new Runnable() { // from class: com.applovin.exoplayer2.l.w$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                w.this.b(bVar);
            }
        });
    }
}
