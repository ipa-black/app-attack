package com.criteo.publisher.model;

import com.criteo.publisher.logging.RemoteLogRecords;
import com.google.gson.annotations.SerializedName;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: $AutoValue_RemoteConfigResponse.java */
/* loaded from: classes2.dex */
public abstract class e extends y {

    /* renamed from: a  reason: collision with root package name */
    private final Boolean f9104a;

    /* renamed from: b  reason: collision with root package name */
    private final String f9105b;

    /* renamed from: c  reason: collision with root package name */
    private final String f9106c;

    /* renamed from: d  reason: collision with root package name */
    private final String f9107d;

    /* renamed from: e  reason: collision with root package name */
    private final String f9108e;

    /* renamed from: f  reason: collision with root package name */
    private final Boolean f9109f;

    /* renamed from: g  reason: collision with root package name */
    private final Boolean f9110g;

    /* renamed from: h  reason: collision with root package name */
    private final Integer f9111h;
    private final Boolean i;
    private final RemoteLogRecords.RemoteLogLevel j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Boolean bool, String str, String str2, String str3, String str4, Boolean bool2, Boolean bool3, Integer num, Boolean bool4, RemoteLogRecords.RemoteLogLevel remoteLogLevel) {
        this.f9104a = bool;
        this.f9105b = str;
        this.f9106c = str2;
        this.f9107d = str3;
        this.f9108e = str4;
        this.f9109f = bool2;
        this.f9110g = bool3;
        this.f9111h = num;
        this.i = bool4;
        this.j = remoteLogLevel;
    }

    @Override // com.criteo.publisher.model.y
    public Boolean g() {
        return this.f9104a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.y
    @SerializedName("AndroidDisplayUrlMacro")
    public String e() {
        return this.f9105b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.y
    @SerializedName("AndroidAdTagUrlMode")
    public String d() {
        return this.f9106c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.y
    @SerializedName("AndroidAdTagDataMacro")
    public String b() {
        return this.f9107d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.y
    @SerializedName("AndroidAdTagDataMode")
    public String c() {
        return this.f9108e;
    }

    @Override // com.criteo.publisher.model.y
    public Boolean f() {
        return this.f9109f;
    }

    @Override // com.criteo.publisher.model.y
    public Boolean h() {
        return this.f9110g;
    }

    @Override // com.criteo.publisher.model.y
    public Integer i() {
        return this.f9111h;
    }

    @Override // com.criteo.publisher.model.y
    public Boolean j() {
        return this.i;
    }

    @Override // com.criteo.publisher.model.y
    public RemoteLogRecords.RemoteLogLevel k() {
        return this.j;
    }

    public String toString() {
        return "RemoteConfigResponse{killSwitch=" + this.f9104a + ", androidDisplayUrlMacro=" + this.f9105b + ", androidAdTagUrlMode=" + this.f9106c + ", androidAdTagDataMacro=" + this.f9107d + ", androidAdTagDataMode=" + this.f9108e + ", csmEnabled=" + this.f9109f + ", liveBiddingEnabled=" + this.f9110g + ", liveBiddingTimeBudgetInMillis=" + this.f9111h + ", prefetchOnInitEnabled=" + this.i + ", remoteLogLevel=" + this.j + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof y) {
            y yVar = (y) obj;
            Boolean bool = this.f9104a;
            if (bool != null ? bool.equals(yVar.g()) : yVar.g() == null) {
                String str = this.f9105b;
                if (str != null ? str.equals(yVar.e()) : yVar.e() == null) {
                    String str2 = this.f9106c;
                    if (str2 != null ? str2.equals(yVar.d()) : yVar.d() == null) {
                        String str3 = this.f9107d;
                        if (str3 != null ? str3.equals(yVar.b()) : yVar.b() == null) {
                            String str4 = this.f9108e;
                            if (str4 != null ? str4.equals(yVar.c()) : yVar.c() == null) {
                                Boolean bool2 = this.f9109f;
                                if (bool2 != null ? bool2.equals(yVar.f()) : yVar.f() == null) {
                                    Boolean bool3 = this.f9110g;
                                    if (bool3 != null ? bool3.equals(yVar.h()) : yVar.h() == null) {
                                        Integer num = this.f9111h;
                                        if (num != null ? num.equals(yVar.i()) : yVar.i() == null) {
                                            Boolean bool4 = this.i;
                                            if (bool4 != null ? bool4.equals(yVar.j()) : yVar.j() == null) {
                                                RemoteLogRecords.RemoteLogLevel remoteLogLevel = this.j;
                                                if (remoteLogLevel == null) {
                                                    if (yVar.k() == null) {
                                                        return true;
                                                    }
                                                } else if (remoteLogLevel.equals(yVar.k())) {
                                                    return true;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        Boolean bool = this.f9104a;
        int hashCode = ((bool == null ? 0 : bool.hashCode()) ^ 1000003) * 1000003;
        String str = this.f9105b;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f9106c;
        int hashCode3 = (hashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f9107d;
        int hashCode4 = (hashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f9108e;
        int hashCode5 = (hashCode4 ^ (str4 == null ? 0 : str4.hashCode())) * 1000003;
        Boolean bool2 = this.f9109f;
        int hashCode6 = (hashCode5 ^ (bool2 == null ? 0 : bool2.hashCode())) * 1000003;
        Boolean bool3 = this.f9110g;
        int hashCode7 = (hashCode6 ^ (bool3 == null ? 0 : bool3.hashCode())) * 1000003;
        Integer num = this.f9111h;
        int hashCode8 = (hashCode7 ^ (num == null ? 0 : num.hashCode())) * 1000003;
        Boolean bool4 = this.i;
        int hashCode9 = (hashCode8 ^ (bool4 == null ? 0 : bool4.hashCode())) * 1000003;
        RemoteLogRecords.RemoteLogLevel remoteLogLevel = this.j;
        return hashCode9 ^ (remoteLogLevel != null ? remoteLogLevel.hashCode() : 0);
    }
}
