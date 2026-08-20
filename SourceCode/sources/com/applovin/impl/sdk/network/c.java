package com.applovin.impl.sdk.network;

import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import java.util.Arrays;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c<T> {

    /* renamed from: a  reason: collision with root package name */
    private String f5908a;

    /* renamed from: b  reason: collision with root package name */
    private String f5909b;

    /* renamed from: c  reason: collision with root package name */
    private Map<String, String> f5910c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, String> f5911d;

    /* renamed from: e  reason: collision with root package name */
    private final JSONObject f5912e;

    /* renamed from: f  reason: collision with root package name */
    private String f5913f;

    /* renamed from: g  reason: collision with root package name */
    private final T f5914g;

    /* renamed from: h  reason: collision with root package name */
    private final int f5915h;
    private int i;
    private final int j;
    private final int k;
    private final boolean l;
    private final boolean m;
    private final boolean n;
    private final boolean o;

    /* loaded from: classes.dex */
    public static class a<T> {

        /* renamed from: a  reason: collision with root package name */
        String f5916a;

        /* renamed from: b  reason: collision with root package name */
        String f5917b;

        /* renamed from: c  reason: collision with root package name */
        String f5918c;

        /* renamed from: e  reason: collision with root package name */
        Map<String, String> f5920e;

        /* renamed from: f  reason: collision with root package name */
        JSONObject f5921f;

        /* renamed from: g  reason: collision with root package name */
        T f5922g;
        int i;
        int j;
        boolean k;
        boolean l;
        boolean m;
        boolean n;

        /* renamed from: h  reason: collision with root package name */
        int f5923h = 1;

        /* renamed from: d  reason: collision with root package name */
        Map<String, String> f5919d = CollectionUtils.map();

        public a(n nVar) {
            this.i = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.cV)).intValue();
            this.j = ((Integer) nVar.a(com.applovin.impl.sdk.c.b.cU)).intValue();
            this.l = ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.cT)).booleanValue();
            this.m = ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.eA)).booleanValue();
            this.n = ((Boolean) nVar.a(com.applovin.impl.sdk.c.b.eF)).booleanValue();
        }

        public a<T> a(int i) {
            this.f5923h = i;
            return this;
        }

        public a<T> a(T t) {
            this.f5922g = t;
            return this;
        }

        public a<T> a(String str) {
            this.f5917b = str;
            return this;
        }

        public a<T> a(Map<String, String> map) {
            this.f5919d = map;
            return this;
        }

        public a<T> a(JSONObject jSONObject) {
            this.f5921f = jSONObject;
            return this;
        }

        public a<T> a(boolean z) {
            this.k = z;
            return this;
        }

        public c<T> a() {
            return new c<>(this);
        }

        public a<T> b(int i) {
            this.i = i;
            return this;
        }

        public a<T> b(String str) {
            this.f5916a = str;
            return this;
        }

        public a<T> b(Map<String, String> map) {
            this.f5920e = map;
            return this;
        }

        public a<T> b(boolean z) {
            this.l = z;
            return this;
        }

        public a<T> c(int i) {
            this.j = i;
            return this;
        }

        public a<T> c(String str) {
            this.f5918c = str;
            return this;
        }

        public a<T> c(boolean z) {
            this.m = z;
            return this;
        }

        public a<T> d(boolean z) {
            this.n = z;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(a<T> aVar) {
        this.f5908a = aVar.f5917b;
        this.f5909b = aVar.f5916a;
        this.f5910c = aVar.f5919d;
        this.f5911d = aVar.f5920e;
        this.f5912e = aVar.f5921f;
        this.f5913f = aVar.f5918c;
        this.f5914g = aVar.f5922g;
        this.f5915h = aVar.f5923h;
        this.i = aVar.f5923h;
        this.j = aVar.i;
        this.k = aVar.j;
        this.l = aVar.k;
        this.m = aVar.l;
        this.n = aVar.m;
        this.o = aVar.n;
    }

    public static <T> a<T> a(n nVar) {
        return new a<>(nVar);
    }

    public String a() {
        return this.f5908a;
    }

    public void a(int i) {
        this.i = i;
    }

    public void a(String str) {
        this.f5908a = str;
    }

    public String b() {
        return this.f5909b;
    }

    public void b(String str) {
        this.f5909b = str;
    }

    public Map<String, String> c() {
        return this.f5910c;
    }

    public Map<String, String> d() {
        return this.f5911d;
    }

    public JSONObject e() {
        return this.f5912e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            c cVar = (c) obj;
            String str = this.f5908a;
            if (str == null ? cVar.f5908a == null : str.equals(cVar.f5908a)) {
                Map<String, String> map = this.f5910c;
                if (map == null ? cVar.f5910c == null : map.equals(cVar.f5910c)) {
                    Map<String, String> map2 = this.f5911d;
                    if (map2 == null ? cVar.f5911d == null : map2.equals(cVar.f5911d)) {
                        String str2 = this.f5913f;
                        if (str2 == null ? cVar.f5913f == null : str2.equals(cVar.f5913f)) {
                            String str3 = this.f5909b;
                            if (str3 == null ? cVar.f5909b == null : str3.equals(cVar.f5909b)) {
                                JSONObject jSONObject = this.f5912e;
                                if (jSONObject == null ? cVar.f5912e == null : jSONObject.equals(cVar.f5912e)) {
                                    T t = this.f5914g;
                                    if (t == null ? cVar.f5914g == null : t.equals(cVar.f5914g)) {
                                        return this.f5915h == cVar.f5915h && this.i == cVar.i && this.j == cVar.j && this.k == cVar.k && this.l == cVar.l && this.m == cVar.m && this.n == cVar.n && this.o == cVar.o;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public String f() {
        return this.f5913f;
    }

    public T g() {
        return this.f5914g;
    }

    public int h() {
        return this.i;
    }

    public int hashCode() {
        int hashCode = super.hashCode() * 31;
        String str = this.f5908a;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f5913f;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f5909b;
        int hashCode4 = (hashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31;
        T t = this.f5914g;
        int hashCode5 = ((((((((((((((((hashCode4 + (t != null ? t.hashCode() : 0)) * 31) + this.f5915h) * 31) + this.i) * 31) + this.j) * 31) + this.k) * 31) + (this.l ? 1 : 0)) * 31) + (this.m ? 1 : 0)) * 31) + (this.n ? 1 : 0)) * 31) + (this.o ? 1 : 0);
        Map<String, String> map = this.f5910c;
        if (map != null) {
            hashCode5 = (hashCode5 * 31) + map.hashCode();
        }
        Map<String, String> map2 = this.f5911d;
        if (map2 != null) {
            hashCode5 = (hashCode5 * 31) + map2.hashCode();
        }
        JSONObject jSONObject = this.f5912e;
        if (jSONObject != null) {
            char[] charArray = jSONObject.toString().toCharArray();
            Arrays.sort(charArray);
            return (hashCode5 * 31) + new String(charArray).hashCode();
        }
        return hashCode5;
    }

    public int i() {
        return this.f5915h - this.i;
    }

    public int j() {
        return this.j;
    }

    public int k() {
        return this.k;
    }

    public boolean l() {
        return this.l;
    }

    public boolean m() {
        return this.m;
    }

    public boolean n() {
        return this.n;
    }

    public boolean o() {
        return this.o;
    }

    public String toString() {
        return "HttpRequest {endpoint=" + this.f5908a + ", backupEndpoint=" + this.f5913f + ", httpMethod=" + this.f5909b + ", httpHeaders=" + this.f5911d + ", body=" + this.f5912e + ", emptyResponse=" + this.f5914g + ", initialRetryAttempts=" + this.f5915h + ", retryAttemptsLeft=" + this.i + ", timeoutMillis=" + this.j + ", retryDelayMillis=" + this.k + ", exponentialRetries=" + this.l + ", retryOnAllErrors=" + this.m + ", encodingEnabled=" + this.n + ", gzipBodyEncoding=" + this.o + '}';
    }
}
