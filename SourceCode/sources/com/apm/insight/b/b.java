package com.apm.insight.b;

import android.content.Context;
import android.os.SystemClock;
import com.apm.insight.CrashType;
import com.apm.insight.ICrashCallback;
import com.apm.insight.Npth;
import com.apm.insight.l.n;
import com.apm.insight.nativecrash.NativeImpl;
import com.apm.insight.runtime.o;
import com.apm.insight.runtime.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.exoplayer2.ExoPlayer;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.altbeacon.beacon.service.scanner.CycledLeScanner;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    static volatile boolean f698a = true;

    /* renamed from: f  reason: collision with root package name */
    private static volatile boolean f699f;

    /* renamed from: c  reason: collision with root package name */
    private c f701c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f702d;

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f703e;
    private JSONObject j;
    private JSONObject k;
    private JSONArray p;
    private JSONObject q;
    private JSONArray t;
    private JSONArray u;
    private JSONObject v;
    private boolean w;
    private volatile boolean y;

    /* renamed from: g  reason: collision with root package name */
    private long f704g = -1;

    /* renamed from: h  reason: collision with root package name */
    private File f705h = null;
    private boolean i = true;
    private String l = "unknown";
    private String m = "unknown";
    private String n = "unknown";
    private String o = "npth_inner_default";
    private int r = 0;
    private long s = -1;
    private final Object x = new Object();
    private long z = -1;
    private long A = 0;
    private final Runnable B = new Runnable() { // from class: com.apm.insight.b.b.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                b.this.a(200, 25);
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
            }
        }
    };
    private int C = 0;
    private List<Pattern> D = null;

    /* renamed from: b  reason: collision with root package name */
    Pattern f700b = null;
    private File E = null;

    public b(Context context) {
        this.f702d = context;
    }

    private static String a(float f2) {
        return f2 <= 0.0f ? "0%" : f2 <= 0.1f ? "0% - 10%" : f2 <= 0.3f ? "10% - 30%" : f2 <= 0.6f ? "30% - 60%" : f2 <= 0.9f ? "60% - 90%" : "90% - 100%";
    }

    private static String a(float f2, float f3) {
        return f3 > 0.0f ? a(f2 / f3) : f2 > 0.0f ? "100%" : "0%";
    }

    private JSONObject a(String str, JSONArray jSONArray) {
        JSONObject jSONObject = new JSONObject();
        JSONArray a2 = com.apm.insight.l.k.a(256, 128, jSONArray);
        if (a2.length() != jSONArray.length()) {
            this.r++;
        }
        try {
            jSONObject.put("thread_name", str);
            jSONObject.put("thread_stack", a2);
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x0216, code lost:
        if (r3 != 5) goto L136;
     */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02d1 A[LOOP:2: B:102:0x0200->B:158:0x02d1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x03ff A[EDGE_INSN: B:240:0x03ff->B:210:0x03ff ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:242:0x03e7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:244:0x008e A[EDGE_INSN: B:244:0x008e->B:20:0x008e ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.lang.String r29, org.json.JSONObject r30) {
        /*
            Method dump skipped, instructions count: 1140
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.b.b.a(java.lang.String, org.json.JSONObject):void");
    }

    private static void a(HashMap<String, Float> hashMap, JSONObject jSONObject, String str) {
        String str2;
        String a2;
        String str3 = "npth_anr_" + str;
        if (hashMap.isEmpty()) {
            str2 = str3 + "_total";
            a2 = "not found";
        } else {
            float f2 = 0.0f;
            float f3 = 0.0f;
            float f4 = 0.0f;
            float f5 = 0.0f;
            float f6 = 0.0f;
            for (Map.Entry<String, Float> entry : hashMap.entrySet()) {
                String key = entry.getKey();
                if (key.endsWith("user")) {
                    f2 += entry.getValue().floatValue();
                } else if (key.endsWith("kernel")) {
                    f3 += entry.getValue().floatValue();
                } else if (key.endsWith("iowait")) {
                    f4 += entry.getValue().floatValue();
                } else if (key.endsWith("irq")) {
                    f5 += entry.getValue().floatValue();
                } else if (key.endsWith("softirq")) {
                    f6 += entry.getValue().floatValue();
                }
            }
            float f7 = f2 + f3 + f4 + f5 + f6;
            jSONObject.put(str3 + "_total", b(f7));
            jSONObject.put(str3 + "_kernel_user_ratio", a(f3, f7));
            str2 = str3 + "_iowait_user_ratio";
            a2 = a(f4, f7);
        }
        jSONObject.put(str2, a2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:91:0x0192, code lost:
        if (android.text.TextUtils.isEmpty(r0) != false) goto L102;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0184  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(org.json.JSONArray r17) {
        /*
            Method dump skipped, instructions count: 476
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.b.b.a(org.json.JSONArray):void");
    }

    private boolean a(long j) {
        if (this.y) {
            this.y = false;
            b(j);
        }
        return false;
    }

    private boolean a(String str) {
        if (this.D == null) {
            JSONArray c2 = com.apm.insight.runtime.a.c();
            if (c2 != null) {
                this.D = new LinkedList();
                this.o = c2.optString(0);
                for (int i = 1; i < c2.length(); i++) {
                    try {
                        this.D.add(Pattern.compile(c2.optString(i)));
                    } catch (Throwable unused) {
                    }
                }
            }
            if (this.D == null) {
                LinkedList linkedList = new LinkedList();
                this.D = linkedList;
                linkedList.add(Pattern.compile("^main$"));
                this.D.add(Pattern.compile("^default_npth_thread$"));
                this.D.add(Pattern.compile("^RenderThread$"));
                this.D.add(Pattern.compile("^Jit thread pool worker thread.*$"));
            }
        }
        for (Pattern pattern : this.D) {
            if (pattern.matcher(str).matches()) {
                return true;
            }
        }
        return false;
    }

    private static String b(float f2) {
        return a(f2 / 100.0f);
    }

    private void b(long j) {
        if (this.A != this.z) {
            try {
                this.s = System.currentTimeMillis();
                this.u = g.b().c();
                this.t = k.a(100, j);
                this.k = g.b().a(j).a();
                JSONObject jSONObject = new JSONObject();
                this.v = jSONObject;
                com.apm.insight.l.a.a(this.f702d, jSONObject);
                this.w = g();
                this.i = !Npth.hasCrash();
            } catch (Throwable unused) {
            }
            try {
                this.f704g = this.s;
                String b2 = n.b();
                File file = new File(new File(n.f(this.f702d), b2), "trace_" + com.apm.insight.l.a.c(this.f702d).replace(':', '_') + ".txt");
                file.getParentFile().mkdirs();
                com.apm.insight.l.h.a(file, com.apm.insight.l.b.a().format(new Date(System.currentTimeMillis())) + "\n", false);
                r.a("anr_trace", b2);
                NativeImpl.i(file.getAbsolutePath());
                try {
                    JSONArray b3 = com.apm.insight.l.h.b(file.getAbsolutePath());
                    this.p = b3;
                    a(b3);
                } catch (IOException unused2) {
                } catch (Throwable th) {
                    com.apm.insight.c.a().a("NPTH_CATCH", th);
                }
                if (this.j == null) {
                    this.j = d.a(true);
                }
            } catch (Throwable th2) {
                com.apm.insight.c.a().a("NPTH_CATCH", th2);
            }
            com.apm.insight.l.f.a();
        } else {
            try {
                this.f704g = this.s;
                String b4 = n.b();
                File file2 = new File(new File(n.f(this.f702d), b4), "trace" + com.apm.insight.l.a.c(this.f702d).replace(':', '_') + ".txt");
                file2.getParentFile().mkdirs();
                com.apm.insight.l.h.a(file2, com.apm.insight.l.b.a().format(new Date(System.currentTimeMillis())) + "\n", false);
                r.a("anr_trace", b4);
                NativeImpl.i(file2.getAbsolutePath());
                try {
                    JSONArray b5 = com.apm.insight.l.h.b(file2.getAbsolutePath());
                    this.p = b5;
                    a(b5);
                } catch (IOException unused3) {
                } catch (Throwable th3) {
                    com.apm.insight.c.a().a("NPTH_CATCH", th3);
                }
                if (this.j == null) {
                    this.j = d.a(true);
                }
            } catch (Throwable th4) {
                com.apm.insight.c.a().a("NPTH_CATCH", th4);
            }
        }
        long j2 = this.z;
        this.A = j2;
        this.z = -1L;
        if (j2 == -1) {
            this.A = (-1) - 1;
        }
    }

    private static void b(String str, JSONArray jSONArray) {
        for (ICrashCallback iCrashCallback : o.a().e()) {
            try {
                if (iCrashCallback instanceof com.apm.insight.b) {
                    ((com.apm.insight.b) iCrashCallback).a(CrashType.ANR, str, (Thread) null, jSONArray);
                } else {
                    iCrashCallback.onCrash(CrashType.ANR, str, null);
                }
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
            }
        }
    }

    private int[] b(JSONArray jSONArray) {
        for (int i = 0; i < jSONArray.length(); i++) {
            String optString = jSONArray.optString(i);
            int indexOf = (optString == null || optString.isEmpty()) ? -1 : optString.indexOf("utm=");
            if (indexOf > 0) {
                if (this.f700b == null) {
                    this.f700b = Pattern.compile("[^0-9]+");
                }
                String[] split = this.f700b.split(optString.substring(indexOf));
                if (split == null || split.length < 2) {
                    return null;
                }
                int intValue = Integer.decode(split[1]).intValue();
                int intValue2 = Integer.decode(split[2]).intValue();
                return new int[]{intValue, intValue2, intValue + intValue2};
            }
        }
        return null;
    }

    private String c(long j) {
        long j2 = j - com.apm.insight.i.j();
        return j2 < 30000 ? "0 - 30s" : j2 < 60000 ? "30s - 1min" : j2 < 120000 ? "1min - 2min" : j2 < 300000 ? "2min - 5min" : j2 < TTAdConstant.AD_MAX_EVENT_TIME ? "5min - 10min" : j2 < CycledLeScanner.ANDROID_N_MAX_SCAN_DURATION_MILLIS ? "10min - 30min" : j2 < 3600000 ? "30min - 1h" : "1h - ";
    }

    private JSONObject c(JSONArray jSONArray) {
        JSONObject jSONObject = new JSONObject();
        JSONArray a2 = com.apm.insight.l.k.a(256, 128, jSONArray);
        if (a2.length() != jSONArray.length()) {
            this.r++;
        }
        try {
            jSONObject.put("thread_number", 1);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < a2.length(); i++) {
                sb.append(a2.getString(i)).append('\n');
            }
            jSONObject.put("mainStackFromTrace", sb.toString());
            return jSONObject;
        } catch (JSONException unused) {
            return null;
        }
    }

    private boolean g() {
        boolean z = !com.apm.insight.l.a.a(this.f702d);
        if (!z || com.apm.insight.runtime.a.b.d().e() > ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS) {
            return z;
        }
        return false;
    }

    private File h() {
        if (this.E == null) {
            this.E = new File(this.f702d.getFilesDir(), "has_anr_signal_" + com.apm.insight.l.a.c(this.f702d).replaceAll(":", "_"));
        }
        return this.E;
    }

    private boolean i() {
        return com.apm.insight.runtime.a.i();
    }

    public void a() {
        if (this.f703e) {
            return;
        }
        this.f701c = new c(this);
        this.f704g = com.apm.insight.i.j();
        this.f703e = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0359  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x035c  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x038f A[Catch: all -> 0x03d9, TRY_LEAVE, TryCatch #7 {all -> 0x03d9, blocks: (B:95:0x0275, B:97:0x027c, B:101:0x0338, B:105:0x035e, B:107:0x038f, B:115:0x03ac, B:117:0x03b2, B:110:0x039c), top: B:156:0x0275 }] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x039a  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x03ac A[Catch: all -> 0x03d9, TryCatch #7 {all -> 0x03d9, blocks: (B:95:0x0275, B:97:0x027c, B:101:0x0338, B:105:0x035e, B:107:0x038f, B:115:0x03ac, B:117:0x03b2, B:110:0x039c), top: B:156:0x0275 }] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x03dd A[Catch: all -> 0x0481, TRY_ENTER, TryCatch #1 {all -> 0x0481, blocks: (B:77:0x017d, B:81:0x01fa, B:83:0x01ff, B:86:0x0208, B:88:0x020c, B:90:0x0212, B:92:0x021a, B:122:0x03dd, B:123:0x0406, B:125:0x040a, B:126:0x0410, B:133:0x0465, B:91:0x0218), top: B:145:0x017d }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0406 A[Catch: all -> 0x0481, TryCatch #1 {all -> 0x0481, blocks: (B:77:0x017d, B:81:0x01fa, B:83:0x01ff, B:86:0x0208, B:88:0x020c, B:90:0x0212, B:92:0x021a, B:122:0x03dd, B:123:0x0406, B:125:0x040a, B:126:0x0410, B:133:0x0465, B:91:0x0218), top: B:145:0x017d }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0270 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01ff A[Catch: all -> 0x0481, TryCatch #1 {all -> 0x0481, blocks: (B:77:0x017d, B:81:0x01fa, B:83:0x01ff, B:86:0x0208, B:88:0x020c, B:90:0x0212, B:92:0x021a, B:122:0x03dd, B:123:0x0406, B:125:0x040a, B:126:0x0410, B:133:0x0465, B:91:0x0218), top: B:145:0x017d }] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0333  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean a(int r26, int r27) {
        /*
            Method dump skipped, instructions count: 1167
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.apm.insight.b.b.a(int, int):boolean");
    }

    public void b() {
        if (this.f703e) {
            this.f703e = false;
            c cVar = this.f701c;
            if (cVar != null) {
                cVar.b();
            }
            this.f701c = null;
        }
    }

    public void c() {
        c cVar = this.f701c;
        if (cVar != null) {
            cVar.a();
        }
    }

    public void d() {
        if (f699f) {
            return;
        }
        synchronized (this.x) {
            if (f699f) {
                return;
            }
            this.B.run();
        }
    }

    public void e() {
        if (NativeImpl.g()) {
            try {
                com.apm.insight.l.h.a(h(), String.valueOf(this.C + 1), false);
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
            }
        }
        this.z = SystemClock.uptimeMillis();
        this.y = true;
    }

    public void f() {
        File h2 = h();
        try {
            int intValue = Integer.decode(com.apm.insight.l.h.c(h2.getAbsolutePath())).intValue();
            this.C = intValue;
            if (intValue >= 2) {
                NativeImpl.a(false);
            } else {
                NativeImpl.a(true);
            }
        } catch (IOException unused) {
            NativeImpl.a(true);
        } catch (Throwable unused2) {
            com.apm.insight.l.h.a(h2);
        }
    }
}
