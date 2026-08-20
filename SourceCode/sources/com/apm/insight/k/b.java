package com.apm.insight.k;

import android.content.Context;
import android.text.TextUtils;
import com.apm.insight.CrashType;
import com.apm.insight.Npth;
import com.apm.insight.entity.Header;
import com.apm.insight.entity.b;
import com.apm.insight.k.c;
import com.apm.insight.l.n;
import com.apm.insight.l.o;
import com.apm.insight.l.v;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.p;
import com.apm.insight.runtime.q;
import com.apm.insight.runtime.s;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: d  reason: collision with root package name */
    private static volatile b f909d;

    /* renamed from: c  reason: collision with root package name */
    private Context f912c;

    /* renamed from: f  reason: collision with root package name */
    private C0016b f914f;

    /* renamed from: g  reason: collision with root package name */
    private HashMap<String, C0016b> f915g;

    /* renamed from: a  reason: collision with root package name */
    List<File> f910a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    List<File> f911b = new ArrayList();

    /* renamed from: e  reason: collision with root package name */
    private int f913e = -1;

    /* renamed from: h  reason: collision with root package name */
    private volatile boolean f916h = false;
    private Runnable i = new Runnable() { // from class: com.apm.insight.k.b.1
        @Override // java.lang.Runnable
        public void run() {
            b.this.g();
        }
    };
    private Runnable j = new Runnable() { // from class: com.apm.insight.k.b.2
        @Override // java.lang.Runnable
        public void run() {
            b.this.e();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        File f926a;

        /* renamed from: b  reason: collision with root package name */
        long f927b;

        /* renamed from: c  reason: collision with root package name */
        long f928c;

        /* renamed from: d  reason: collision with root package name */
        CrashType f929d;

        /* renamed from: e  reason: collision with root package name */
        String f930e;

        a(File file, long j, CrashType crashType) {
            this.f928c = -1L;
            this.f926a = file;
            this.f927b = j;
            this.f929d = crashType;
            this.f930e = file.getName();
        }

        a(File file, CrashType crashType) {
            this.f927b = -1L;
            this.f928c = -1L;
            this.f926a = file;
            this.f929d = crashType;
            this.f930e = file.getName();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apm.insight.k.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0016b {

        /* renamed from: a  reason: collision with root package name */
        String f931a;

        /* renamed from: d  reason: collision with root package name */
        a f934d;

        /* renamed from: e  reason: collision with root package name */
        a f935e;

        /* renamed from: b  reason: collision with root package name */
        List<a> f932b = new ArrayList();

        /* renamed from: c  reason: collision with root package name */
        List<a> f933c = new ArrayList();

        /* renamed from: f  reason: collision with root package name */
        boolean f936f = false;

        /* renamed from: g  reason: collision with root package name */
        int f937g = 0;

        C0016b(String str) {
            this.f931a = str;
        }
    }

    private b(Context context) {
        this.f912c = context;
    }

    private com.apm.insight.entity.e a(File file, CrashType crashType, String str, long j, long j2) {
        com.apm.insight.entity.e eVar;
        com.apm.insight.entity.e eVar2;
        try {
            try {
                if (file.isFile()) {
                    com.apm.insight.l.h.a(file);
                    return null;
                }
                boolean z = crashType == CrashType.LAUNCH;
                if (crashType == null) {
                    try {
                        return com.apm.insight.l.h.d(new File(file, file.getName()).getAbsolutePath());
                    } catch (Throwable th) {
                        th = th;
                        eVar = null;
                        com.apm.insight.l.h.a(file);
                        com.apm.insight.c.a().a("NPTH_CATCH", th);
                        return eVar;
                    }
                }
                com.apm.insight.entity.e a2 = com.apm.insight.l.h.a(file, crashType);
                try {
                    JSONObject b2 = a2.b();
                    try {
                        if (a2.b() == null) {
                            eVar2 = a2;
                            com.apm.insight.l.h.a(file);
                        } else if (crashType == CrashType.ANR) {
                            return a2;
                        } else {
                            b2.put("crash_time", j);
                            try {
                                b2.put("app_start_time", j2);
                                JSONObject optJSONObject = b2.optJSONObject("header");
                                try {
                                    if (optJSONObject == null) {
                                        optJSONObject = Header.a(this.f912c, j).f();
                                    } else if (z) {
                                        b2.remove("header");
                                    }
                                    String optString = optJSONObject.optString("sdk_version_name", null);
                                    if (optString == null) {
                                        optString = "1.3.8.nourl-alpha.22";
                                    }
                                    com.apm.insight.entity.a.a(b2, "filters", "sdk_version", optString);
                                    if (com.apm.insight.l.h.a(b2.optJSONArray("logcat"))) {
                                        b2.put("logcat", com.apm.insight.runtime.k.b(str));
                                    }
                                    com.apm.insight.entity.a.a(b2, "filters", "has_dump", "true");
                                    com.apm.insight.entity.a.a(b2, "filters", "has_logcat", String.valueOf(!com.apm.insight.l.k.a(b2, "logcat")));
                                    com.apm.insight.entity.a.a(b2, "filters", "memory_leak", String.valueOf(com.apm.insight.entity.a.b(str)));
                                    com.apm.insight.entity.a.a(b2, "filters", "fd_leak", String.valueOf(com.apm.insight.entity.a.c(str)));
                                    com.apm.insight.entity.a.a(b2, "filters", "threads_leak", String.valueOf(com.apm.insight.entity.a.d(str)));
                                    com.apm.insight.entity.a.a(b2, "filters", "is_64_devices", String.valueOf(Header.a()));
                                    com.apm.insight.entity.a.a(b2, "filters", "is_64_runtime", String.valueOf(NativeImpl.e()));
                                    com.apm.insight.entity.a.a(b2, "filters", "is_x86_devices", String.valueOf(Header.b()));
                                    com.apm.insight.entity.a.a(b2, "filters", "has_meminfo_file", String.valueOf(com.apm.insight.entity.a.a(str)));
                                    com.apm.insight.entity.a.a(b2, "filters", "is_root", String.valueOf(com.apm.insight.nativecrash.c.m()));
                                    b2.put("launch_did", com.apm.insight.i.a.a(this.f912c));
                                    b2.put("crash_uuid", file.getName());
                                    b2.put("jiffy", q.a.a());
                                    long parseLong = Long.parseLong(com.apm.insight.runtime.b.a(j, str));
                                    com.apm.insight.entity.a.a(b2, "filters", "lastAliveTime", Math.abs(parseLong - j) < 60000 ? "< 60s" : "> 60s");
                                    b2.put("lastAliveTime", String.valueOf(parseLong));
                                    b2.put("has_dump", "true");
                                    if (b2.opt("storage") == null) {
                                        com.apm.insight.entity.a.a(b2, v.a(com.apm.insight.i.g()));
                                    }
                                    if (Header.b(optJSONObject)) {
                                        com.apm.insight.entity.a.a(b2, "filters", "unauthentic_version", "unauthentic_version");
                                    }
                                    com.apm.insight.entity.d.b(b2);
                                    a2.b().put("upload_scene", "launch_scan");
                                    if (z) {
                                        JSONObject jSONObject = new JSONObject();
                                        b2.put("event_type", "start_crash");
                                        b2.put("stack", b2.remove("data"));
                                        jSONObject.put("data", new JSONArray().put(b2));
                                        jSONObject.put("header", optJSONObject);
                                        eVar2 = a2;
                                        eVar2.a(jSONObject);
                                    } else {
                                        eVar2 = a2;
                                        b2.put("isJava", 1);
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    eVar = a2;
                                    com.apm.insight.l.h.a(file);
                                    com.apm.insight.c.a().a("NPTH_CATCH", th);
                                    return eVar;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                eVar2 = a2;
                                eVar = eVar2;
                                com.apm.insight.l.h.a(file);
                                com.apm.insight.c.a().a("NPTH_CATCH", th);
                                return eVar;
                            }
                        }
                        return eVar2;
                    } catch (Throwable th4) {
                        th = th4;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    eVar2 = a2;
                }
            } catch (Throwable th6) {
                th = th6;
            }
        } catch (Throwable th7) {
            th = th7;
            eVar = null;
        }
    }

    public static b a() {
        if (f909d == null) {
            synchronized (b.class) {
                if (f909d == null) {
                    f909d = new b(com.apm.insight.i.g());
                }
            }
        }
        return f909d;
    }

    private JSONObject a(com.apm.insight.nativecrash.c cVar) {
        JSONObject d2 = cVar.d();
        if (d2 == null || d2.length() == 0) {
            if (com.apm.insight.i.d()) {
                cVar.l();
            }
            if (!cVar.c()) {
                cVar.k();
                return null;
            } else if (!cVar.f()) {
                cVar.k();
                return null;
            } else if (cVar.g()) {
                cVar.k();
                return null;
            } else {
                cVar.e();
                return cVar.j();
            }
        }
        return d2;
    }

    private void a(C0016b c0016b) {
        com.apm.insight.l.h.a(n.a(this.f912c, c0016b.f931a));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:(5:36|37|38|(1:40)(1:76)|41)|(2:70|(3:74|75|20))(5:45|46|47|48|49)|50|51|52|53|(1:55)|56|57|20) */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0161, code lost:
        r0 = th;
     */
    /* JADX WARN: Removed duplicated region for block: B:65:0x014c A[Catch: all -> 0x0161, TryCatch #0 {all -> 0x0161, blocks: (B:63:0x0140, B:65:0x014c, B:66:0x015b), top: B:80:0x0140 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(final com.apm.insight.k.b.C0016b r21, boolean r22, com.apm.insight.runtime.h r23) {
        /*
            Method dump skipped, instructions count: 384
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.k.b.a(com.apm.insight.k.b$b, boolean, com.apm.insight.runtime.h):void");
    }

    private void a(File file, C0016b c0016b) {
    }

    private void a(HashMap<String, C0016b> hashMap) {
        File[] listFiles = n.f(this.f912c).listFiles();
        if (listFiles == null || listFiles.length == 0) {
            return;
        }
        for (int i = 0; i < listFiles.length && i < 5; i++) {
            File file = listFiles[i];
            try {
                if (file.isDirectory() && file.getName().endsWith(RequestConfiguration.MAX_AD_CONTENT_RATING_G)) {
                    String name = file.getName();
                    C0016b c0016b = hashMap.get(name);
                    if (c0016b == null) {
                        c0016b = new C0016b(name);
                        hashMap.put(name, c0016b);
                    }
                    JSONArray a2 = com.apm.insight.nativecrash.d.a(n.l(file), n.m(file));
                    c0016b.f937g = a2.length();
                    if (c0016b.f937g > 0) {
                        try {
                            com.apm.insight.l.h.a(n.n(file), a2, false);
                        } catch (Throwable unused) {
                        }
                    }
                } else {
                    com.apm.insight.l.h.a(file);
                }
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
                com.apm.insight.l.h.a(file);
            }
        }
    }

    private void a(HashMap<String, C0016b> hashMap, C0016b c0016b) {
        File[] listFiles = n.d(this.f912c).listFiles();
        if (listFiles == null || listFiles.length == 0) {
            return;
        }
        for (int i = 0; i < listFiles.length && i < 5; i++) {
            File file = listFiles[i];
            try {
                if (file.isDirectory() && file.getName().endsWith(RequestConfiguration.MAX_AD_CONTENT_RATING_G)) {
                    String name = file.getName();
                    C0016b c0016b2 = hashMap.get(name);
                    if (c0016b2 == null) {
                        c0016b2 = new C0016b(name);
                        hashMap.put(name, c0016b2);
                    }
                    c0016b2.f933c.add(new a(file, CrashType.NATIVE));
                } else {
                    com.apm.insight.l.h.a(file);
                }
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
                com.apm.insight.l.h.a(file);
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005b, code lost:
        if (r0.equals("launch") == false) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.util.HashMap<java.lang.String, com.apm.insight.k.b.C0016b> r12, com.apm.insight.k.b.C0016b r13, java.io.File r14, java.lang.String r15) {
        /*
            r11 = this;
            java.lang.String r0 = "G"
            boolean r0 = r15.endsWith(r0)
            if (r0 == 0) goto Lcd
            java.lang.String r0 = "_"
            java.lang.String[] r0 = r15.split(r0)
            int r1 = r0.length
            r2 = 5
            r3 = 0
            if (r1 >= r2) goto L1e
            java.util.List<com.apm.insight.k.b$a> r12 = r13.f932b
            com.apm.insight.k.b$a r13 = new com.apm.insight.k.b$a
            r13.<init>(r14, r3)
            r12.add(r13)
            return
        L1e:
            r1 = 0
            r2 = r0[r1]     // Catch: java.lang.Throwable -> La5
            long r4 = java.lang.Long.parseLong(r2)     // Catch: java.lang.Throwable -> La5
            r2 = 4
            r2 = r0[r2]     // Catch: java.lang.Throwable -> La5
            long r6 = java.lang.Long.parseLong(r2)     // Catch: java.lang.Throwable -> La5
            r13 = 2
            r2 = r0[r13]
            r8 = 1
            r0 = r0[r8]
            r0.hashCode()
            int r9 = r0.hashCode()
            r10 = -1
            switch(r9) {
                case -1109843021: goto L55;
                case 96741: goto L4a;
                case 3254818: goto L3f;
                default: goto L3d;
            }
        L3d:
            r1 = r10
            goto L5e
        L3f:
            java.lang.String r1 = "java"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L48
            goto L3d
        L48:
            r1 = r13
            goto L5e
        L4a:
            java.lang.String r13 = "anr"
            boolean r13 = r0.equals(r13)
            if (r13 != 0) goto L53
            goto L3d
        L53:
            r1 = r8
            goto L5e
        L55:
            java.lang.String r13 = "launch"
            boolean r13 = r0.equals(r13)
            if (r13 != 0) goto L5e
            goto L3d
        L5e:
            switch(r1) {
                case 0: goto L68;
                case 1: goto L65;
                case 2: goto L62;
                default: goto L61;
            }
        L61:
            goto L6a
        L62:
            com.apm.insight.CrashType r3 = com.apm.insight.CrashType.JAVA
            goto L6a
        L65:
            com.apm.insight.CrashType r3 = com.apm.insight.CrashType.ANR
            goto L6a
        L68:
            com.apm.insight.CrashType r3 = com.apm.insight.CrashType.LAUNCH
        L6a:
            java.lang.Object r13 = r12.get(r2)
            com.apm.insight.k.b$b r13 = (com.apm.insight.k.b.C0016b) r13
            if (r13 != 0) goto L7a
            com.apm.insight.k.b$b r13 = new com.apm.insight.k.b$b
            r13.<init>(r2)
            r12.put(r2, r13)
        L7a:
            com.apm.insight.k.b$a r12 = new com.apm.insight.k.b$a
            r12.<init>(r14, r4, r3)
            r12.f928c = r6
            com.apm.insight.k.b$a r14 = r13.f934d
            if (r14 == 0) goto L8f
            com.apm.insight.k.b$a r14 = r13.f934d
            long r0 = r14.f927b
            long r4 = r12.f927b
            int r14 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r14 <= 0) goto L9f
        L8f:
            if (r3 == 0) goto L9f
            com.apm.insight.CrashType r14 = com.apm.insight.CrashType.ANR
            if (r3 == r14) goto L9f
            java.lang.String r14 = "ignore"
            boolean r14 = r15.contains(r14)
            if (r14 != 0) goto L9f
            r13.f934d = r12
        L9f:
            java.util.List<com.apm.insight.k.b$a> r13 = r13.f932b
            r13.add(r12)
            goto Ld0
        La5:
            java.util.List<com.apm.insight.k.b$a> r12 = r13.f932b
            com.apm.insight.k.b$a r13 = new com.apm.insight.k.b$a
            r13.<init>(r14, r3)
            r12.add(r13)
            com.apm.insight.d r12 = com.apm.insight.c.a()
            java.lang.RuntimeException r13 = new java.lang.RuntimeException
            java.lang.StringBuilder r14 = new java.lang.StringBuilder
            java.lang.String r0 = "err format crashTime:"
            r14.<init>(r0)
            java.lang.StringBuilder r14 = r14.append(r15)
            java.lang.String r14 = r14.toString()
            r13.<init>(r14)
            java.lang.String r14 = "NPTH_CATCH"
            r12.a(r14, r13)
            return
        Lcd:
            com.apm.insight.l.h.a(r14)
        Ld0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.k.b.a(java.util.HashMap, com.apm.insight.k.b$b, java.io.File, java.lang.String):void");
    }

    private boolean a(File file) {
        String[] list = file.list();
        if (list == null) {
            return false;
        }
        for (String str : list) {
            if (!TextUtils.isEmpty(str) && str.endsWith("")) {
                return true;
            }
        }
        return false;
    }

    private void b(final C0016b c0016b, boolean z, com.apm.insight.runtime.h hVar) {
        boolean z2;
        JSONObject a2;
        if (c0016b.f933c.size() <= 1 && c0016b.f933c.isEmpty()) {
            c0016b.f935e = c0016b.f934d;
            return;
        }
        boolean b2 = o.b(this.f912c);
        c0016b.f935e = c0016b.f934d;
        com.apm.insight.nativecrash.c cVar = new com.apm.insight.nativecrash.c(this.f912c);
        for (a aVar : c0016b.f933c) {
            final File file = aVar.f926a;
            try {
                cVar.a(file);
                a2 = a(cVar);
            } catch (Throwable th) {
                th = th;
                z2 = b2;
            }
            if (a2 != null && a2.length() != 0) {
                if (a2.length() != 0) {
                    if (z) {
                        z2 = b2;
                        if (hVar != null && !hVar.a(RewardedVideo.VIDEO_MODE_DEFAULT)) {
                            cVar.k();
                        }
                    } else {
                        long optLong = a2.optLong("crash_time");
                        try {
                        } catch (Throwable th2) {
                            th = th2;
                            z2 = b2;
                        }
                        if (c0016b.f935e == null) {
                            c0016b.f935e = aVar;
                            c0016b.f936f = true;
                            if (hVar == null || hVar.a(RewardedVideo.VIDEO_MODE_DEFAULT)) {
                                z2 = b2;
                            } else {
                                cVar.k();
                            }
                        } else {
                            if (c0016b.f936f) {
                                z2 = b2;
                            } else {
                                z2 = b2;
                                try {
                                } catch (Throwable th3) {
                                    th = th3;
                                    com.apm.insight.c.a().a("NPTH_CATCH", th);
                                    com.apm.insight.l.h.a(file);
                                    b2 = z2;
                                }
                                if (optLong < c0016b.f935e.f927b) {
                                    c0016b.f935e = aVar;
                                    if (hVar == null || hVar.a(RewardedVideo.VIDEO_MODE_DEFAULT)) {
                                        if (!a(file)) {
                                            a(file, c0016b);
                                        }
                                        c0016b.f936f = true;
                                    } else {
                                        cVar.k();
                                        b2 = z2;
                                    }
                                }
                            }
                            com.apm.insight.entity.a.a(a2, "filters", "aid", String.valueOf(a2.optJSONObject("header").opt("aid")));
                            a2.optJSONObject("header").put("aid", 2010);
                        }
                    }
                    com.apm.insight.entity.a.a(a2, "filters", "start_uuid", c0016b.f931a);
                    com.apm.insight.entity.a.a(a2, "filters", "crash_thread_name", a2.optString("crash_thread_name", "unknown"));
                    if (z2) {
                        try {
                            c.a aVar2 = new c.a(a2, CrashType.NATIVE);
                            com.apm.insight.entity.b.a(a2, com.apm.insight.entity.b.a(aVar2.c(), aVar2.a(), s.a().b(aVar2.b() == -1 ? System.currentTimeMillis() : aVar2.b())), new b.a() { // from class: com.apm.insight.k.b.4
                                @Override // com.apm.insight.entity.b.a
                                public void a(JSONObject jSONObject) {
                                    d.a().a(jSONObject, file, n.a(b.this.f912c, c0016b.f931a));
                                }
                            });
                            if (!cVar.k()) {
                                cVar.h();
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            com.apm.insight.c.a().a("NPTH_CATCH", th);
                            com.apm.insight.l.h.a(file);
                            b2 = z2;
                        }
                    }
                    c.a(CrashType.NATIVE, a2);
                } else {
                    z2 = b2;
                }
                b2 = z2;
            }
            z2 = b2;
            cVar.k();
            b2 = z2;
        }
    }

    private void b(HashMap<String, C0016b> hashMap, C0016b c0016b) {
        File[] listFiles = n.a(this.f912c).listFiles();
        if (listFiles == null) {
            return;
        }
        Arrays.sort(listFiles, Collections.reverseOrder());
        for (File file : listFiles) {
            try {
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
            }
            if (!com.apm.insight.e.a.a().a(file.getAbsolutePath())) {
                if (!com.apm.insight.l.h.g(file) && !com.apm.insight.g.a.a().b(file.getName())) {
                    if (!file.isFile()) {
                        a(hashMap, c0016b, file, file.getName());
                    }
                }
            }
            com.apm.insight.l.h.a(file);
        }
    }

    private void c(HashMap<String, C0016b> hashMap, C0016b c0016b) {
        com.apm.insight.l.h.a(n.b(this.f912c));
    }

    private void d() {
        if (this.f914f != null) {
            return;
        }
        this.f914f = new C0016b("old_uuid");
        HashMap<String, C0016b> hashMap = new HashMap<>();
        this.f915g = hashMap;
        a(hashMap);
        b(this.f915g, this.f914f);
        c(this.f915g, this.f914f);
        a(this.f915g, this.f914f);
        b(this.f914f, true, null);
        a(this.f914f, true, null);
        this.f914f = null;
        if (this.f915g.isEmpty()) {
            f();
        } else {
            g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.f916h || this.f915g == null) {
            return;
        }
        if (!o.b(this.f912c)) {
            f();
        }
        boolean h2 = h();
        com.apm.insight.runtime.h hVar = new com.apm.insight.runtime.h(this.f912c);
        for (C0016b c0016b : this.f915g.values()) {
            b(c0016b, h2, hVar);
        }
        for (C0016b c0016b2 : this.f915g.values()) {
            a(c0016b2, h2, hVar);
        }
        for (C0016b c0016b3 : this.f915g.values()) {
            a(c0016b3);
        }
        hVar.a();
        com.apm.insight.runtime.b.a();
        f();
    }

    private void f() {
        this.f916h = true;
        this.f915g = null;
        NativeImpl.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        if (this.f916h) {
            return;
        }
        if (!o.b(this.f912c) || (System.currentTimeMillis() - com.apm.insight.i.j() <= 5000 && com.apm.insight.i.i().isApmExists() && !Npth.hasCrash())) {
            p.b().a(this.i, 5000L);
        } else {
            e();
        }
    }

    private boolean h() {
        if (this.f913e == -1) {
            if (com.apm.insight.runtime.a.b() && com.apm.insight.runtime.a.g()) {
                this.f913e = 1;
            } else {
                this.f913e = 0;
            }
        }
        return this.f913e == 1;
    }

    private void i() {
        File[] listFiles = n.i(this.f912c).listFiles();
        if (listFiles == null) {
            return;
        }
        for (int i = 0; i < listFiles.length && i < 5; i++) {
            File file = listFiles[i];
            if (file.getName().endsWith(".atmp")) {
                com.apm.insight.a.a.a().a(file.getAbsolutePath());
            } else {
                try {
                    com.apm.insight.entity.e e2 = com.apm.insight.l.h.e(file.getAbsolutePath());
                    if (e2 != null) {
                        if (e2.b() != null) {
                            e2.b().put("upload_scene", "launch_scan");
                        }
                        if (e.a(e.d(), e2.e(), e2.d(), e2.f(), e2.g())) {
                            com.apm.insight.l.h.a(file);
                            com.apm.insight.l.h.a(e2.c());
                        }
                    } else {
                        com.apm.insight.l.h.a(file);
                    }
                } catch (Throwable th) {
                    com.apm.insight.c.a().a("NPTH_CATCH", th);
                }
            }
        }
    }

    public void a(boolean z) {
        if (!Npth.isStopUpload() && z) {
            d();
            i();
            com.apm.insight.c.a.a();
        }
    }

    public void b() {
        try {
            if (!this.f916h && com.apm.insight.l.a.b(com.apm.insight.i.g())) {
                p.b().a(this.j);
            }
        } catch (Throwable unused) {
        }
    }

    public boolean c() {
        return this.f916h;
    }
}
