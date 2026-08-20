package com.appnext.base.services.a;

import android.os.Bundle;
import android.text.TextUtils;
import com.appnext.base.b.d;
import com.appnext.base.b.i;
import com.appnext.base.b.j;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;
import org.altbeacon.beacon.service.scanner.CycledLeScanner;
/* loaded from: classes.dex */
public abstract class c {
    public static final String eH = "more_data";
    private static final long eI = 1000;
    private static final long eJ = 60000;
    private static final long eK = 3600000;
    private static final long eL = 86400000;

    protected abstract void a(com.appnext.base.a.b.c cVar, long j, long j2);

    protected abstract void a(com.appnext.base.a.b.c cVar, long j, Bundle bundle);

    protected abstract void b(com.appnext.base.a.b.c cVar);

    protected abstract void b(com.appnext.base.a.b.c cVar, long j, long j2);

    protected abstract void g(List<com.appnext.base.a.b.c> list);

    public final void a(com.appnext.base.a.b.c cVar, boolean z, Bundle bundle) {
        if (cVar != null) {
            try {
                if (!TextUtils.isEmpty(cVar.ak()) && !cVar.ak().equals("off")) {
                    if (cVar.al() != null && cVar.am().equals("time")) {
                        long D = z ? 0L : D(cVar.al());
                        if (D != -1) {
                            b(cVar, D + a(-1800000L, CycledLeScanner.ANDROID_N_MAX_SCAN_DURATION_MILLIS), 86400000L);
                        }
                    } else if (cVar.ao() != null && cVar.ao().equals(d.fn)) {
                        long g2 = j.g(cVar.al(), cVar.am());
                        if (g2 == -1) {
                            return;
                        }
                        long j = i.aR().getLong(cVar.getKey() + i.fy, 0L);
                        if (j != 0 && !z) {
                            a(cVar, g2 + j, g2);
                            return;
                        }
                        a(cVar, System.currentTimeMillis(), g2);
                    } else if (cVar.ao() == null || !cVar.ao().equals(d.fm)) {
                    } else {
                        a(cVar, System.currentTimeMillis(), (Bundle) null);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static long D(String str) {
        try {
            if (str.length() == 4) {
                int parseInt = Integer.parseInt(str.substring(0, 2));
                int parseInt2 = Integer.parseInt(str.substring(2, 4));
                Calendar calendar = Calendar.getInstance();
                calendar.set(11, parseInt);
                calendar.set(12, parseInt2);
                calendar.set(13, 0);
                if (new Date().after(calendar.getTime())) {
                    calendar.add(5, 1);
                }
                return calendar.getTimeInMillis();
            }
            return -1L;
        } catch (Throwable unused) {
            return -1L;
        }
    }

    private static long a(long j, long j2) {
        try {
            return CycledLeScanner.ANDROID_N_MAX_SCAN_DURATION_MILLIS - new Random().nextInt((int) (Math.abs(-1800000L) + CycledLeScanner.ANDROID_N_MAX_SCAN_DURATION_MILLIS));
        } catch (Throwable unused) {
            return -1800000L;
        }
    }

    public final void c(com.appnext.base.a.b.c cVar) {
        if (cVar == null) {
            return;
        }
        try {
            com.appnext.base.operations.b.aI().b(cVar.getKey(), cVar, null, null);
            b(cVar);
        } catch (Throwable unused) {
        }
    }

    public final void h(List<com.appnext.base.a.b.c> list) {
        if (list == null) {
            return;
        }
        try {
            for (com.appnext.base.a.b.c cVar : list) {
                com.appnext.base.operations.b.aI().b(cVar.getKey(), cVar, null, null);
            }
            g(list);
        } catch (Throwable unused) {
        }
    }
}
