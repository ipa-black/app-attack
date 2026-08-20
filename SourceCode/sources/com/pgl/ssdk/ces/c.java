package com.pgl.ssdk.ces;

import android.app.Application;
import android.content.Context;
import android.os.Environment;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.pgl.ssdk.AbstractC1372c;
import com.pgl.ssdk.C;
import com.pgl.ssdk.C1390v;
import com.pgl.ssdk.D;
import com.pgl.ssdk.F;
import com.pgl.ssdk.H;
import com.pgl.ssdk.K;
import com.pgl.ssdk.L;
import com.pgl.ssdk.M;
import com.pgl.ssdk.Q;
import com.pgl.ssdk.S;
import com.pgl.ssdk.ces.out.PglSSConfig;
import com.pgl.ssdk.x;
import java.util.ArrayList;
import java.util.Map;
import java.util.UUID;
/* compiled from: PglSSManagerImpl.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: h  reason: collision with root package name */
    private static volatile c f12197h = null;
    private static boolean i = false;
    private static Map<String, Object> j = null;
    private static int k = 1;
    private static K.a l;

    /* renamed from: a  reason: collision with root package name */
    public Context f12198a;

    /* renamed from: b  reason: collision with root package name */
    private String f12199b;

    /* renamed from: c  reason: collision with root package name */
    private int f12200c;

    /* renamed from: d  reason: collision with root package name */
    private int f12201d;

    /* renamed from: e  reason: collision with root package name */
    private String f12202e = null;

    /* renamed from: f  reason: collision with root package name */
    private String f12203f = null;

    /* renamed from: g  reason: collision with root package name */
    private String f12204g = null;

    /* compiled from: PglSSManagerImpl.java */
    /* loaded from: classes3.dex */
    static class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C1390v.a(C1390v.b());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PglSSManagerImpl.java */
    /* loaded from: classes3.dex */
    public class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            D.a(c.this.f12198a).a();
            C.a(c.this.f12198a).a();
        }
    }

    /* compiled from: PglSSManagerImpl.java */
    /* renamed from: com.pgl.ssdk.ces.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class RunnableC0335c implements Runnable {
        RunnableC0335c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            x.b(c.this.f12198a);
        }
    }

    private c(Context context, String str) {
        this.f12198a = context;
        this.f12199b = str;
    }

    public static c a(Context context, String str, int i2, int i3, int i4) {
        Application application;
        if (f12197h == null) {
            synchronized (c.class) {
                if (f12197h == null) {
                    if (context == null) {
                        try {
                            application = (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null);
                        } catch (Throwable unused) {
                            application = null;
                        }
                        context = application.getApplicationContext();
                    }
                    if (context == null) {
                        k = 4;
                        return null;
                    }
                    F.f12160a = i2;
                    K.a a2 = K.a(context, "nms");
                    if (a2 != null) {
                        k = a2.f12180a;
                        l = a2;
                        return null;
                    }
                    c cVar = new c(context, str);
                    f12197h = cVar;
                    cVar.f12200c = i3;
                    f12197h.f12201d = i4;
                    f12197h.a(context);
                    c cVar2 = f12197h;
                    String a3 = L.a(context, "iid", "");
                    if (TextUtils.isEmpty(a3)) {
                        a3 = UUID.randomUUID().toString();
                        L.b(context, "iid", a3);
                    }
                    cVar2.getClass();
                    if (!TextUtils.isEmpty(a3)) {
                        com.pgl.ssdk.ces.a.meta(104, null, a3);
                    }
                    C1390v.b(context);
                    k = 0;
                    AbstractC1372c.a(new a());
                }
            }
        }
        return f12197h;
    }

    public static String d() {
        if (f12197h != null) {
            return f12197h.f12199b;
        }
        return null;
    }

    public static String e() {
        if (f12197h != null) {
            return f12197h.f12202e;
        }
        return null;
    }

    public static int f() {
        return k;
    }

    public static c g() {
        return f12197h;
    }

    public static K.a h() {
        return l;
    }

    public void b() {
        Map<String, Object> map = j;
        if (map != null) {
            Object obj = map.get(PglSSConfig.CUSTOMINFO_KEY_CHECKCLAZZ);
            if (obj instanceof String) {
                String str = (String) obj;
                String[] split = !TextUtils.isEmpty(str) ? str.split("//") : null;
                ArrayList arrayList = new ArrayList();
                if (split != null && split.length > 0) {
                    for (String str2 : split) {
                        try {
                            Class.forName(str2);
                            arrayList.add(str2);
                        } catch (ClassNotFoundException unused) {
                        }
                    }
                }
                String obj2 = !arrayList.isEmpty() ? arrayList.toString() : null;
                if (TextUtils.isEmpty(obj2)) {
                    return;
                }
                com.pgl.ssdk.ces.a.meta(159, null, obj2);
            }
        }
    }

    public synchronized void c(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.f12204g)) {
            com.pgl.ssdk.ces.a.meta(111, null, str);
            this.f12204g = str;
            S.c();
        }
    }

    public synchronized void d(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.f12203f)) {
            com.pgl.ssdk.ces.a.meta(112, null, str);
            this.f12203f = str;
            S.c();
        }
    }

    public void c() {
        AbstractC1372c.a(new RunnableC0335c());
    }

    public synchronized void b(String str) {
        if (!TextUtils.isEmpty(str) && !str.equals(this.f12202e)) {
            com.pgl.ssdk.ces.a.meta(103, null, str);
            S.c();
            this.f12202e = str;
        }
    }

    private void a(Context context) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        if (context == null || i) {
            return;
        }
        try {
            com.pgl.ssdk.ces.a.meta(101, null, IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
            com.pgl.ssdk.ces.a.meta(102, null, this.f12199b);
            com.pgl.ssdk.ces.a.meta(114, null, Integer.valueOf(this.f12200c));
            com.pgl.ssdk.ces.a.meta(105, null, new StringBuilder().append(x.c(context)).toString());
            StringBuilder sb = new StringBuilder();
            try {
                str = context.getPackageName();
            } catch (Throwable unused) {
                str = null;
            }
            com.pgl.ssdk.ces.a.meta(106, null, sb.append(str == null ? "" : str.trim()).toString());
            StringBuilder sb2 = new StringBuilder();
            try {
                str2 = context.getFilesDir().getAbsolutePath();
            } catch (Throwable unused2) {
                str2 = null;
            }
            com.pgl.ssdk.ces.a.meta(107, null, sb2.append(str2 == null ? "" : str2.trim()).toString());
            StringBuilder sb3 = new StringBuilder();
            try {
                str3 = context.getApplicationInfo().sourceDir;
            } catch (Throwable unused3) {
                str3 = null;
            }
            com.pgl.ssdk.ces.a.meta(108, null, sb3.append(str3 == null ? "" : str3.trim()).toString());
            StringBuilder sb4 = new StringBuilder();
            try {
                str4 = Environment.getExternalStorageDirectory().getAbsolutePath();
            } catch (Throwable unused4) {
                str4 = null;
            }
            com.pgl.ssdk.ces.a.meta(109, null, sb4.append(str4 == null ? "" : str4.trim()).toString());
            StringBuilder sb5 = new StringBuilder();
            try {
                str5 = Environment.getDataDirectory().getPath();
            } catch (Throwable unused5) {
                str5 = null;
            }
            com.pgl.ssdk.ces.a.meta(110, null, sb5.append(str5 != null ? str5.trim() : "").toString());
            i = true;
        } catch (Throwable unused6) {
        }
    }

    public void a(String str, String str2, String str3, String str4) {
        this.f12202e = str2;
        this.f12203f = str3;
        com.pgl.ssdk.ces.a.meta(113, null, str);
        com.pgl.ssdk.ces.a.meta(112, null, str3);
        com.pgl.ssdk.ces.a.meta(103, null, str2);
        com.pgl.ssdk.ces.a.meta(111, null, str4);
        try {
            H.b();
            S.a(this.f12198a, this.f12199b);
            a("CZL-L1st");
        } catch (Throwable unused) {
        }
    }

    public void a(String str) {
        try {
            long j2 = "CZL-L1st".equals(str) ? 10000L : 0L;
            Q c2 = M.a().c();
            if (c2 != null) {
                c2.postDelayed(new d(this.f12198a, str), j2);
            }
            AbstractC1372c.a(new b());
            C1390v.a();
        } catch (Throwable unused) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x0265, code lost:
        if (r6 != 1) goto L148;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object a(int r6, java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 668
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.pgl.ssdk.ces.c.a(int, java.lang.Object):java.lang.Object");
    }

    public void a(Map<String, Object> map) {
        if (map != null) {
            j = map;
        }
    }

    public void a() {
        AbstractC1372c.a(new b());
    }
}
