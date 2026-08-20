package com.bytedance.sdk.openadsdk.utils;

import android.content.res.Configuration;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: SimUtils.java */
/* loaded from: classes2.dex */
public class Eh {
    private static volatile boolean CJ = true;
    private static String Qhi;
    private static String ac;
    private static String cJ;

    /* JADX INFO: Access modifiers changed from: private */
    public static void fl() {
        String str;
        String str2;
        String str3;
        if (com.bytedance.sdk.openadsdk.core.HzH.Qhi() == null) {
            return;
        }
        CJ = true;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) com.bytedance.sdk.openadsdk.core.HzH.Qhi().getSystemService("phone");
            int simState = telephonyManager.getSimState();
            if (simState == 0) {
                CJ = false;
            } else if (simState == 1) {
                CJ = false;
            }
            com.bytedance.sdk.component.utils.ABk.Qhi("MCC", CJ ? "Have SIM card" : "No SIM card");
            String str4 = null;
            try {
                str = telephonyManager.getSimOperatorName();
            } catch (Throwable unused) {
                str = null;
            }
            try {
                str2 = telephonyManager.getNetworkOperator();
            } catch (Throwable unused2) {
                str2 = null;
            }
            if (str2 == null || str2.length() < 5) {
                try {
                    str2 = telephonyManager.getSimOperator();
                } catch (Throwable unused3) {
                }
            }
            if (TextUtils.isEmpty(str2) || str2.length() <= 4) {
                str3 = null;
            } else {
                String substring = str2.substring(0, 3);
                str3 = str2.substring(3);
                str4 = substring;
            }
            if (!TextUtils.isEmpty(str)) {
                Qhi = str;
            }
            if (!TextUtils.isEmpty(str4)) {
                cJ = str4;
            }
            if (TextUtils.isEmpty(str3)) {
                return;
            }
            ac = str3;
        } catch (Throwable unused4) {
        }
    }

    public static String Qhi() {
        Qhi.Qhi();
        return Qhi;
    }

    public static String cJ() {
        try {
            Qhi.Qhi();
            if (!CJ) {
                com.bytedance.sdk.component.utils.ABk.Qhi("MCC", "getMCC" + (CJ ? "Have SIM card" : "No SIM card, MCC returns null"));
                return null;
            }
            Configuration configuration = com.bytedance.sdk.openadsdk.core.HzH.Qhi().getResources().getConfiguration();
            String valueOf = configuration.mcc != 0 ? String.valueOf(configuration.mcc) : cJ;
            com.bytedance.sdk.component.utils.ABk.Qhi("MCC", "config=" + configuration.mcc + ",sMCC=" + cJ);
            return valueOf;
        } catch (Throwable th) {
            com.bytedance.sdk.component.utils.ABk.Qhi("SimUtils", th.getMessage());
            return null;
        }
    }

    public static String ac() {
        Qhi.Qhi();
        return ac;
    }

    /* compiled from: SimUtils.java */
    /* loaded from: classes2.dex */
    public static class Qhi extends com.bytedance.sdk.component.Sf.hm {
        public static AtomicBoolean Qhi = new AtomicBoolean(false);
        private static final AtomicLong cJ = new AtomicLong(0);

        public Qhi(String str, int i) {
            super(str, i);
        }

        public static void Qhi() {
            if (Qhi.get()) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            AtomicLong atomicLong = cJ;
            if (currentTimeMillis - atomicLong.get() < TTAdConstant.AD_MAX_EVENT_TIME) {
                return;
            }
            atomicLong.set(currentTimeMillis);
            lG.cJ(new Qhi("UpdateSimStatusTask", 5));
        }

        @Override // java.lang.Runnable
        public void run() {
            Qhi.set(true);
            Eh.fl();
            Qhi.set(false);
        }
    }
}
