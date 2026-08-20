package com.apm.insight.g;

import android.os.Looper;
import android.os.SystemClock;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.ICrashFilter;
import com.apm.insight.IOOMCallback;
import com.apm.insight.i;
import com.apm.insight.l.e;
import com.apm.insight.l.h;
import com.apm.insight.l.j;
import com.apm.insight.l.n;
import com.apm.insight.l.p;
import com.apm.insight.l.q;
import com.apm.insight.l.u;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.a.f;
import com.apm.insight.runtime.o;
import java.io.File;
import java.io.FileOutputStream;
import java.io.PrintStream;
import java.lang.Thread;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class a implements Thread.UncaughtExceptionHandler {

    /* renamed from: a  reason: collision with root package name */
    private static a f848a = null;
    private static volatile boolean i = false;
    private static volatile ThreadLocal<Boolean> j = new ThreadLocal<>();
    private static ArrayList<b> l = new ArrayList<>();

    /* renamed from: b  reason: collision with root package name */
    private Thread.UncaughtExceptionHandler f849b;

    /* renamed from: c  reason: collision with root package name */
    private c f850c;

    /* renamed from: d  reason: collision with root package name */
    private c f851d;

    /* renamed from: e  reason: collision with root package name */
    private volatile int f852e = 0;

    /* renamed from: f  reason: collision with root package name */
    private volatile int f853f = 0;

    /* renamed from: g  reason: collision with root package name */
    private ConcurrentHashMap<String, Object> f854g = new ConcurrentHashMap<>();

    /* renamed from: h  reason: collision with root package name */
    private ConcurrentHashMap<String, Object> f855h = new ConcurrentHashMap<>();
    private JSONArray k;

    private a() {
        d();
    }

    private static int a(Throwable th, Thread thread) {
        int i2 = 0;
        for (int i3 = 0; i3 < l.size(); i3++) {
            try {
                try {
                    i2 |= l.get(i3).a(th, thread);
                } catch (Throwable th2) {
                    com.apm.insight.c.a().a("NPTH_CATCH", th2);
                }
            } catch (Throwable unused) {
            }
        }
        return i2;
    }

    public static a a() {
        if (f848a == null) {
            f848a = new a();
        }
        return f848a;
    }

    private String a(File file, boolean z, Throwable th, String str, Thread thread, boolean z2) {
        String absolutePath = file.getAbsolutePath();
        this.f855h.put(file.getName(), file);
        try {
            file.getParentFile().mkdirs();
            file.createNewFile();
            NativeImpl.c(absolutePath);
        } catch (Throwable unused) {
        }
        String str2 = null;
        if (z2) {
            int h2 = NativeImpl.h(absolutePath);
            if (h2 > 0) {
                try {
                    NativeImpl.a(h2, com.apm.insight.l.a.c(i.g()));
                    NativeImpl.a(h2, "\n");
                    NativeImpl.a(h2, th.getMessage());
                    NativeImpl.a(h2, "\n");
                    NativeImpl.a(h2, th.getClass().getName());
                    if (th.getMessage() != null) {
                        NativeImpl.a(h2, ": ");
                        NativeImpl.a(h2, th.getMessage());
                    }
                    NativeImpl.a(h2, "\n");
                    NativeImpl.a(h2, thread.getName());
                    NativeImpl.a(h2, "\n");
                } catch (Throwable unused2) {
                }
                try {
                    NativeImpl.a(h2, "stack:");
                    NativeImpl.a(h2, "\n");
                } catch (Throwable unused3) {
                }
                u.a(th, h2);
                NativeImpl.b(h2);
            }
        } else {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file, true);
                if (q.a(32768)) {
                    throw new RuntimeException("test exception before write stack");
                }
                fileOutputStream.write((com.apm.insight.l.a.c(i.g()) + "\n").getBytes());
                fileOutputStream.write((th.getMessage() + "\n").getBytes());
                fileOutputStream.write((th + "\n").getBytes());
                fileOutputStream.write((thread.getName() + "\n").getBytes());
                try {
                    fileOutputStream.write("stack:\n".getBytes());
                } catch (Throwable unused4) {
                }
                try {
                } catch (Throwable th2) {
                    try {
                        if (q.a(16384)) {
                            throw new RuntimeException("test exception system write stack");
                        }
                        th.printStackTrace(new PrintStream(fileOutputStream));
                    } catch (Throwable th3) {
                        try {
                            fileOutputStream.write("err:\n".getBytes());
                            fileOutputStream.write((th2 + "\n").getBytes());
                            fileOutputStream.write((th3 + "\n").getBytes());
                        } catch (Throwable unused5) {
                        }
                    }
                }
                if (q.a(8192)) {
                    throw new RuntimeException("test exception npth write stack");
                }
                str2 = u.a(th, thread, new PrintStream(fileOutputStream), Looper.getMainLooper() == Looper.myLooper() ? new e.a() { // from class: com.apm.insight.g.a.1

                    /* renamed from: a  reason: collision with root package name */
                    boolean f856a = false;

                    @Override // com.apm.insight.l.e.a
                    public boolean a(String str3) {
                        if (!this.f856a && str3.contains("android.os.Looper.loop")) {
                            this.f856a = true;
                        }
                        return !this.f856a;
                    }
                } : new e.a());
                j.a(fileOutputStream);
                j.a(fileOutputStream);
            } catch (Throwable unused6) {
            }
        }
        return str2;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(38:7|(1:9)|10|(2:11|12)|(3:183|184|(33:186|15|16|(2:177|178)(2:18|19)|20|21|22|23|24|(20:(2:163|164)|27|28|29|31|(1:157)(3:33|(1:35)(1:155)|36)|37|(1:153)(3:40|41|42)|43|(1:45)|47|48|(1:50)(1:148)|51|52|(2:57|(6:59|60|61|62|63|(4:(1:73)(2:67|68)|69|70|71)(4:74|1fa|79|80)))|134|(3:137|138|(5:142|143|144|63|(0)(0)))|136|(0)(0))|169|28|29|31|(16:157|37|(0)|153|43|(0)|47|48|(0)(0)|51|52|(3:54|57|(0))|134|(0)|136|(0)(0))|33|(0)(0)|36|37|(0)|153|43|(0)|47|48|(0)(0)|51|52|(0)|134|(0)|136|(0)(0)))|14|15|16|(0)(0)|20|21|22|23|24|(0)|169|28|29|31|(0)|33|(0)(0)|36|37|(0)|153|43|(0)|47|48|(0)(0)|51|52|(0)|134|(0)|136|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(39:7|(1:9)|10|11|12|(3:183|184|(33:186|15|16|(2:177|178)(2:18|19)|20|21|22|23|24|(20:(2:163|164)|27|28|29|31|(1:157)(3:33|(1:35)(1:155)|36)|37|(1:153)(3:40|41|42)|43|(1:45)|47|48|(1:50)(1:148)|51|52|(2:57|(6:59|60|61|62|63|(4:(1:73)(2:67|68)|69|70|71)(4:74|1fa|79|80)))|134|(3:137|138|(5:142|143|144|63|(0)(0)))|136|(0)(0))|169|28|29|31|(16:157|37|(0)|153|43|(0)|47|48|(0)(0)|51|52|(3:54|57|(0))|134|(0)|136|(0)(0))|33|(0)(0)|36|37|(0)|153|43|(0)|47|48|(0)(0)|51|52|(0)|134|(0)|136|(0)(0)))|14|15|16|(0)(0)|20|21|22|23|24|(0)|169|28|29|31|(0)|33|(0)(0)|36|37|(0)|153|43|(0)|47|48|(0)(0)|51|52|(0)|134|(0)|136|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x020e, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0219, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x021a, code lost:
        r5 = r10;
        r2 = 1;
        r7 = r28;
        r9 = r27;
        r4 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0220, code lost:
        r21 = false;
        r2 = r2;
        r5 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0223, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0224, code lost:
        r5 = r10;
        r2 = 1;
        r7 = r28;
        r9 = r27;
        r4 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x023d, code lost:
        com.apm.insight.l.p.a(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0242, code lost:
        if (r19 != false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x024c, code lost:
        a(r27, r28, r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x024f, code lost:
        f();
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0254, code lost:
        monitor-enter(r26);
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0255, code lost:
        r26.f853f -= r2;
        r26.f852e -= r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0264, code lost:
        return b(r7, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ad, code lost:
        if (com.apm.insight.i.i().isCrashIgnored(r7) != false) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00fc, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00fd, code lost:
        r4 = r5;
        r5 = r10;
        r2 = 1;
        r7 = r28;
        r9 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01ce, code lost:
        r0 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x023d A[Catch: all -> 0x0268, TRY_LEAVE, TryCatch #3 {all -> 0x0268, blocks: (B:125:0x0237, B:127:0x023d), top: B:169:0x0237 }] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0067 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:179:0x019e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:193:0x016d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0058 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d6 A[Catch: all -> 0x00fc, TRY_ENTER, TryCatch #18 {all -> 0x00fc, blocks: (B:46:0x00d6, B:48:0x00db, B:52:0x0108, B:47:0x00d9), top: B:199:0x00cc }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00d9 A[Catch: all -> 0x00fc, TryCatch #18 {all -> 0x00fc, blocks: (B:46:0x00d6, B:48:0x00db, B:52:0x0108, B:47:0x00d9), top: B:199:0x00cc }] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0118 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0134 A[Catch: all -> 0x0211, TRY_LEAVE, TryCatch #10 {all -> 0x0211, blocks: (B:56:0x0126, B:58:0x012e, B:60:0x0134), top: B:183:0x0126 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x013d A[Catch: all -> 0x020e, TRY_ENTER, TryCatch #7 {all -> 0x020e, blocks: (B:63:0x013d, B:65:0x0142, B:67:0x0161, B:70:0x0167, B:64:0x0140), top: B:177:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0140 A[Catch: all -> 0x020e, TryCatch #7 {all -> 0x020e, blocks: (B:63:0x013d, B:65:0x0142, B:67:0x0161, B:70:0x0167, B:64:0x0140), top: B:177:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0161 A[Catch: all -> 0x020e, TryCatch #7 {all -> 0x020e, blocks: (B:63:0x013d, B:65:0x0142, B:67:0x0161, B:70:0x0167, B:64:0x0140), top: B:177:0x013b }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01db  */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v33 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r2v17, types: [com.apm.insight.a.a] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v28 */
    /* JADX WARN: Type inference failed for: r2v40 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.Throwable a(java.lang.Thread r27, java.lang.Throwable r28) {
        /*
            Method dump skipped, instructions count: 662
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.g.a.a(java.lang.Thread, java.lang.Throwable):java.lang.Throwable");
    }

    private void a(Thread thread, Throwable th, boolean z, long j2) {
        List<IOOMCallback> a2 = o.a().a();
        CrashType crashType = z ? CrashType.LAUNCH : CrashType.JAVA;
        for (IOOMCallback iOOMCallback : a2) {
            try {
                if (iOOMCallback instanceof com.apm.insight.b) {
                    ((com.apm.insight.b) iOOMCallback).a(crashType, th, thread, j2, this.k);
                } else {
                    iOOMCallback.onCrash(crashType, th, thread, j2);
                }
            } catch (Throwable th2) {
                p.b(th2);
            }
        }
    }

    public static void a(final Throwable th) {
        if (th == null) {
            return;
        }
        try {
            com.apm.insight.runtime.p.b().a(new Runnable() { // from class: com.apm.insight.g.a.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        com.apm.insight.entity.a a2 = com.apm.insight.entity.a.a(System.currentTimeMillis(), i.g(), (Thread) null, th);
                        a2.a("userdefine", (Object) 1);
                        com.apm.insight.entity.a a3 = f.a().a(CrashType.CUSTOM_JAVA, a2);
                        if (a3 != null) {
                            com.apm.insight.k.d.a().b(a3.h());
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    public static boolean a(long j2) {
        return e.a(j2);
    }

    private static Throwable b(Throwable th, Thread thread) {
        for (int i2 = 0; i2 < l.size(); i2++) {
            try {
                try {
                    l.get(i2).b(th, thread);
                } catch (Throwable th2) {
                    return th2;
                }
            } catch (Throwable unused) {
            }
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            try {
                Looper.loop();
                return null;
            } catch (Throwable th3) {
                return th3;
            }
        }
        return null;
    }

    public static boolean b() {
        return i;
    }

    private boolean b(Thread thread, Throwable th) {
        ICrashFilter b2 = i.b().b();
        if (b2 != null) {
            try {
                return b2.onJavaCrashFilter(th, thread);
            } catch (Throwable unused) {
                return true;
            }
        }
        return true;
    }

    public static void c(final String str) {
        if (str == null) {
            return;
        }
        try {
            com.apm.insight.runtime.p.b().a(new Runnable() { // from class: com.apm.insight.g.a.3
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        com.apm.insight.entity.a aVar = new com.apm.insight.entity.a();
                        aVar.a("data", (Object) str);
                        aVar.a("userdefine", (Object) 1);
                        com.apm.insight.entity.a a2 = f.a().a(CrashType.CUSTOM_JAVA, aVar);
                        if (a2 != null) {
                            com.apm.insight.k.d.a().b(a2.h());
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
        } catch (Throwable unused) {
        }
    }

    private void c(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f849b;
        if (uncaughtExceptionHandler == null || uncaughtExceptionHandler == this || q.a(512)) {
            return;
        }
        this.f849b.uncaughtException(thread, th);
    }

    public static boolean c() {
        Boolean bool = j.get();
        return bool != null && bool.booleanValue();
    }

    private void d() {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != this) {
            this.f849b = defaultUncaughtExceptionHandler;
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    private void e() {
        synchronized (this) {
            this.f853f--;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        while (this.f853f != 0 && SystemClock.uptimeMillis() - uptimeMillis < 10000) {
            SystemClock.sleep(50L);
        }
    }

    private void f() {
        File a2 = n.a(i.g());
        File a3 = n.a();
        if (h.b(a2) && h.b(a3)) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        while (!com.apm.insight.k.i.a() && SystemClock.uptimeMillis() - uptimeMillis < 10000) {
            try {
                SystemClock.sleep(500L);
            } catch (Throwable unused) {
            }
        }
    }

    private boolean g() {
        return com.apm.insight.runtime.a.a("exception_modules", "oom_callback") == 1;
    }

    public void a(c cVar) {
        this.f850c = cVar;
    }

    public void a(String str) {
        this.f854g.put(str, new Object());
    }

    public void a(Thread thread, Throwable th, boolean z, com.apm.insight.entity.a aVar) {
        List<ICrashCallback> c2;
        CrashType crashType;
        if (z) {
            c2 = o.a().b();
            crashType = CrashType.LAUNCH;
        } else {
            c2 = o.a().c();
            crashType = CrashType.JAVA;
        }
        for (ICrashCallback iCrashCallback : c2) {
            long uptimeMillis = SystemClock.uptimeMillis();
            try {
                if (iCrashCallback instanceof com.apm.insight.b) {
                    ((com.apm.insight.b) iCrashCallback).a(crashType, u.a(th), thread, this.k);
                } else {
                    iCrashCallback.onCrash(crashType, u.a(th), thread);
                }
                aVar.b("callback_cost_" + iCrashCallback.getClass().getName(), String.valueOf(SystemClock.uptimeMillis() - uptimeMillis));
            } catch (Throwable th2) {
                p.b(th2);
                aVar.b("callback_err_" + iCrashCallback.getClass().getName(), String.valueOf(SystemClock.uptimeMillis() - uptimeMillis));
            }
        }
    }

    public void b(c cVar) {
        this.f851d = cVar;
    }

    public boolean b(String str) {
        return this.f854g.containsKey(str);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        do {
            th = a(thread, th);
        } while (th != null);
    }
}
