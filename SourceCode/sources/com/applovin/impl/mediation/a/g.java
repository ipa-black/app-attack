package com.applovin.impl.mediation.a;
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private final h f4708a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4709b;

    /* renamed from: c  reason: collision with root package name */
    private final String f4710c;

    /* renamed from: d  reason: collision with root package name */
    private final String f4711d;

    /* renamed from: e  reason: collision with root package name */
    private final String f4712e;

    /* loaded from: classes.dex */
    public interface a {
        void a(g gVar);
    }

    private g(h hVar, com.applovin.impl.mediation.g gVar, String str, String str2) {
        String str3;
        this.f4708a = hVar;
        this.f4711d = str;
        this.f4712e = str2;
        if (gVar != null) {
            this.f4709b = gVar.h();
            str3 = gVar.i();
        } else {
            str3 = null;
            this.f4709b = null;
        }
        this.f4710c = str3;
    }

    public static g a(h hVar, com.applovin.impl.mediation.g gVar, String str) {
        if (hVar != null) {
            if (gVar != null) {
                return new g(hVar, gVar, str, null);
            }
            throw new IllegalArgumentException("No adapterWrapper specified");
        }
        throw new IllegalArgumentException("No spec specified");
    }

    public static g a(h hVar, String str) {
        return b(hVar, null, str);
    }

    public static g b(h hVar, com.applovin.impl.mediation.g gVar, String str) {
        if (hVar != null) {
            return new g(hVar, gVar, null, str);
        }
        throw new IllegalArgumentException("No spec specified");
    }

    public h a() {
        return this.f4708a;
    }

    public String b() {
        return this.f4709b;
    }

    public String c() {
        return this.f4710c;
    }

    public String d() {
        return this.f4711d;
    }

    public String e() {
        return this.f4712e;
    }

    public String toString() {
        StringBuilder append = new StringBuilder("SignalCollectionResult{mSignalProviderSpec=").append(this.f4708a).append(", mSdkVersion='").append(this.f4709b).append("', mAdapterVersion='").append(this.f4710c).append("', mSignalDataLength='");
        String str = this.f4711d;
        return append.append(str != null ? str.length() : 0).append("', mErrorMessage=").append(this.f4712e).append('}').toString();
    }
}
