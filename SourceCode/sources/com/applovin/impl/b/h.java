package com.applovin.impl.b;

import com.applovin.impl.sdk.utils.s;
import com.applovin.impl.sdk.v;
/* loaded from: classes.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private final String f4558a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4559b;

    private h(String str, String str2) {
        this.f4558a = str;
        this.f4559b = str2;
    }

    public static h a(s sVar, com.applovin.impl.sdk.n nVar) {
        if (sVar != null) {
            if (nVar != null) {
                try {
                    return new h(sVar.b().get("apiFramework"), sVar.c());
                } catch (Throwable th) {
                    nVar.D();
                    if (v.a()) {
                        nVar.D().b("VastJavaScriptResource", "Error occurred while initializing", th);
                        return null;
                    }
                    return null;
                }
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public String a() {
        return this.f4558a;
    }

    public String b() {
        return this.f4559b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        String str = this.f4558a;
        if (str == null ? hVar.f4558a == null : str.equals(hVar.f4558a)) {
            String str2 = this.f4559b;
            String str3 = hVar.f4559b;
            return str2 != null ? str2.equals(str3) : str3 == null;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f4558a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f4559b;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "VastJavaScriptResource{apiFramework='" + this.f4558a + "', javascriptResourceUrl='" + this.f4559b + "'}";
    }
}
