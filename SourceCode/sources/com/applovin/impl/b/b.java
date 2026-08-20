package com.applovin.impl.b;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.s;
import com.applovin.impl.sdk.v;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f4526a;

    /* renamed from: b  reason: collision with root package name */
    private final List<h> f4527b;

    /* renamed from: c  reason: collision with root package name */
    private final String f4528c;

    /* renamed from: d  reason: collision with root package name */
    private final Set<k> f4529d;

    private b(String str, List<h> list, String str2, Set<k> set) {
        this.f4526a = str;
        this.f4527b = list;
        this.f4528c = str2;
        this.f4529d = set;
    }

    public static b a(s sVar, e eVar, com.applovin.impl.sdk.n nVar) {
        try {
            String str = sVar.b().get("vendor");
            s c2 = sVar.c("VerificationParameters");
            String c3 = c2 != null ? c2.c() : null;
            List<s> a2 = sVar.a("JavaScriptResource");
            ArrayList arrayList = new ArrayList(a2.size());
            for (s sVar2 : a2) {
                h a3 = h.a(sVar2, nVar);
                if (a3 != null) {
                    arrayList.add(a3);
                }
            }
            Map map = CollectionUtils.map();
            m.a(sVar, map, eVar, nVar);
            return new b(str, arrayList, c3, (Set) map.get("verificationNotExecuted"));
        } catch (Throwable th) {
            nVar.D();
            if (v.a()) {
                nVar.D().b("VastAdVerification", "Error occurred while initializing", th);
            }
            return null;
        }
    }

    public String a() {
        return this.f4526a;
    }

    public List<h> b() {
        return this.f4527b;
    }

    public String c() {
        return this.f4528c;
    }

    public Set<k> d() {
        return this.f4529d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        String str = this.f4526a;
        if (str == null ? bVar.f4526a == null : str.equals(bVar.f4526a)) {
            List<h> list = this.f4527b;
            if (list == null ? bVar.f4527b == null : list.equals(bVar.f4527b)) {
                String str2 = this.f4528c;
                if (str2 == null ? bVar.f4528c == null : str2.equals(bVar.f4528c)) {
                    Set<k> set = this.f4529d;
                    Set<k> set2 = bVar.f4529d;
                    return set != null ? set.equals(set2) : set2 == null;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f4526a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        List<h> list = this.f4527b;
        int hashCode2 = (hashCode + (list != null ? list.hashCode() : 0)) * 31;
        String str2 = this.f4528c;
        int hashCode3 = (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31;
        Set<k> set = this.f4529d;
        return hashCode3 + (set != null ? set.hashCode() : 0);
    }

    public String toString() {
        return "VastAdVerification{vendorId='" + this.f4526a + "'javascriptResources='" + this.f4527b + "'verificationParameters='" + this.f4528c + "'errorEventTrackers='" + this.f4529d + "'}";
    }
}
