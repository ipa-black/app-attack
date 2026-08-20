package com.apm.insight.nativecrash;

import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashFilter;
import com.apm.insight.entity.Header;
import com.apm.insight.i;
import com.apm.insight.l.h;
import com.apm.insight.l.j;
import com.apm.insight.l.n;
import com.apm.insight.l.r;
import com.apm.insight.l.v;
import com.apm.insight.runtime.q;
import com.apm.insight.runtime.s;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: d  reason: collision with root package name */
    private static Boolean f1032d;

    /* renamed from: a  reason: collision with root package name */
    private final Context f1033a;

    /* renamed from: b  reason: collision with root package name */
    private JSONObject f1034b = null;

    /* renamed from: c  reason: collision with root package name */
    private b f1035c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {
        /* JADX INFO: Access modifiers changed from: private */
        public static String b(File file) {
            BufferedReader bufferedReader;
            String readLine;
            BufferedReader bufferedReader2 = null;
            try {
                bufferedReader = new BufferedReader(new FileReader(file));
                try {
                    readLine = bufferedReader.readLine();
                } catch (Throwable th) {
                    th = th;
                    bufferedReader2 = bufferedReader;
                    try {
                        com.apm.insight.c.a().a("NPTH_CATCH", th);
                        return "";
                    } finally {
                        j.a(bufferedReader2);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
            if (readLine == null) {
                j.a(bufferedReader);
                return "";
            } else if (!readLine.startsWith("[FATAL:jni_android.cc") || !readLine.contains("Please include Java exception stack in crash report ttwebview:")) {
                j.a(bufferedReader);
                return "";
            } else {
                StringBuilder sb = new StringBuilder();
                int indexOf = readLine.indexOf(" ttwebview:");
                sb.append("Caused by: ");
                sb.append("Please include Java exception stack in crash report");
                sb.append("\n");
                sb.append(readLine.substring(indexOf + 11));
                while (true) {
                    sb.append("\n");
                    String readLine2 = bufferedReader.readLine();
                    if (readLine2 == null) {
                        String sb2 = sb.toString();
                        j.a(bufferedReader);
                        return sb2;
                    }
                    sb.append(readLine2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class b {

        /* renamed from: b  reason: collision with root package name */
        private final com.apm.insight.nativecrash.e f1037b;

        /* renamed from: c  reason: collision with root package name */
        private final com.apm.insight.nativecrash.a f1038c;

        /* renamed from: d  reason: collision with root package name */
        private final File f1039d;

        /* renamed from: e  reason: collision with root package name */
        private final File f1040e;

        public b(File file) {
            this.f1039d = file;
            this.f1040e = n.a(i.g(), file.getName());
            com.apm.insight.nativecrash.a aVar = new com.apm.insight.nativecrash.a(file);
            this.f1038c = aVar;
            com.apm.insight.nativecrash.e eVar = new com.apm.insight.nativecrash.e(file);
            this.f1037b = eVar;
            if (aVar.a() && eVar.a() == null) {
                eVar.a(file);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:11:0x001c A[Catch: all -> 0x0017, TRY_LEAVE, TryCatch #0 {all -> 0x0017, blocks: (B:4:0x0008, B:6:0x000e, B:11:0x001c), top: B:16:0x0008 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long a() {
            /*
                r3 = this;
                com.apm.insight.nativecrash.a r0 = r3.f1038c
                java.util.Map r0 = r0.c()
                if (r0 == 0) goto L19
                boolean r1 = r0.isEmpty()     // Catch: java.lang.Throwable -> L17
                if (r1 != 0) goto L19
                java.lang.String r1 = "start_time"
                java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> L17
                java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L17
                goto L1a
            L17:
                r0 = move-exception
                goto L21
            L19:
                r0 = 0
            L1a:
                if (r0 == 0) goto L2a
                long r0 = java.lang.Long.parseLong(r0)     // Catch: java.lang.Throwable -> L17
                return r0
            L21:
                com.apm.insight.d r1 = com.apm.insight.c.a()
                java.lang.String r2 = "NPTH_CATCH"
                r1.a(r2, r0)
            L2a:
                long r0 = java.lang.System.currentTimeMillis()
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.nativecrash.c.b.a():long");
        }

        public File b() {
            return this.f1039d;
        }

        public boolean c() {
            return this.f1038c.a();
        }
    }

    /* renamed from: com.apm.insight.nativecrash.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0017c extends e {
        C0017c() {
            super();
            this.f1044c = "Total FD Count:";
            this.f1043b = n.i(c.this.f1035c.b());
            this.f1045d = ":";
            this.f1046e = -2;
        }
    }

    /* loaded from: classes.dex */
    public class d extends e {
        d() {
            super();
            this.f1044c = "VmSize:";
            this.f1043b = n.k(c.this.f1035c.b());
            this.f1045d = "\\s+";
            this.f1046e = -1;
        }
    }

    /* loaded from: classes.dex */
    public class e {

        /* renamed from: b  reason: collision with root package name */
        protected File f1043b;

        /* renamed from: c  reason: collision with root package name */
        protected String f1044c;

        /* renamed from: d  reason: collision with root package name */
        protected String f1045d;

        /* renamed from: e  reason: collision with root package name */
        protected int f1046e;

        public e() {
        }

        public int a() {
            int i;
            Throwable th;
            if (!this.f1043b.exists() || !this.f1043b.isFile()) {
                return -1;
            }
            BufferedReader bufferedReader = null;
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new FileReader(this.f1043b));
                int i2 = -1;
                do {
                    try {
                        String readLine = bufferedReader2.readLine();
                        if (readLine == null) {
                            break;
                        }
                        i2 = a(readLine);
                    } catch (Throwable th2) {
                        th = th2;
                        i = i2;
                        bufferedReader = bufferedReader2;
                        try {
                            com.apm.insight.c.a().a("NPTH_CATCH", th);
                            return i;
                        } finally {
                            if (bufferedReader != null) {
                                j.a(bufferedReader);
                            }
                        }
                    }
                } while (i2 == -1);
                j.a(bufferedReader2);
                return i2;
            } catch (Throwable th3) {
                i = -1;
                th = th3;
            }
        }

        public int a(String str) {
            int i = this.f1046e;
            if (str.startsWith(this.f1044c)) {
                try {
                    i = Integer.parseInt(str.split(this.f1045d)[1].trim());
                } catch (NumberFormatException e2) {
                    com.apm.insight.c.a().a("NPTH_CATCH", e2);
                }
                if (i < 0) {
                    return -2;
                }
                return i;
            }
            return i;
        }
    }

    /* loaded from: classes.dex */
    public class f extends e {
        f() {
            super();
            this.f1044c = "Total Threads Count:";
            this.f1043b = n.j(c.this.f1035c.b());
            this.f1045d = ":";
            this.f1046e = -2;
        }
    }

    public c(Context context) {
        this.f1033a = context;
    }

    private String a(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            if (str.length() < 16) {
                sb.append(str);
            } else {
                sb.append(str.charAt(6));
                sb.append(str.charAt(7));
                sb.append(str.charAt(4));
                sb.append(str.charAt(5));
                sb.append(str.charAt(2));
                sb.append(str.charAt(3));
                sb.append(str.charAt(0));
                sb.append(str.charAt(1));
                sb.append(str.charAt(10));
                sb.append(str.charAt(11));
                sb.append(str.charAt(8));
                sb.append(str.charAt(9));
                sb.append(str.charAt(14));
                sb.append(str.charAt(15));
                sb.append(str.charAt(12));
                sb.append(str.charAt(13));
                if (str.length() >= 32) {
                    sb.append((CharSequence) str, 16, 32);
                    sb.append('0');
                }
            }
        } catch (Throwable th) {
            com.apm.insight.c.a().a("NPTH_CATCH", th);
        }
        return sb.toString().toUpperCase();
    }

    private void a(com.apm.insight.entity.a aVar) {
        aVar.a(n());
        aVar.a("is_native_crash", (Object) 1);
        aVar.a("repack_time", Long.valueOf(System.currentTimeMillis()));
        aVar.a("crash_uuid", (Object) this.f1035c.b().getName());
        aVar.a("jiffy", Long.valueOf(q.a.a()));
    }

    private void a(Map<String, String> map) {
        map.put("has_fds_file", n.i(this.f1035c.b()).exists() ? "true" : "false");
        File h2 = n.h(this.f1035c.b());
        map.put("has_logcat_file", (!h2.exists() || h2.length() <= 128) ? "false" : "true");
        map.put("has_maps_file", n.d(this.f1035c.b()).exists() ? "true" : "false");
        map.put("has_tombstone_file", n.b(this.f1035c.b()).exists() ? "true" : "false");
        map.put("has_meminfo_file", n.k(this.f1035c.b()).exists() ? "true" : "false");
        map.put("has_threads_file", n.j(this.f1035c.b()).exists() ? "true" : "false");
    }

    private void b(com.apm.insight.entity.a aVar) {
        com.apm.insight.entity.d.b(aVar.h());
        HashMap hashMap = new HashMap();
        if (m()) {
            hashMap.put("is_root", "true");
            aVar.a("is_root", "true");
        } else {
            hashMap.put("is_root", "false");
            aVar.a("is_root", "false");
        }
        a(hashMap);
        int o = o();
        if (o > 0) {
            if (o > 960) {
                hashMap.put("fd_leak", "true");
            } else {
                hashMap.put("fd_leak", "false");
            }
            aVar.a("fd_count", Integer.valueOf(o));
        }
        int p = p();
        if (p > 0) {
            if (p > 350) {
                hashMap.put("threads_leak", "true");
            } else {
                hashMap.put("threads_leak", "false");
            }
            aVar.a("threads_count", Integer.valueOf(p));
        }
        int q = q();
        if (q > 0) {
            if (q > i()) {
                hashMap.put("memory_leak", "true");
            } else {
                hashMap.put("memory_leak", "false");
            }
            aVar.a("memory_size", Integer.valueOf(q));
        }
        hashMap.put("sdk_version", "1.3.8.nourl-alpha.22");
        hashMap.put("has_java_stack", String.valueOf(aVar.h().opt("java_data") != null));
        JSONArray a2 = com.apm.insight.nativecrash.d.a(n.l(this.f1035c.f1039d), n.m(this.f1035c.f1039d));
        hashMap.put("leak_threads_count", String.valueOf(a2.length()));
        if (a2.length() > 0) {
            try {
                h.a(n.n(this.f1035c.f1039d), a2, false);
            } catch (Throwable unused) {
            }
        }
        aVar.b();
        aVar.c();
        aVar.c(hashMap);
    }

    private void c(com.apm.insight.entity.a aVar) {
        Map<String, String> b2 = this.f1035c.f1037b.b();
        if (b2.isEmpty()) {
            return;
        }
        JSONArray jSONArray = new JSONArray();
        for (String str : b2.keySet()) {
            String a2 = a(b2.get(str));
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("lib_name", str);
                jSONObject.put("lib_uuid", a2);
                jSONArray.put(jSONObject);
            } catch (JSONException e2) {
                com.apm.insight.c.a().a("NPTH_CATCH", e2);
            }
        }
        aVar.a("crash_lib_uuid", (Object) jSONArray);
    }

    private void d(com.apm.insight.entity.a aVar) {
        File e2 = n.e(this.f1035c.b());
        if (!e2.exists() && this.f1034b == null) {
            aVar.b(v.a(i.g()));
            aVar.a("has_callback", "false");
            return;
        }
        try {
            JSONObject jSONObject = this.f1034b;
            if (jSONObject == null) {
                jSONObject = new JSONObject(h.c(e2.getAbsolutePath()));
            }
            aVar.c(jSONObject);
            aVar.a("has_callback", "true");
            if (aVar.h().opt("storage") == null) {
                aVar.b(v.a(i.g()));
            }
            r.a(aVar, aVar.i(), CrashType.NATIVE);
        } catch (Throwable th) {
            com.apm.insight.c.a().a("NPTH_CATCH", th);
        }
        long j = -1;
        long optLong = aVar.h().optLong("crash_time", -1L);
        long optLong2 = aVar.h().optLong("java_end", -1L);
        if (optLong2 != -1 && optLong != -1) {
            j = optLong2 - optLong;
        }
        try {
            aVar.b("total_cost", String.valueOf(j));
            aVar.a("total_cost", String.valueOf(j / 1000));
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005e A[Catch: all -> 0x0064, TRY_LEAVE, TryCatch #0 {all -> 0x0064, blocks: (B:15:0x0058, B:17:0x005e), top: B:22:0x0058 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void e(com.apm.insight.entity.a r5) {
        /*
            r4 = this;
            com.apm.insight.nativecrash.c$b r0 = r4.f1035c
            java.io.File r0 = r0.b()
            java.io.File r0 = com.apm.insight.l.n.g(r0)
            boolean r1 = r0.exists()
            java.lang.String r2 = "NPTH_CATCH"
            if (r1 == 0) goto L23
            java.lang.String r0 = r0.getAbsolutePath()     // Catch: java.lang.Throwable -> L1b
            java.lang.String r0 = com.apm.insight.l.u.a(r0)     // Catch: java.lang.Throwable -> L1b
            goto L25
        L1b:
            r0 = move-exception
            com.apm.insight.d r1 = com.apm.insight.c.a()
            r1.a(r2, r0)
        L23:
            java.lang.String r0 = ""
        L25:
            com.apm.insight.nativecrash.c$b r1 = r4.f1035c
            java.io.File r1 = r1.b()
            java.io.File r1 = com.apm.insight.l.n.o(r1)
            boolean r3 = r1.exists()
            if (r3 == 0) goto L58
            java.lang.String r1 = com.apm.insight.nativecrash.c.a.a(r1)
            boolean r3 = r0.isEmpty()
            if (r3 != 0) goto L57
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.String r3 = "\n"
            java.lang.StringBuilder r0 = r0.append(r3)
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            goto L58
        L57:
            r0 = r1
        L58:
            boolean r1 = r0.isEmpty()     // Catch: java.lang.Throwable -> L64
            if (r1 != 0) goto L6c
            java.lang.String r1 = "java_data"
            r5.a(r1, r0)     // Catch: java.lang.Throwable -> L64
            goto L6c
        L64:
            r5 = move-exception
            com.apm.insight.d r0 = com.apm.insight.c.a()
            r0.a(r2, r5)
        L6c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.nativecrash.c.e(com.apm.insight.entity.a):void");
    }

    private void f(com.apm.insight.entity.a aVar) {
        File a2 = n.a(this.f1035c.b());
        if (a2.exists()) {
            try {
                aVar.a("native_log", (Object) h.b(h.a(a2.getAbsolutePath(), "\n"), "\n"));
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
            }
        }
    }

    private void g(com.apm.insight.entity.a aVar) {
        File h2 = n.h(this.f1035c.b());
        if (!h2.exists()) {
            NativeImpl.a(h2.getAbsolutePath(), String.valueOf(i.i().getLogcatDumpCount()), String.valueOf(i.i().getLogcatLevel()));
        }
        JSONArray jSONArray = new JSONArray();
        String str = " " + this.f1035c.f1038c.c().get("pid") + " ";
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new FileReader(h2));
            try {
                if (h2.length() > 512000) {
                    bufferedReader2.skip(h2.length() - 512000);
                }
                while (true) {
                    String readLine = bufferedReader2.readLine();
                    if (readLine == null) {
                        break;
                    }
                    if ((readLine.length() > 32 ? readLine.substring(0, 31) : readLine).contains(str)) {
                        jSONArray.put(readLine);
                    }
                }
                j.a(bufferedReader2);
            } catch (Throwable unused) {
                bufferedReader = bufferedReader2;
                j.a(bufferedReader);
                aVar.a("logcat", (Object) jSONArray);
            }
        } catch (Throwable unused2) {
        }
        aVar.a("logcat", (Object) jSONArray);
    }

    private void h(com.apm.insight.entity.a aVar) {
        Map<String, String> a2 = a();
        if (a2 == null || aVar == null) {
            return;
        }
        String str = a2.get("process_name");
        if (str != null) {
            aVar.a("process_name", (Object) str);
        }
        String str2 = a2.get("start_time");
        if (str2 != null) {
            try {
                aVar.a(Long.decode(str2).longValue());
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
            }
        }
        String str3 = a2.get("pid");
        if (str3 != null) {
            try {
                aVar.a("pid", Long.decode(str3));
            } catch (Throwable th2) {
                com.apm.insight.c.a().a("NPTH_CATCH", th2);
            }
        }
        String str4 = a2.get("crash_thread_name");
        if (str4 != null) {
            aVar.a("crash_thread_name", (Object) str4);
        }
        String str5 = a2.get("crash_time");
        if (str5 != null) {
            try {
                aVar.a("crash_time", Long.decode(str5));
            } catch (Throwable th3) {
                com.apm.insight.c.a().a("NPTH_CATCH", th3);
            }
        }
        aVar.a("data", (Object) b());
    }

    public static long i() {
        if (NativeImpl.e()) {
            return Long.MAX_VALUE;
        }
        return Header.a() ? 3891200L : 2867200L;
    }

    public static boolean m() {
        Boolean bool = f1032d;
        if (bool != null) {
            return bool.booleanValue();
        }
        int i = 11;
        String[] strArr = {"/data/local/su", "/data/local/bin/su", "/data/local/xbin/su", "/system/xbin/su", "/system/bin/su", "/system/bin/.ext/su", "/system/bin/failsafe/su", "/system/sd/xbin/su", "/system/usr/we-need-root/su", "/sbin/su", "/su/bin/su"};
        for (int i2 = 0; i2 < i; i2++) {
            try {
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
            }
            if (new File(strArr[i2]).exists()) {
                Boolean bool2 = true;
                f1032d = bool2;
                return bool2.booleanValue();
            }
            continue;
        }
        Boolean bool3 = false;
        f1032d = bool3;
        return bool3.booleanValue();
    }

    private Header n() {
        Header header = new Header(this.f1033a);
        JSONObject a2 = s.a().a(this.f1035c.a());
        if (a2 != null) {
            header.a(a2);
            header.d();
            header.e();
        }
        Header.b(header);
        return header;
    }

    private int o() {
        return new C0017c().a();
    }

    private int p() {
        return new f().a();
    }

    private int q() {
        return new d().a();
    }

    public Map<String, String> a() {
        b bVar = this.f1035c;
        if (bVar != null) {
            return bVar.f1038c.c();
        }
        return null;
    }

    public void a(File file) {
        this.f1035c = new b(file);
    }

    public String b() {
        b bVar = this.f1035c;
        if (bVar != null) {
            String c2 = bVar.f1037b.c();
            return (c2 == null || c2.isEmpty()) ? this.f1035c.f1038c.b() : c2;
        }
        return null;
    }

    public boolean c() {
        b bVar = this.f1035c;
        if (bVar != null) {
            return bVar.c();
        }
        return false;
    }

    public JSONObject d() {
        File f2 = n.f(this.f1035c.b());
        if (f2.exists()) {
            try {
                String c2 = h.c(f2.getAbsolutePath());
                if (c2 != null && !c2.isEmpty()) {
                    return new JSONObject(c2);
                }
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
            }
            return null;
        }
        return null;
    }

    public void e() {
        try {
            File e2 = n.e(this.f1035c.b());
            File file = new File(e2.getAbsolutePath() + ".tmp'");
            if (file.exists()) {
                file.delete();
            }
            int i = 0;
            if (e2.exists()) {
                while (i < com.apm.insight.nativecrash.b.a()) {
                    File file2 = new File(e2.getAbsolutePath() + '.' + i);
                    if (file2.exists()) {
                        file2.delete();
                    }
                    i++;
                }
                return;
            }
            com.apm.insight.entity.a aVar = new com.apm.insight.entity.a();
            for (int i2 = 0; i2 < com.apm.insight.nativecrash.b.a(); i2++) {
                File file3 = new File(e2.getAbsolutePath() + '.' + i2);
                if (file3.exists()) {
                    try {
                        String c2 = h.c(file3.getAbsolutePath());
                        if (!TextUtils.isEmpty(c2)) {
                            JSONObject jSONObject = new JSONObject(c2);
                            if (jSONObject.length() > 0) {
                                aVar.c(jSONObject);
                            }
                        }
                    } catch (JSONException e3) {
                        com.apm.insight.c.a().a("NPTH_CATCH", e3);
                    }
                }
            }
            JSONObject h2 = aVar.h();
            try {
                if (h2.length() != 0 && h2.opt("storage") == null) {
                    com.apm.insight.entity.a.a(h2, v.a(i.g()));
                }
            } catch (Throwable unused) {
            }
            if (h2.length() != 0) {
                this.f1034b = h2;
                h.b(file, h2, false);
                if (file.renameTo(e2)) {
                    while (i < com.apm.insight.nativecrash.b.a()) {
                        File file4 = new File(e2.getAbsolutePath() + '.' + i);
                        if (file4.exists()) {
                            file4.delete();
                        }
                        i++;
                    }
                }
            }
        } catch (IOException e4) {
            com.apm.insight.c.a().a("NPTH_CATCH", e4);
        }
    }

    public boolean f() {
        ICrashFilter b2 = i.b().b();
        if (b2 != null) {
            try {
                return b2.onNativeCrashFilter(b(), "");
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
                return true;
            }
        }
        return true;
    }

    public boolean g() {
        return com.apm.insight.e.a.a().a(n.f(this.f1035c.b()).getAbsolutePath());
    }

    public void h() {
        com.apm.insight.e.a.a().a(com.apm.insight.e.a.a.a(n.f(this.f1035c.b()).getAbsolutePath()));
    }

    public JSONObject j() {
        try {
            com.apm.insight.entity.a aVar = new com.apm.insight.entity.a();
            a(aVar);
            h(aVar);
            c(aVar);
            d(aVar);
            e(aVar);
            g(aVar);
            f(aVar);
            b(aVar);
            File f2 = n.f(this.f1035c.b());
            JSONObject h2 = aVar.h();
            h.a(f2, h2, false);
            return h2;
        } catch (Throwable th) {
            com.apm.insight.c.a().a("NPTH_CATCH", th);
            return null;
        }
    }

    public boolean k() {
        return h.a(this.f1035c.b());
    }

    public void l() {
        try {
            h.c(this.f1035c.b().getAbsolutePath(), Environment.getExternalStorageDirectory().getAbsolutePath() + "/localDebug/" + i.g().getPackageName() + "/" + this.f1035c.b().getName() + ".zip");
        } catch (Throwable th) {
            com.apm.insight.c.a().a("NPTH_CATCH", th);
        }
    }
}
