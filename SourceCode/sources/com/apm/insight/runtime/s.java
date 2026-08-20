package com.apm.insight.runtime;

import android.content.Context;
import android.text.TextUtils;
import com.apm.insight.entity.Header;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class s {

    /* renamed from: a  reason: collision with root package name */
    private static s f1153a;

    /* renamed from: b  reason: collision with root package name */
    private File f1154b;

    /* renamed from: c  reason: collision with root package name */
    private File f1155c;

    /* renamed from: d  reason: collision with root package name */
    private File f1156d;

    /* renamed from: e  reason: collision with root package name */
    private Context f1157e;

    /* renamed from: f  reason: collision with root package name */
    private a f1158f = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private long f1161a;

        /* renamed from: b  reason: collision with root package name */
        private long f1162b;

        /* renamed from: c  reason: collision with root package name */
        private File f1163c;

        /* renamed from: d  reason: collision with root package name */
        private JSONObject f1164d;

        private a(File file) {
            long parseLong;
            this.f1164d = null;
            this.f1163c = file;
            String[] split = file.getName().split("-|\\.");
            if (split.length >= 2) {
                this.f1161a = Long.parseLong(split[0]);
                parseLong = Long.parseLong(split[1]);
            } else {
                String name = file.getName();
                if (TextUtils.isEmpty(name) || name.length() < 13) {
                    return;
                }
                String substring = name.substring(0, 13);
                if (!TextUtils.isDigitsOnly(substring)) {
                    return;
                }
                parseLong = Long.parseLong(substring);
                this.f1161a = parseLong;
            }
            this.f1162b = parseLong;
        }

        private String a() {
            return this.f1161a + "-" + this.f1162b + ".ctx";
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(long j) {
            this.f1162b = j;
            this.f1163c.renameTo(new File(this.f1163c.getParent(), a()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public JSONObject b() {
            if (this.f1164d == null) {
                try {
                    this.f1164d = new JSONObject(com.apm.insight.l.h.c(this.f1163c.getAbsolutePath()));
                } catch (Throwable unused) {
                }
                if (this.f1164d == null) {
                    this.f1164d = new JSONObject();
                }
            }
            return this.f1164d;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean b(long j) {
            long j2 = this.f1161a;
            if (j2 <= j || j2 - j <= 604800000) {
                long j3 = this.f1162b;
                if (j3 >= j || j - j3 <= 604800000) {
                    return this.f1163c.lastModified() < j && j - this.f1163c.lastModified() > 604800000;
                }
                return true;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            this.f1163c.delete();
        }
    }

    private s(Context context) {
        File c2 = com.apm.insight.l.n.c(context);
        if (!c2.exists() || (!c2.isDirectory() && c2.delete())) {
            c2.mkdirs();
            com.apm.insight.runtime.a.b.a();
        }
        this.f1154b = c2;
        this.f1155c = new File(c2, "did");
        this.f1156d = new File(c2, "device_uuid");
        this.f1157e = context;
    }

    public static int a(JSONObject jSONObject, JSONObject jSONObject2) {
        if (Header.c(jSONObject)) {
            return 2;
        }
        if (Header.c(jSONObject2)) {
            return 0;
        }
        return (String.valueOf(jSONObject2.opt("update_version_code")).equals(String.valueOf(jSONObject.opt("update_version_code"))) && Header.d(jSONObject)) ? 1 : 2;
    }

    public static s a() {
        if (f1153a == null) {
            f1153a = new s(com.apm.insight.i.g());
        }
        return f1153a;
    }

    private void a(long j, long j2, JSONObject jSONObject, JSONArray jSONArray) {
        File file = new File(this.f1154b, "" + j + "-" + j2 + ".ctx");
        File file2 = new File(this.f1154b, "" + j + "-" + j2 + ".allData");
        try {
            com.apm.insight.l.h.a(file, jSONObject, false);
            com.apm.insight.l.h.a(file2, jSONArray, false);
            this.f1158f = new a(file);
        } catch (IOException e2) {
            com.apm.insight.c.a().a("NPTH_CATCH", e2);
        }
    }

    private a c() {
        if (this.f1158f == null) {
            d(".ctx");
        }
        return this.f1158f;
    }

    private void c(long j) {
        try {
            ArrayList<a> d2 = d("");
            if (d2.size() <= 6) {
                return;
            }
            Iterator<a> it = d2.iterator();
            while (it.hasNext()) {
                a next = it.next();
                if (next.b(j)) {
                    next.c();
                }
            }
        } catch (Throwable th) {
            com.apm.insight.c.a().a("NPTH_CATCH", th);
        }
    }

    private File d(long j) {
        Iterator<a> it = d(".ctx").iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (j >= next.f1161a && j <= next.f1162b) {
                return next.f1163c;
            }
        }
        return null;
    }

    private ArrayList<a> d(final String str) {
        File[] listFiles = this.f1154b.listFiles(new FilenameFilter() { // from class: com.apm.insight.runtime.s.1
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str2) {
                return str2.endsWith(str) && Pattern.compile("^\\d{1,13}-\\d{1,13}.*").matcher(str2).matches();
            }
        });
        ArrayList<a> arrayList = new ArrayList<>();
        if (listFiles == null) {
            return arrayList;
        }
        com.apm.insight.l.p.a((Object) ("foundRuntimeContextFiles " + listFiles.length));
        a aVar = null;
        for (File file : listFiles) {
            try {
                a aVar2 = new a(file);
                arrayList.add(aVar2);
                if (this.f1158f == null) {
                    if (".ctx".equals(str)) {
                        if (aVar != null && aVar2.f1162b < aVar.f1162b) {
                        }
                        aVar = aVar2;
                    }
                }
            } catch (Throwable th) {
                com.apm.insight.c.a().a("NPTH_CATCH", th);
            }
        }
        if (this.f1158f == null && aVar != null) {
            this.f1158f = aVar;
        }
        return arrayList;
    }

    private File e(long j) {
        Iterator<a> it = d(".allData").iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (j >= next.f1161a && j <= next.f1162b) {
                return next.f1163c;
            }
        }
        return null;
    }

    private File f(long j) {
        Iterator<a> it = d(".ctx").iterator();
        a aVar = null;
        while (it.hasNext()) {
            a next = it.next();
            if (aVar == null || Math.abs(aVar.f1162b - j) > Math.abs(next.f1162b - j)) {
                aVar = next;
            }
        }
        if (aVar == null) {
            return null;
        }
        return aVar.f1163c;
    }

    private File g(long j) {
        Iterator<a> it = d(".allData").iterator();
        a aVar = null;
        while (it.hasNext()) {
            a next = it.next();
            if (aVar == null || Math.abs(aVar.f1162b - j) > Math.abs(next.f1162b - j)) {
                aVar = next;
            }
        }
        if (aVar == null) {
            return null;
        }
        return aVar.f1163c;
    }

    public String a(String str) {
        try {
            return com.apm.insight.l.h.c(this.f1156d.getAbsolutePath());
        } catch (Throwable unused) {
            return str;
        }
    }

    public JSONObject a(long j) {
        boolean z;
        String str;
        File d2 = d(j);
        if (d2 == null) {
            d2 = f(j);
            z = true;
        } else {
            z = false;
        }
        JSONObject jSONObject = null;
        if (d2 != null) {
            try {
                str = com.apm.insight.l.h.c(d2.getAbsolutePath());
                try {
                    jSONObject = new JSONObject(str);
                } catch (Throwable th) {
                    th = th;
                    com.apm.insight.c.a().a("NPTH_CATCH", new IOException("content :" + str, th));
                    if (jSONObject != null) {
                        try {
                            jSONObject.put("unauthentic_version", 1);
                        } catch (JSONException e2) {
                            com.apm.insight.c.a().a("NPTH_CATCH", e2);
                        }
                    }
                    return jSONObject;
                }
            } catch (Throwable th2) {
                th = th2;
                str = null;
            }
        }
        if (jSONObject != null && z) {
            jSONObject.put("unauthentic_version", 1);
        }
        return jSONObject;
    }

    public void a(Map<String, Object> map, JSONArray jSONArray) {
        JSONObject a2 = Header.a(this.f1157e).a(map);
        if (Header.c(a2)) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        a c2 = c();
        if (c2 == null) {
            a(currentTimeMillis, currentTimeMillis, a2, jSONArray);
            return;
        }
        int a3 = a(c2.b(), a2);
        if (a3 == 1) {
            a(c2.f1161a, currentTimeMillis, a2, jSONArray);
            com.apm.insight.l.h.a(c2.f1163c);
        } else if (a3 == 2) {
            a(currentTimeMillis, currentTimeMillis, a2, jSONArray);
        } else if (a3 == 3) {
            c2.a(currentTimeMillis);
        }
        c(currentTimeMillis);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String b() {
        try {
            return com.apm.insight.l.h.c(this.f1155c.getAbsolutePath());
        } catch (Throwable unused) {
            return "0";
        }
    }

    public JSONArray b(long j) {
        String str;
        File e2 = e(j);
        if (e2 == null) {
            e2 = g(j);
        }
        if (e2 == null) {
            return null;
        }
        try {
            str = com.apm.insight.l.h.c(e2.getAbsolutePath());
            try {
                return new JSONArray(str);
            } catch (Throwable th) {
                th = th;
                com.apm.insight.c.a().a("NPTH_CATCH", new IOException("content :" + str, th));
                return null;
            }
        } catch (Throwable th2) {
            th = th2;
            str = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(String str) {
        try {
            com.apm.insight.l.h.a(this.f1155c, str, false);
        } catch (Throwable unused) {
        }
    }

    public void c(String str) {
        try {
            com.apm.insight.l.h.a(this.f1156d, str, false);
        } catch (Throwable unused) {
        }
    }
}
