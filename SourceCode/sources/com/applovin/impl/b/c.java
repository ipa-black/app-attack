package com.applovin.impl.b;

import com.applovin.impl.sdk.utils.s;
import com.applovin.impl.sdk.v;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final List<b> f4530a;

    private c(List<b> list) {
        this.f4530a = list;
    }

    public static c a(s sVar, c cVar, e eVar, com.applovin.impl.sdk.n nVar) {
        try {
            List<b> a2 = cVar != null ? cVar.a() : new ArrayList<>();
            for (s sVar2 : sVar.a("Verification")) {
                b a3 = b.a(sVar2, eVar, nVar);
                if (a3 != null) {
                    a2.add(a3);
                }
            }
            return new c(a2);
        } catch (Throwable th) {
            nVar.D();
            if (v.a()) {
                nVar.D().b("VastAdVerifications", "Error occurred while initializing", th);
                return null;
            }
            return null;
        }
    }

    public List<b> a() {
        return this.f4530a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            return this.f4530a.equals(((c) obj).f4530a);
        }
        return false;
    }

    public int hashCode() {
        return this.f4530a.hashCode();
    }

    public String toString() {
        return "VastAdVerification{verifications='" + this.f4530a + "'}";
    }
}
