package com.applovin.impl.sdk.ad;

import android.text.TextUtils;
import android.util.Base64;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.v;
import com.google.android.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final n f5502a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5503b;

    /* loaded from: classes.dex */
    public enum a {
        UNSPECIFIED("UNSPECIFIED"),
        REGULAR("REGULAR"),
        AD_RESPONSE_JSON("AD_RESPONSE_JSON");
        

        /* renamed from: d  reason: collision with root package name */
        private final String f5508d;

        a(String str) {
            this.f5508d = str;
        }

        @Override // java.lang.Enum
        public String toString() {
            return this.f5508d;
        }
    }

    public c(String str, n nVar) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Identifier is empty");
        }
        if (nVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        }
        this.f5503b = str;
        this.f5502a = nVar;
    }

    private String a(com.applovin.impl.sdk.c.b<String> bVar) {
        for (String str : this.f5502a.b(bVar)) {
            if (this.f5503b.startsWith(str)) {
                return str;
            }
        }
        return null;
    }

    public String a() {
        return this.f5503b;
    }

    public a b() {
        return a(com.applovin.impl.sdk.c.b.bj) != null ? a.REGULAR : a(com.applovin.impl.sdk.c.b.bk) != null ? a.AD_RESPONSE_JSON : a.UNSPECIFIED;
    }

    public String c() {
        String a2 = a(com.applovin.impl.sdk.c.b.bj);
        if (TextUtils.isEmpty(a2)) {
            String a3 = a(com.applovin.impl.sdk.c.b.bk);
            if (TextUtils.isEmpty(a3)) {
                return null;
            }
            return a3;
        }
        return a2;
    }

    public JSONObject d() {
        if (b() == a.AD_RESPONSE_JSON) {
            try {
                try {
                    JSONObject jSONObject = new JSONObject(new String(Base64.decode(this.f5503b.substring(c().length()), 0), C.UTF8_NAME));
                    this.f5502a.D();
                    if (v.a()) {
                        this.f5502a.D().b("AdToken", "Decoded token into ad response: " + jSONObject);
                    }
                    return jSONObject;
                } catch (JSONException e2) {
                    this.f5502a.D();
                    if (v.a()) {
                        this.f5502a.D().b("AdToken", "Unable to decode token '" + this.f5503b + "' into JSON", e2);
                        return null;
                    }
                    return null;
                }
            } catch (UnsupportedEncodingException e3) {
                this.f5502a.D();
                if (v.a()) {
                    this.f5502a.D().b("AdToken", "Unable to process ad response from token '" + this.f5503b + "'", e3);
                    return null;
                }
                return null;
            }
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            String str = this.f5503b;
            String str2 = ((c) obj).f5503b;
            return str != null ? str.equals(str2) : str2 == null;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f5503b;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return "AdToken{id=" + StringUtils.prefixToIndex(32, this.f5503b) + ", type=" + b() + '}';
    }
}
