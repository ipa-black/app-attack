package com.apm.insight.k;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.apm.insight.l.n;
import com.apm.insight.l.p;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private static File f978a = null;

    /* renamed from: b  reason: collision with root package name */
    private static boolean f979b = false;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f980c = false;

    /* renamed from: d  reason: collision with root package name */
    private static String f981d = "exception_modules";

    /* renamed from: e  reason: collision with root package name */
    private static String f982e = "npth";

    /* renamed from: f  reason: collision with root package name */
    private static Map<String, String> f983f;

    public static void a(String str) {
        if (f983f == null) {
            f983f = new HashMap();
        }
        f983f.put(str, String.valueOf(System.currentTimeMillis()));
    }

    public static void a(boolean z, JSONArray jSONArray) {
        try {
            com.apm.insight.l.h.a(new File(n.j(com.apm.insight.i.g()), "apminsight/configCrash/configFile"), jSONArray, false);
        } catch (IOException unused) {
        }
        try {
            com.apm.insight.l.h.a(g(), f983f);
        } catch (Throwable unused2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return f979b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(boolean z) {
        File g2 = g();
        try {
            Map<String, String> map = f983f;
            if (map == null) {
                map = com.apm.insight.l.h.e(g2);
            }
            f983f = map;
            if (map == null) {
                f983f = new HashMap();
                return true;
            } else if (map.size() < com.apm.insight.entity.b.c()) {
                return true;
            } else {
                for (String str : com.apm.insight.entity.b.d()) {
                    if (!f983f.containsKey(str)) {
                        return true;
                    }
                }
                long currentTimeMillis = System.currentTimeMillis();
                boolean z2 = false;
                for (Map.Entry<String, String> entry : f983f.entrySet()) {
                    if (currentTimeMillis - Long.decode(entry.getValue()).longValue() > com.apm.insight.runtime.e.e(entry.getKey())) {
                        z2 = true;
                    }
                }
                p.a((Object) (z2 ? "config should be updated" : "config should not be updated"));
                return z2;
            }
        } catch (Throwable th) {
            Log.e("npth", NotificationCompat.CATEGORY_ERROR, th);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b() {
        return f980c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c() {
        if (f979b) {
            return;
        }
        f980c = true;
        File file = new File(n.j(com.apm.insight.i.g()), "apminsight/configCrash/configFile");
        if (file.exists()) {
            try {
                com.apm.insight.runtime.a.a(new JSONArray(com.apm.insight.l.h.c(file)), false);
                f979b = true;
            } catch (Throwable unused) {
                com.apm.insight.runtime.a.a((JSONArray) null, false);
            }
        }
    }

    public static void d() {
        c();
        if (a(false)) {
            a.a();
        }
    }

    public static void e() {
        com.apm.insight.runtime.p.b().a(new Runnable() { // from class: com.apm.insight.k.k.1
            @Override // java.lang.Runnable
            public void run() {
                if (k.a(false)) {
                    a.a();
                }
            }
        });
    }

    public static void f() {
        Map<String, String> map = f983f;
        if (map != null) {
            map.clear();
        }
    }

    private static File g() {
        if (f978a == null) {
            f978a = new File(n.j(com.apm.insight.i.g()), "apminsight/configCrash/configInvalid");
        }
        return f978a;
    }
}
