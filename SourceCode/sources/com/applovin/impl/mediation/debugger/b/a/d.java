package com.applovin.impl.mediation.debugger.b.a;
/* loaded from: classes.dex */
public class d implements Comparable<d> {

    /* renamed from: a  reason: collision with root package name */
    private final String f4943a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4944b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f4945c;

    /* renamed from: d  reason: collision with root package name */
    private final com.applovin.impl.mediation.debugger.b.c.b f4946d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(String str, String str2, boolean z, com.applovin.impl.mediation.debugger.b.c.b bVar) {
        this.f4943a = str;
        this.f4944b = str2;
        this.f4945c = z;
        this.f4946d = bVar;
    }

    @Override // java.lang.Comparable
    /* renamed from: a */
    public int compareTo(d dVar) {
        return this.f4944b.compareToIgnoreCase(dVar.f4944b);
    }

    public String a() {
        return this.f4943a;
    }

    public String b() {
        return this.f4944b;
    }

    public com.applovin.impl.mediation.debugger.b.c.b c() {
        return this.f4946d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        String str = this.f4943a;
        if (str == null ? dVar.f4943a == null : str.equals(dVar.f4943a)) {
            String str2 = this.f4944b;
            if (str2 == null ? dVar.f4944b == null : str2.equals(dVar.f4944b)) {
                return this.f4945c == dVar.f4945c;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f4943a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f4944b;
        return ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + (this.f4945c ? 1 : 0);
    }
}
