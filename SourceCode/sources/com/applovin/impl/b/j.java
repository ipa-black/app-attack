package com.applovin.impl.b;

import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.s;
import com.applovin.impl.sdk.v;
import com.unity3d.ads.metadata.MediationMetaData;
/* loaded from: classes.dex */
public class j {

    /* renamed from: a  reason: collision with root package name */
    private String f4568a;

    /* renamed from: b  reason: collision with root package name */
    private String f4569b;

    private j() {
    }

    public static j a(s sVar, j jVar, com.applovin.impl.sdk.n nVar) {
        if (sVar != null) {
            if (nVar != null) {
                if (jVar == null) {
                    try {
                        jVar = new j();
                    } catch (Throwable th) {
                        nVar.D();
                        if (v.a()) {
                            nVar.D().b("VastSystemInfo", "Error occurred while initializing", th);
                            return null;
                        }
                        return null;
                    }
                }
                if (!StringUtils.isValidString(jVar.f4568a)) {
                    String c2 = sVar.c();
                    if (StringUtils.isValidString(c2)) {
                        jVar.f4568a = c2;
                    }
                }
                if (!StringUtils.isValidString(jVar.f4569b)) {
                    String str = sVar.b().get(MediationMetaData.KEY_VERSION);
                    if (StringUtils.isValidString(str)) {
                        jVar.f4569b = str;
                    }
                }
                return jVar;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof j) {
            j jVar = (j) obj;
            String str = this.f4568a;
            if (str == null ? jVar.f4568a == null : str.equals(jVar.f4568a)) {
                String str2 = this.f4569b;
                String str3 = jVar.f4569b;
                return str2 != null ? str2.equals(str3) : str3 == null;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f4568a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f4569b;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "VastSystemInfo{name='" + this.f4568a + "', version='" + this.f4569b + "'}";
    }
}
