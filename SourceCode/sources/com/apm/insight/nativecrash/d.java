package com.apm.insight.nativecrash;

import android.text.TextUtils;
import com.apm.insight.l.h;
import com.apm.insight.l.j;
import com.apm.insight.l.n;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class d {

    /* loaded from: classes.dex */
    public static class a extends c {
        a(File file) {
            super(file);
            this.f1050b = "Total FD Count:";
            this.f1051c = ":";
            this.f1052d = -2;
        }
    }

    /* loaded from: classes.dex */
    public static class b extends c {
        b(File file) {
            super(file);
            this.f1050b = "VmSize:";
            this.f1051c = "\\s+";
            this.f1052d = -1;
        }
    }

    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        protected File f1049a;

        /* renamed from: b  reason: collision with root package name */
        protected String f1050b;

        /* renamed from: c  reason: collision with root package name */
        protected String f1051c;

        /* renamed from: d  reason: collision with root package name */
        protected int f1052d;

        public c(File file) {
            this.f1049a = file;
        }

        public int a() {
            int i;
            Throwable th;
            if (!this.f1049a.exists() || !this.f1049a.isFile()) {
                return -1;
            }
            BufferedReader bufferedReader = null;
            try {
                BufferedReader bufferedReader2 = new BufferedReader(new FileReader(this.f1049a));
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
            int i = this.f1052d;
            if (str.startsWith(this.f1050b)) {
                try {
                    i = Integer.parseInt(str.split(this.f1051c)[1].trim());
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

    /* renamed from: com.apm.insight.nativecrash.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0018d extends c {
        C0018d(File file) {
            super(file);
        }

        public HashMap<String, List<String>> b() {
            JSONArray b2;
            HashMap<String, List<String>> hashMap = new HashMap<>();
            try {
                b2 = h.b(this.f1049a.getAbsolutePath());
            } catch (IOException unused) {
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
            }
            if (b2 == null) {
                return hashMap;
            }
            for (int i = 0; i < b2.length(); i++) {
                String optString = b2.optString(i);
                if (!TextUtils.isEmpty(optString) && optString.startsWith("[tid:0") && optString.endsWith("sigstack:0x0]")) {
                    int indexOf = optString.indexOf("[routine:0x");
                    int i2 = indexOf + 11;
                    String substring = indexOf > 0 ? optString.substring(i2, optString.indexOf(93, i2)) : "unknown addr";
                    List<String> list = hashMap.get(substring);
                    if (list == null) {
                        list = new ArrayList<>();
                        hashMap.put(substring, list);
                    }
                    list.add(optString);
                }
            }
            return hashMap;
        }
    }

    /* loaded from: classes.dex */
    public static class e extends c {
        e(File file) {
            super(file);
        }

        public JSONArray a(HashMap<String, List<String>> hashMap) {
            JSONArray b2;
            int indexOf;
            List<String> list;
            JSONArray jSONArray = new JSONArray();
            if (hashMap.isEmpty()) {
                return jSONArray;
            }
            try {
                b2 = h.b(this.f1049a.getAbsolutePath());
            } catch (IOException unused) {
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
            }
            if (b2 == null) {
                return jSONArray;
            }
            for (int i = 0; i < b2.length(); i++) {
                String optString = b2.optString(i);
                if (!TextUtils.isEmpty(optString) && (indexOf = optString.indexOf(":")) > 2) {
                    String substring = optString.substring(2, indexOf);
                    if (hashMap.containsKey(substring) && (list = hashMap.get(substring)) != null) {
                        Iterator<String> it = list.iterator();
                        while (it.hasNext()) {
                            jSONArray.put(it.next() + " " + optString);
                        }
                        hashMap.remove(substring);
                    }
                }
            }
            for (List<String> list2 : hashMap.values()) {
                Iterator<String> it2 = list2.iterator();
                while (it2.hasNext()) {
                    jSONArray.put(it2.next() + "  0x000000:unknown");
                }
            }
            return jSONArray;
        }
    }

    /* loaded from: classes.dex */
    public static class f extends c {
        f(File file) {
            super(file);
            this.f1050b = "Total Threads Count:";
            this.f1051c = ":";
            this.f1052d = -2;
        }
    }

    public static int a(String str) {
        return new a(n.b(str)).a();
    }

    public static JSONArray a(File file, File file2) {
        return new e(file2).a(new C0018d(file).b());
    }

    public static int b(String str) {
        return new f(n.c(str)).a();
    }

    public static int c(String str) {
        return new b(n.d(str)).a();
    }
}
