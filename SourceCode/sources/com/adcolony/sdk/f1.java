package com.adcolony.sdk;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class f1 {

    /* renamed from: a  reason: collision with root package name */
    private final JSONObject f309a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1() {
        this(new JSONObject());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(f1 f1Var) {
        if (f1Var != null) {
            synchronized (this.f309a) {
                synchronized (f1Var.f309a) {
                    Iterator<String> c2 = f1Var.c();
                    while (c2.hasNext()) {
                        String next = c2.next();
                        try {
                            this.f309a.put(next, f1Var.f309a.get(next));
                        } catch (JSONException unused) {
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(String str) throws JSONException {
        int i;
        synchronized (this.f309a) {
            i = this.f309a.getInt(str);
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e1 c(String str) throws JSONException {
        e1 e1Var;
        synchronized (this.f309a) {
            e1Var = new e1(this.f309a.getJSONArray(str));
        }
        return e1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long d(String str) throws JSONException {
        long j;
        synchronized (this.f309a) {
            j = this.f309a.getLong(str);
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e(String str) throws JSONException {
        String string;
        synchronized (this.f309a) {
            string = this.f309a.getString(str);
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f(String str) {
        boolean optBoolean;
        synchronized (this.f309a) {
            optBoolean = this.f309a.optBoolean(str);
        }
        return optBoolean;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Boolean g(String str) {
        Boolean valueOf;
        try {
            synchronized (this.f309a) {
                valueOf = Boolean.valueOf(this.f309a.getBoolean(str));
            }
            return valueOf;
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double h(String str) {
        double optDouble;
        synchronized (this.f309a) {
            optDouble = this.f309a.optDouble(str);
        }
        return optDouble;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer i(String str) {
        Integer valueOf;
        try {
            synchronized (this.f309a) {
                valueOf = Integer.valueOf(this.f309a.getInt(str));
            }
            return valueOf;
        } catch (JSONException unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int j(String str) {
        int optInt;
        synchronized (this.f309a) {
            optInt = this.f309a.optInt(str);
        }
        return optInt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e1 k(String str) {
        e1 e1Var;
        synchronized (this.f309a) {
            JSONArray optJSONArray = this.f309a.optJSONArray(str);
            e1Var = optJSONArray != null ? new e1(optJSONArray) : new e1();
        }
        return e1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e1 l(String str) {
        e1 e1Var;
        synchronized (this.f309a) {
            JSONArray optJSONArray = this.f309a.optJSONArray(str);
            e1Var = optJSONArray != null ? new e1(optJSONArray) : null;
        }
        return e1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 m(String str) {
        f1 f1Var;
        synchronized (this.f309a) {
            JSONObject optJSONObject = this.f309a.optJSONObject(str);
            f1Var = optJSONObject != null ? new f1(optJSONObject) : new f1();
        }
        return f1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 n(String str) {
        f1 f1Var;
        synchronized (this.f309a) {
            JSONObject optJSONObject = this.f309a.optJSONObject(str);
            f1Var = optJSONObject != null ? new f1(optJSONObject) : null;
        }
        return f1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object o(String str) {
        Object opt;
        synchronized (this.f309a) {
            opt = this.f309a.isNull(str) ? null : this.f309a.opt(str);
        }
        return opt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String p(String str) {
        String optString;
        synchronized (this.f309a) {
            optString = this.f309a.optString(str);
        }
        return optString;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String q(String str) {
        synchronized (this.f309a) {
            if (!this.f309a.isNull(str)) {
                Object opt = this.f309a.opt(str);
                if (opt instanceof String) {
                    return (String) opt;
                } else if (opt != null) {
                    return String.valueOf(opt);
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r(String str) {
        synchronized (this.f309a) {
            this.f309a.remove(str);
        }
    }

    public String toString() {
        String jSONObject;
        synchronized (this.f309a) {
            jSONObject = this.f309a.toString();
        }
        return jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1(String str) throws JSONException {
        this(new JSONObject(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1(Map<?, ?> map) {
        this(new JSONObject(map));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1(JSONObject jSONObject) throws NullPointerException {
        jSONObject.getClass();
        this.f309a = jSONObject;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 b(String str, boolean z) throws JSONException {
        synchronized (this.f309a) {
            this.f309a.put(str, z);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(String str, int i) throws JSONException {
        synchronized (this.f309a) {
            if (this.f309a.has(str)) {
                return false;
            }
            this.f309a.put(str, i);
            return true;
        }
    }

    int d() {
        return this.f309a.length();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e() {
        synchronized (this.f309a) {
            Iterator<String> c2 = c();
            while (c2.hasNext()) {
                Object o = o(c2.next());
                if (o == null || (((o instanceof JSONArray) && ((JSONArray) o).length() == 0) || (((o instanceof JSONObject) && ((JSONObject) o).length() == 0) || o.equals("")))) {
                    c2.remove();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> f() {
        HashMap hashMap = new HashMap();
        synchronized (this.f309a) {
            Iterator<String> c2 = c();
            while (c2.hasNext()) {
                String next = c2.next();
                hashMap.put(next, p(next));
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 b(String str, int i) throws JSONException {
        synchronized (this.f309a) {
            this.f309a.put(str, i);
        }
        return this;
    }

    private Iterator<String> c() {
        return this.f309a.keys();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 b(String str, long j) throws JSONException {
        synchronized (this.f309a) {
            this.f309a.put(str, j);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 b(String str, double d2) throws JSONException {
        synchronized (this.f309a) {
            this.f309a.put(str, d2);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(String str) {
        boolean z;
        synchronized (this.f309a) {
            Iterator<String> c2 = c();
            while (true) {
                if (!c2.hasNext()) {
                    z = false;
                    break;
                } else if (str.equals(c2.next())) {
                    z = true;
                    break;
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        return d() == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(String str, boolean z) {
        boolean optBoolean;
        synchronized (this.f309a) {
            optBoolean = this.f309a.optBoolean(str, z);
        }
        return optBoolean;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(String str, int i) {
        int optInt;
        synchronized (this.f309a) {
            optInt = this.f309a.optInt(str, i);
        }
        return optInt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long a(String str, long j) {
        long optLong;
        synchronized (this.f309a) {
            optLong = this.f309a.optLong(str, j);
        }
        return optLong;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public double a(String str, double d2) {
        double optDouble;
        synchronized (this.f309a) {
            optDouble = this.f309a.optDouble(str, d2);
        }
        return optDouble;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 a(String str, String str2) throws JSONException {
        synchronized (this.f309a) {
            this.f309a.put(str, str2);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 a(String str, f1 f1Var) throws JSONException {
        synchronized (this.f309a) {
            this.f309a.put(str, f1Var.a());
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 a(String str, e1 e1Var) throws JSONException {
        synchronized (this.f309a) {
            this.f309a.put(str, e1Var.a());
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String[] strArr) {
        synchronized (this.f309a) {
            for (String str : strArr) {
                this.f309a.remove(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(e1 e1Var) {
        synchronized (this.f309a) {
            Iterator<String> c2 = c();
            while (c2.hasNext()) {
                if (!e1Var.a(c2.next())) {
                    c2.remove();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject a() {
        return this.f309a;
    }
}
