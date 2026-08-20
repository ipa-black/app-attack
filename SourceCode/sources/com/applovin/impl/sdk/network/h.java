package com.applovin.impl.sdk.network;

import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import java.util.Collections;
import java.util.Map;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private String f5974a;

    /* renamed from: b  reason: collision with root package name */
    private String f5975b;

    /* renamed from: c  reason: collision with root package name */
    private String f5976c;

    /* renamed from: d  reason: collision with root package name */
    private String f5977d;

    /* renamed from: e  reason: collision with root package name */
    private Map<String, String> f5978e;

    /* renamed from: f  reason: collision with root package name */
    private Map<String, String> f5979f;

    /* renamed from: g  reason: collision with root package name */
    private Map<String, Object> f5980g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f5981h;
    private boolean i;
    private boolean j;
    private String k;
    private int l;

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private String f5982a;

        /* renamed from: b  reason: collision with root package name */
        private String f5983b;

        /* renamed from: c  reason: collision with root package name */
        private String f5984c;

        /* renamed from: d  reason: collision with root package name */
        private String f5985d;

        /* renamed from: e  reason: collision with root package name */
        private Map<String, String> f5986e;

        /* renamed from: f  reason: collision with root package name */
        private Map<String, String> f5987f;

        /* renamed from: g  reason: collision with root package name */
        private Map<String, Object> f5988g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f5989h;
        private boolean i;
        private boolean j;

        public a a(String str) {
            this.f5982a = str;
            return this;
        }

        public a a(Map<String, String> map) {
            this.f5986e = map;
            return this;
        }

        public a a(boolean z) {
            this.f5989h = z;
            return this;
        }

        public h a() {
            return new h(this);
        }

        public a b(String str) {
            this.f5983b = str;
            return this;
        }

        public a b(Map<String, String> map) {
            this.f5987f = map;
            return this;
        }

        public a b(boolean z) {
            this.i = z;
            return this;
        }

        public a c(String str) {
            this.f5984c = str;
            return this;
        }

        public a c(Map<String, Object> map) {
            this.f5988g = map;
            return this;
        }

        public a c(boolean z) {
            this.j = z;
            return this;
        }

        public a d(String str) {
            this.f5985d = str;
            return this;
        }
    }

    private h(a aVar) {
        this.f5974a = UUID.randomUUID().toString();
        this.f5975b = aVar.f5983b;
        this.f5976c = aVar.f5984c;
        this.f5977d = aVar.f5985d;
        this.f5978e = aVar.f5986e;
        this.f5979f = aVar.f5987f;
        this.f5980g = aVar.f5988g;
        this.f5981h = aVar.f5989h;
        this.i = aVar.i;
        this.j = aVar.j;
        this.k = aVar.f5982a;
        this.l = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(JSONObject jSONObject, n nVar) throws Exception {
        String string = JsonUtils.getString(jSONObject, "uniqueId", UUID.randomUUID().toString());
        String string2 = JsonUtils.getString(jSONObject, "communicatorRequestId", "");
        JsonUtils.getString(jSONObject, "httpMethod", "");
        String string3 = jSONObject.getString("targetUrl");
        String string4 = JsonUtils.getString(jSONObject, "backupUrl", "");
        int i = jSONObject.getInt("attemptNumber");
        Map<String, String> synchronizedMap = JsonUtils.valueExists(jSONObject, "parameters") ? Collections.synchronizedMap(JsonUtils.toStringMap(jSONObject.getJSONObject("parameters"))) : CollectionUtils.map();
        Map<String, String> synchronizedMap2 = JsonUtils.valueExists(jSONObject, "httpHeaders") ? Collections.synchronizedMap(JsonUtils.toStringMap(jSONObject.getJSONObject("httpHeaders"))) : CollectionUtils.map();
        Map<String, Object> synchronizedMap3 = JsonUtils.valueExists(jSONObject, "requestBody") ? Collections.synchronizedMap(JsonUtils.toStringObjectMap(jSONObject.getJSONObject("requestBody"))) : CollectionUtils.map();
        this.f5974a = string;
        this.k = string2;
        this.f5976c = string3;
        this.f5977d = string4;
        this.f5978e = synchronizedMap;
        this.f5979f = synchronizedMap2;
        this.f5980g = synchronizedMap3;
        this.f5981h = jSONObject.optBoolean("isEncodingEnabled", false);
        this.i = jSONObject.optBoolean("gzipBodyEncoding", false);
        this.j = jSONObject.optBoolean("shouldFireInWebView", false);
        this.l = i;
    }

    public static a o() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return this.f5975b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return this.f5976c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        return this.f5977d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> d() {
        return this.f5978e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, String> e() {
        return this.f5979f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f5974a.equals(((h) obj).f5974a);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Map<String, Object> f() {
        return this.f5980g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return this.f5981h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean h() {
        return this.i;
    }

    public int hashCode() {
        return this.f5974a.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean i() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String j() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int k() {
        return this.l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        this.l++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m() {
        Map<String, String> map = CollectionUtils.map(this.f5978e);
        map.put("postback_ts", String.valueOf(System.currentTimeMillis()));
        this.f5978e = map;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject n() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("uniqueId", this.f5974a);
        jSONObject.put("communicatorRequestId", this.k);
        jSONObject.put("httpMethod", this.f5975b);
        jSONObject.put("targetUrl", this.f5976c);
        jSONObject.put("backupUrl", this.f5977d);
        jSONObject.put("isEncodingEnabled", this.f5981h);
        jSONObject.put("gzipBodyEncoding", this.i);
        jSONObject.put("attemptNumber", this.l);
        if (this.f5978e != null) {
            jSONObject.put("parameters", new JSONObject(this.f5978e));
        }
        if (this.f5979f != null) {
            jSONObject.put("httpHeaders", new JSONObject(this.f5979f));
        }
        if (this.f5980g != null) {
            jSONObject.put("requestBody", new JSONObject(this.f5980g));
        }
        return jSONObject;
    }

    public String toString() {
        return "PostbackRequest{uniqueId='" + this.f5974a + "', communicatorRequestId='" + this.k + "', httpMethod='" + this.f5975b + "', targetUrl='" + this.f5976c + "', backupUrl='" + this.f5977d + "', attemptNumber=" + this.l + ", isEncodingEnabled=" + this.f5981h + ", isGzipBodyEncoding=" + this.i + '}';
    }
}
