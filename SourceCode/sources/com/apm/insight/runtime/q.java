package com.apm.insight.runtime;

import android.system.Os;
import android.system.OsConstants;
/* loaded from: classes.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private static long f1147a = -1;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static long f1148a = -1;

        public static long a() {
            if (q.f1147a == -1) {
                long unused = q.f1147a = 1000 / b();
            }
            return q.f1147a;
        }

        public static long a(long j) {
            long j2 = f1148a;
            if (j2 > 0) {
                return j2;
            }
            long sysconf = Os.sysconf(OsConstants._SC_CLK_TCK);
            if (sysconf > 0) {
                j = sysconf;
            }
            f1148a = j;
            return j;
        }

        private static long a(String str, long j) {
            try {
                int i = Class.forName("libcore.io.OsConstants").getField(str).getInt(null);
                Class<?> cls = Class.forName("libcore.io.Libcore");
                return ((Long) Class.forName("libcore.io.Os").getMethod("sysconf", Integer.TYPE).invoke(cls.getField("os").get(null), Integer.valueOf(i))).longValue();
            } catch (Throwable th) {
                th.printStackTrace();
                return j;
            }
        }

        public static long b() {
            return a(100L);
        }
    }
}
