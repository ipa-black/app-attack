package com.bytedance.sdk.component.utils;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: TTNetworkUtils.java */
/* loaded from: classes2.dex */
public class bxS {
    private static final Object Qhi = new Object();
    private static final Map<Qhi, Object> cJ = new ConcurrentHashMap();
    private static AtomicBoolean ac = new AtomicBoolean(false);
    private static volatile int CJ = -1;
    private static volatile long fl = 0;
    private static volatile int Tgh = 60000;
    private static HzH ROR = null;
    private static final AtomicBoolean Sf = new AtomicBoolean(false);

    /* compiled from: TTNetworkUtils.java */
    /* loaded from: classes2.dex */
    public interface Qhi {
        void Qhi(Context context, Intent intent, boolean z, int i);
    }

    public static int Qhi(Context context, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (fl + j <= elapsedRealtime) {
            return cJ(context);
        }
        if (CJ == -1) {
            return cJ(context);
        }
        if (elapsedRealtime - fl >= Tgh) {
            cJ(context, (Intent) null, false, false);
        }
        return CJ;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void cJ(final Context context, final Intent intent, final boolean z, final boolean z2) {
        if (!z && z2) {
            CJ = 0;
        } else if (Sf.compareAndSet(false, true)) {
            com.bytedance.sdk.component.Sf.ROR.cJ(new com.bytedance.sdk.component.Sf.hm("getNetworkType") { // from class: com.bytedance.sdk.component.utils.bxS.1
                @Override // java.lang.Runnable
                public void run() {
                    int unused = bxS.CJ = z2 ? 0 : bxS.cJ(context);
                    bxS.Sf.set(false);
                    if (z) {
                        bxS.cJ(context, intent, bxS.CJ, z2);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void cJ(Context context, Intent intent, int i, boolean z) {
        Map<Qhi, Object> map = cJ;
        if (map == null || map.size() <= 0) {
            return;
        }
        for (Qhi qhi : map.keySet()) {
            if (qhi != null) {
                qhi.Qhi(context, intent, !z, i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int cJ(Context context) {
        CJ = ac(context);
        fl = SystemClock.elapsedRealtime();
        return CJ;
    }

    private static int ac(Context context) {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    return type != 1 ? 1 : 4;
                }
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                switch (activeNetworkInfo.getSubtype()) {
                    case 1:
                    case 2:
                    case 4:
                    case 7:
                    case 11:
                    case 16:
                        return 2;
                    case 3:
                    case 5:
                    case 6:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                    case 14:
                    case 15:
                    case 17:
                        return 3;
                    case 13:
                    case 18:
                    case 19:
                        HzH hzH = ROR;
                        return (hzH == null || !hzH.Qhi(context, telephonyManager)) ? 5 : 6;
                    case 20:
                        return 6;
                    default:
                        String subtypeName = activeNetworkInfo.getSubtypeName();
                        return (TextUtils.isEmpty(subtypeName) || !(subtypeName.equalsIgnoreCase("TD-SCDMA") || subtypeName.equalsIgnoreCase("WCDMA") || subtypeName.equalsIgnoreCase("CDMA2000"))) ? 1 : 3;
                }
            }
            return 0;
        } catch (Throwable unused) {
            return 1;
        }
    }

    public static void Qhi(Qhi qhi, Context context) {
        if (qhi == null) {
            return;
        }
        if (!ac.get()) {
            try {
                context.registerReceiver(new cJ(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                ac.set(true);
            } catch (Throwable unused) {
            }
        }
        cJ.put(qhi, Qhi);
    }

    public static void Qhi(Qhi qhi) {
        if (qhi == null) {
            return;
        }
        cJ.remove(qhi);
    }

    /* compiled from: TTNetworkUtils.java */
    /* loaded from: classes2.dex */
    private static class cJ extends BroadcastReceiver {
        private cJ() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            boolean z = false;
            boolean booleanExtra = intent.getBooleanExtra("noConnectivity", false);
            if (bxS.cJ != null && bxS.cJ.size() > 0) {
                z = true;
            }
            bxS.cJ(context, intent, z, booleanExtra);
        }
    }
}
