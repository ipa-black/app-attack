package com.apm.insight.nativecrash;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.apm.insight.b.f;
import com.apm.insight.b.g;
import com.apm.insight.i;
import com.apm.insight.l.n;
import com.apm.insight.l.t;
import com.apm.insight.l.w;
import java.io.File;
/* loaded from: classes.dex */
public class NativeImpl {

    /* renamed from: a  reason: collision with root package name */
    private static volatile boolean f1025a = false;

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f1026b = false;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f1027c = true;

    public static int a(int i) {
        if (f1025a && i >= 0) {
            try {
                return doLock("", i);
            } catch (Throwable unused) {
            }
        }
        return -1;
    }

    public static String a(String str) {
        if (f1025a) {
            return doGetCrashHeader(str);
        }
        return null;
    }

    public static void a(int i, String str) {
        if (f1025a && !TextUtils.isEmpty(str)) {
            try {
                doWriteFile(i, str, str.length());
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(long j) {
    }

    public static void a(File file) {
        if (f1025a) {
            doRebuildTombstone(n.c(file).getAbsolutePath(), n.b(file).getAbsolutePath(), n.d(file).getAbsolutePath());
        }
    }

    public static void a(String str, String str2, String str3) {
        if (f1025a) {
            try {
                doDumpLogcat(str, str2, str3);
            } catch (Throwable unused) {
            }
        }
    }

    public static void a(boolean z) {
        f1027c = z;
        if (f1025a) {
            doSetResendSigQuit(z ? 1 : 0);
        }
    }

    public static boolean a() {
        if (f1026b) {
            return f1025a;
        }
        f1026b = true;
        if (!f1025a) {
            f1025a = t.a("apminsighta");
        }
        return f1025a;
    }

    public static boolean a(Context context) {
        String a2;
        boolean a3 = a();
        if (a3) {
            String str = n.j(context) + "/apminsight";
            if (new File(context.getApplicationInfo().nativeLibraryDir, "libapminsightb.so").exists()) {
                a2 = context.getApplicationInfo().nativeLibraryDir;
            } else {
                a2 = com.apm.insight.h.b.a();
                com.apm.insight.h.b.b("apminsightb");
            }
            doStart(Build.VERSION.SDK_INT, a2, str, i.f(), i.l());
        }
        return a3;
    }

    public static int b() {
        if (f1025a) {
            return doCreateCallbackThread();
        }
        return -1;
    }

    public static void b(int i) {
        if (f1025a) {
            try {
                doCloseFile(i);
            } catch (Throwable unused) {
            }
        }
    }

    public static void b(long j) {
        if (f1025a) {
            try {
                doSetAlogFlushAddr(j);
            } catch (Throwable unused) {
            }
        }
    }

    public static void b(String str) {
        if (f1025a) {
            doDumpHprof(str);
        }
    }

    public static int c(String str) {
        if (f1025a && !TextUtils.isEmpty(str)) {
            try {
                return doLock(str, -1);
            } catch (Throwable unused) {
            }
        }
        return -1;
    }

    public static long c(int i) {
        if (f1025a) {
            return doGetThreadCpuTime(i);
        }
        return 0L;
    }

    public static void c() {
    }

    public static void c(long j) {
        if (f1025a) {
            try {
                doSetAlogLogDirAddr(j);
            } catch (Throwable unused) {
            }
        }
    }

    public static void d(String str) {
        if (f1025a) {
            try {
                doDumpMemInfo(str);
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean d() {
        if (f1025a) {
            try {
                return doCheckNativeCrash();
            } catch (Throwable unused) {
                return false;
            }
        }
        return false;
    }

    private static native boolean doCheckNativeCrash();

    private static native void doCloseFile(int i);

    private static native int doCreateCallbackThread();

    private static native void doDump(String str);

    private static native void doDumpFds(String str);

    private static native void doDumpHprof(String str);

    private static native void doDumpLogcat(String str, String str2, String str3);

    private static native void doDumpMaps(String str);

    private static native void doDumpMemInfo(String str);

    private static native void doDumpThreads(String str);

    private static native long doGetAppCpuTime();

    private static native long doGetChildCpuTime();

    private static native String doGetCrashHeader(String str);

    private static native long doGetDeviceCpuTime();

    private static native int doGetFDCount();

    private static native String[] doGetFdDump(int i, int i2, int[] iArr, String[] strArr);

    private static native long doGetFreeMemory();

    private static native long doGetThreadCpuTime(int i);

    private static native int doGetThreadsCount();

    private static native long doGetTotalMemory();

    private static native long doGetVMSize();

    private static native void doInitThreadDump();

    private static native int doLock(String str, int i);

    private static native int doOpenFile(String str);

    private static native void doRebuildTombstone(String str, String str2, String str3);

    private static native void doSetAlogConfigPath(String str);

    private static native void doSetAlogFlushAddr(long j);

    private static native void doSetAlogLogDirAddr(long j);

    private static native void doSetResendSigQuit(int i);

    private static native void doSetUploadEnd();

    private static native void doSignalMainThread();

    private static native int doStart(int i, String str, String str2, String str3, int i2);

    private static native void doStartAnrMonitor(int i);

    private static native void doWriteFile(int i, String str, int i2);

    public static void e(String str) {
        if (f1025a) {
            try {
                doDumpFds(str);
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean e() {
        if (f1025a) {
            try {
                return is64Bit();
            } catch (Throwable unused) {
                return false;
            }
        }
        return false;
    }

    public static void f() {
        w.a(new Runnable() { // from class: com.apm.insight.nativecrash.NativeImpl.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    NativeImpl.l();
                } catch (Throwable th) {
                    try {
                        com.apm.insight.c.a(th, "NPTH_ANR_MONITOR_ERROR");
                    } catch (Throwable unused) {
                    }
                }
            }
        }, "NPTH-AnrMonitor");
    }

    public static void f(String str) {
        if (f1025a) {
            try {
                doDumpMaps(str);
            } catch (Throwable unused) {
            }
        }
    }

    public static void g(String str) {
        if (f1025a) {
            try {
                doDumpThreads(str);
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean g() {
        return f1027c;
    }

    public static int h(String str) {
        if (f1025a) {
            try {
                return doOpenFile(str);
            } catch (Throwable unused) {
                return -1;
            }
        }
        return -1;
    }

    public static void h() {
        if (f1025a) {
            doSignalMainThread();
        }
    }

    private static void handleNativeCrash(String str) {
        b.onNativeCrash(str);
    }

    public static void i() {
        if (f1025a) {
            doSetUploadEnd();
        }
    }

    public static void i(String str) {
        if (f1025a) {
            doDump(str);
        }
    }

    private static native boolean is64Bit();

    public static void j() {
        if (f1025a) {
            doInitThreadDump();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void l() {
        if (f1025a) {
            try {
                doStartAnrMonitor(Build.VERSION.SDK_INT);
            } catch (Throwable unused) {
            }
        }
    }

    private static void reportEventForAnrMonitor() {
        try {
            System.currentTimeMillis();
            i.j();
            f.b(true);
            com.apm.insight.b.d.b();
            g.a(i.g()).a().e();
        } catch (Throwable unused) {
        }
    }
}
