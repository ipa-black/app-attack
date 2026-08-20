package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Tl;
/* loaded from: classes5.dex */
public class Ig {

    /* renamed from: a  reason: collision with root package name */
    public final String f13194a;

    /* renamed from: b  reason: collision with root package name */
    public final String f13195b;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public final String f13196c;

    /* renamed from: d  reason: collision with root package name */
    public final String f13197d;

    /* renamed from: e  reason: collision with root package name */
    public final String f13198e;

    /* renamed from: f  reason: collision with root package name */
    public final String f13199f;

    /* renamed from: g  reason: collision with root package name */
    public final String f13200g;

    /* renamed from: h  reason: collision with root package name */
    public final String f13201h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;

    public Ig(Tl.a aVar) {
        this.f13194a = aVar.c("dId");
        this.f13195b = aVar.c("uId");
        this.f13196c = aVar.b("kitVer");
        this.f13197d = aVar.c("analyticsSdkVersionName");
        this.f13198e = aVar.c("kitBuildNumber");
        this.f13199f = aVar.c("kitBuildType");
        this.f13200g = aVar.c("appVer");
        this.f13201h = aVar.optString("app_debuggable", "0");
        this.i = aVar.c("appBuild");
        this.j = aVar.c("osVer");
        this.l = aVar.c("lang");
        this.m = aVar.c("root");
        this.p = aVar.c("commit_hash");
        this.n = aVar.optString("app_framework", C1575h2.a());
        int optInt = aVar.optInt("osApiLev", -1);
        this.k = optInt == -1 ? null : String.valueOf(optInt);
        int optInt2 = aVar.optInt("attribution_id", 0);
        this.o = optInt2 > 0 ? String.valueOf(optInt2) : null;
    }

    public String toString() {
        return "DbNetworkTaskConfig{deviceId='" + this.f13194a + "', uuid='" + this.f13195b + "', kitVersion='" + this.f13196c + "', analyticsSdkVersionName='" + this.f13197d + "', kitBuildNumber='" + this.f13198e + "', kitBuildType='" + this.f13199f + "', appVersion='" + this.f13200g + "', appDebuggable='" + this.f13201h + "', appBuildNumber='" + this.i + "', osVersion='" + this.j + "', osApiLevel='" + this.k + "', locale='" + this.l + "', deviceRootStatus='" + this.m + "', appFramework='" + this.n + "', attributionId='" + this.o + "', commitHash='" + this.p + "'}";
    }

    public Ig() {
        this.f13194a = null;
        this.f13195b = null;
        this.f13196c = null;
        this.f13197d = null;
        this.f13198e = null;
        this.f13199f = null;
        this.f13200g = null;
        this.f13201h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
    }
}
