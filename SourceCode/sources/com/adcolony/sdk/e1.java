package com.adcolony.sdk;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class e1 {

    /* renamed from: a  reason: collision with root package name */
    private final JSONArray f301a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e1() {
        this(new JSONArray());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object a(int i) throws JSONException {
        return this.f301a.get(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(int i) throws JSONException {
        return this.f301a.getInt(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 c(int i) {
        f1 f1Var;
        synchronized (this.f301a) {
            JSONObject optJSONObject = this.f301a.optJSONObject(i);
            f1Var = optJSONObject != null ? new f1(optJSONObject) : new f1();
        }
        return f1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String d(int i) {
        String optString;
        synchronized (this.f301a) {
            optString = this.f301a.optString(i);
        }
        return optString;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e(int i) {
        synchronized (this.f301a) {
            if (!this.f301a.isNull(i)) {
                Object opt = this.f301a.opt(i);
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
    public e1 f(int i) {
        synchronized (this.f301a) {
            this.f301a.put(i);
        }
        return this;
    }

    public String toString() {
        String jSONArray;
        synchronized (this.f301a) {
            jSONArray = this.f301a.toString();
        }
        return jSONArray;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e1(String str) throws JSONException {
        this(new JSONArray(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e1 a(f1 f1Var) {
        synchronized (this.f301a) {
            this.f301a.put(f1Var.a());
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e1 b(String str) {
        synchronized (this.f301a) {
            this.f301a.put(str);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e1(JSONArray jSONArray) throws NullPointerException {
        jSONArray.getClass();
        this.f301a = jSONArray;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String[] d() {
        String[] strArr;
        synchronized (this.f301a) {
            strArr = new String[this.f301a.length()];
            for (int i = 0; i < this.f301a.length(); i++) {
                strArr[i] = d(i);
            }
        }
        return strArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(String str) {
        boolean z;
        synchronized (this.f301a) {
            z = false;
            int i = 0;
            while (true) {
                if (i >= this.f301a.length()) {
                    break;
                } else if (d(i).equals(str)) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b() {
        return this.f301a.length();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1[] c() {
        f1[] f1VarArr;
        synchronized (this.f301a) {
            f1VarArr = new f1[this.f301a.length()];
            for (int i = 0; i < this.f301a.length(); i++) {
                f1VarArr[i] = c(i);
            }
        }
        return f1VarArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONArray a() {
        return this.f301a;
    }
}
