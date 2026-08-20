package com.apm.insight.runtime;

import com.appodeal.ads.modules.common.internal.Constants;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static long f1093a = -30000;

    /* renamed from: b  reason: collision with root package name */
    private static File f1094b;

    public static String a(long j, String str) {
        try {
            return com.apm.insight.l.h.c(new File(com.apm.insight.l.n.j(com.apm.insight.i.g()), "apminsight/TrackInfo/" + ((j - (j % Constants.MILLIS_IN_DAY)) / Constants.MILLIS_IN_DAY) + "/" + str));
        } catch (Throwable th) {
            return th.getMessage();
        }
    }

    public static void a() {
        File file = new File(com.apm.insight.l.n.j(com.apm.insight.i.g()), "apminsight/TrackInfo/");
        String[] list = file.list();
        if (list != null && list.length > 5) {
            Arrays.sort(list);
            for (int i = 0; i < list.length - 5; i++) {
                com.apm.insight.l.h.a(new File(file, list[i]));
            }
        }
    }

    public static void a(long j) {
        if (j - f1093a < 30000) {
            return;
        }
        f1093a = j;
        try {
            com.apm.insight.l.h.a(b(), String.valueOf(System.currentTimeMillis()), false);
        } catch (IOException unused) {
        }
    }

    private static File b() {
        if (f1094b == null) {
            long currentTimeMillis = System.currentTimeMillis();
            f1094b = new File(com.apm.insight.l.n.j(com.apm.insight.i.g()), "apminsight/TrackInfo/" + ((currentTimeMillis - (currentTimeMillis % Constants.MILLIS_IN_DAY)) / Constants.MILLIS_IN_DAY) + "/" + com.apm.insight.i.f());
        }
        return f1094b;
    }
}
