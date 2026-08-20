package com.bytedance.sdk.component.Sf;

import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.component.utils.ABk;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: PoolTaskStatistics.java */
/* loaded from: classes2.dex */
public class fl {
    private static AtomicInteger ac = new AtomicInteger(0);
    public static final String[] Qhi = {"com.bytedance.sdk", "com.bykv.vk", "com.ss", "tt_pangle"};
    public static final String[] cJ = {"tt_pangle", "bd_tracker"};
    private static int CJ = 0;
    private static int fl = 0;

    public static void Qhi() {
        try {
            cJ();
        } catch (Throwable unused) {
        }
    }

    private static void cJ() {
        int i;
        String str;
        ac hm = ROR.hm();
        if (hm == null) {
            return;
        }
        int i2 = 1;
        int addAndGet = ac.addAndGet(1);
        if (ROR.ac < 0 || addAndGet % ROR.ac != 0 || Looper.getMainLooper() == Looper.myLooper()) {
            return;
        }
        Map<Thread, StackTraceElement[]> allStackTraces = Thread.getAllStackTraces();
        HashMap hashMap = new HashMap();
        if (allStackTraces == null) {
            return;
        }
        boolean Qhi2 = ABk.Qhi();
        int size = allStackTraces.size();
        if (size > fl) {
            fl = size;
        }
        Iterator<Map.Entry<Thread, StackTraceElement[]>> it = allStackTraces.entrySet().iterator();
        int i3 = 0;
        int i4 = 0;
        while (it.hasNext()) {
            Map.Entry<Thread, StackTraceElement[]> next = it.next();
            i4 += i2;
            Thread key = next.getKey();
            StackTraceElement[] value = next.getValue();
            StringBuilder sb = new StringBuilder("\n");
            if (Qhi2) {
                sb.append("Thread Name is : " + key.getName());
                sb.append("\n");
            }
            int length = value.length;
            String str2 = null;
            int i5 = 0;
            while (i5 < length) {
                String stackTraceElement = value[i5].toString();
                Iterator<Map.Entry<Thread, StackTraceElement[]>> it2 = it;
                if (Qhi2) {
                    sb.append(stackTraceElement + "\n");
                }
                if (TextUtils.isEmpty(str2)) {
                    if (Qhi(stackTraceElement, Qhi)) {
                        str = stackTraceElement;
                    } else {
                        str = stackTraceElement;
                        if (!Qhi(key.getName(), cJ)) {
                        }
                    }
                    i3++;
                    str2 = str;
                }
                i5++;
                it = it2;
            }
            Iterator<Map.Entry<Thread, StackTraceElement[]>> it3 = it;
            if (Qhi2) {
                if (TextUtils.isEmpty(str2)) {
                    i = 1;
                } else {
                    String str3 = str2 + "&" + key.getName();
                    Qhi qhi = (Qhi) hashMap.get(str3);
                    if (qhi != null) {
                        i = 1;
                        qhi.Qhi(qhi.Qhi() + 1);
                    } else {
                        i = 1;
                        qhi = new Qhi(str3, 1, sb.toString(), key.getName());
                    }
                    hashMap.put(str3, qhi);
                }
                if (!TextUtils.isEmpty(sb.toString())) {
                    Log.e("PoolTaskStatistics", "Thread index = " + i4 + "   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&");
                    Log.w("PoolTaskStatistics", sb.toString());
                }
            } else {
                i = 1;
            }
            i2 = i;
            it = it3;
        }
        if (i3 > CJ) {
            CJ = i3;
        }
        if (Qhi2) {
            Log.e("PoolTaskStatistics", "SDK current threads=" + i3 + ", SDK Max threads=" + CJ + ", Application threads = " + size + ", Application max threads = " + fl);
            for (Map.Entry entry : hashMap.entrySet()) {
                Log.i("PoolTaskStatistics", ((Qhi) entry.getValue()).toString());
            }
        }
        hm.Qhi(new com.bytedance.sdk.component.Sf.cJ.Qhi(i3, CJ, size, fl));
    }

    private static boolean Qhi(String str, String[] strArr) {
        if (!TextUtils.isEmpty(str) && strArr != null) {
            for (String str2 : strArr) {
                if (str.contains(str2)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* compiled from: PoolTaskStatistics.java */
    /* loaded from: classes2.dex */
    public static class Qhi {
        public String CJ;
        public int Qhi;
        public String ac;
        public String cJ;

        public Qhi(String str, int i, String str2, String str3) {
            this.ac = str;
            this.Qhi = i;
            this.CJ = str2;
            this.cJ = str3;
        }

        public void Qhi(int i) {
            this.Qhi = i;
        }

        public int Qhi() {
            return this.Qhi;
        }

        public String toString() {
            return "ThreadModel{times=" + this.Qhi + ", name='" + this.cJ + "', lastStackStack='" + this.ac + "'}";
        }
    }
}
