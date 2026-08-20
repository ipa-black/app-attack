package com.appodeal.ads.networking.binders;

import com.amazon.aps.shared.APSAnalytics;
import com.appodeal.ads.h0;
import com.appodeal.ads.modules.common.internal.service.ServiceData;
import com.appodeal.ads.modules.common.internal.service.ServiceInfo;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public interface b {

    /* loaded from: classes2.dex */
    public static final class a implements b {

        /* renamed from: a  reason: collision with root package name */
        public final String f7146a;

        /* renamed from: b  reason: collision with root package name */
        public final Boolean f7147b;

        /* renamed from: c  reason: collision with root package name */
        public final Boolean f7148c;

        /* renamed from: d  reason: collision with root package name */
        public final String f7149d;

        /* renamed from: e  reason: collision with root package name */
        public final long f7150e;

        /* renamed from: f  reason: collision with root package name */
        public final Long f7151f;

        /* renamed from: g  reason: collision with root package name */
        public final Long f7152g;

        /* renamed from: h  reason: collision with root package name */
        public final Long f7153h;
        public final String i;
        public final InterfaceC0131a j;

        /* renamed from: com.appodeal.ads.networking.binders.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public interface InterfaceC0131a {

            /* renamed from: com.appodeal.ads.networking.binders.b$a$a$a  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public static final class C0132a implements InterfaceC0131a {

                /* renamed from: a  reason: collision with root package name */
                public final String f7154a;

                /* renamed from: b  reason: collision with root package name */
                public final int f7155b;

                /* renamed from: c  reason: collision with root package name */
                public final boolean f7156c;

                /* renamed from: d  reason: collision with root package name */
                public final boolean f7157d;

                public C0132a(String type, int i, boolean z, boolean z2) {
                    Intrinsics.checkNotNullParameter(type, "type");
                    this.f7154a = type;
                    this.f7155b = i;
                    this.f7156c = z;
                    this.f7157d = z2;
                }

                public final boolean a() {
                    return this.f7156c;
                }

                public final int b() {
                    return this.f7155b;
                }

                public final boolean c() {
                    return this.f7157d;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    if (obj instanceof C0132a) {
                        C0132a c0132a = (C0132a) obj;
                        return Intrinsics.areEqual(this.f7154a, c0132a.f7154a) && this.f7155b == c0132a.f7155b && this.f7156c == c0132a.f7156c && this.f7157d == c0132a.f7157d;
                    }
                    return false;
                }

                @Override // com.appodeal.ads.networking.binders.b.a.InterfaceC0131a
                public final String getType() {
                    return this.f7154a;
                }

                /* JADX WARN: Multi-variable type inference failed */
                public final int hashCode() {
                    int hashCode = (Integer.hashCode(this.f7155b) + (this.f7154a.hashCode() * 31)) * 31;
                    boolean z = this.f7156c;
                    int i = z;
                    if (z != 0) {
                        i = 1;
                    }
                    int i2 = (hashCode + i) * 31;
                    boolean z2 = this.f7157d;
                    return i2 + (z2 ? 1 : z2 ? 1 : 0);
                }

                public final String toString() {
                    return h0.a("Banner(type=").append(this.f7154a).append(", size=").append(this.f7155b).append(", animation=").append(this.f7156c).append(", smart=").append(this.f7157d).append(')').toString();
                }
            }

            /* renamed from: com.appodeal.ads.networking.binders.b$a$a$b  reason: collision with other inner class name */
            /* loaded from: classes2.dex */
            public static final class C0133b implements InterfaceC0131a {

                /* renamed from: a  reason: collision with root package name */
                public static final C0133b f7158a = new C0133b();

                @Override // com.appodeal.ads.networking.binders.b.a.InterfaceC0131a
                public final String getType() {
                    return "banner";
                }
            }

            /* renamed from: com.appodeal.ads.networking.binders.b$a$a$c */
            /* loaded from: classes2.dex */
            public static final class c implements InterfaceC0131a {

                /* renamed from: a  reason: collision with root package name */
                public static final c f7159a = new c();

                @Override // com.appodeal.ads.networking.binders.b.a.InterfaceC0131a
                public final String getType() {
                    return "bannerview";
                }
            }

            /* renamed from: com.appodeal.ads.networking.binders.b$a$a$d */
            /* loaded from: classes2.dex */
            public static final class d implements InterfaceC0131a {

                /* renamed from: a  reason: collision with root package name */
                public final String f7160a;

                public d(String type) {
                    Intrinsics.checkNotNullParameter(type, "type");
                    this.f7160a = type;
                }

                public final boolean equals(Object obj) {
                    if (this == obj) {
                        return true;
                    }
                    return (obj instanceof d) && Intrinsics.areEqual(this.f7160a, ((d) obj).f7160a);
                }

                @Override // com.appodeal.ads.networking.binders.b.a.InterfaceC0131a
                public final String getType() {
                    return this.f7160a;
                }

                public final int hashCode() {
                    return this.f7160a.hashCode();
                }

                public final String toString() {
                    return h0.a("Native(type=").append(this.f7160a).append(')').toString();
                }
            }

            /* renamed from: com.appodeal.ads.networking.binders.b$a$a$e */
            /* loaded from: classes2.dex */
            public static final class e implements InterfaceC0131a {

                /* renamed from: a  reason: collision with root package name */
                public static final e f7161a = new e();

                @Override // com.appodeal.ads.networking.binders.b.a.InterfaceC0131a
                public final String getType() {
                    return "rewarded_video";
                }
            }

            /* renamed from: com.appodeal.ads.networking.binders.b$a$a$f */
            /* loaded from: classes2.dex */
            public static final class f implements InterfaceC0131a {

                /* renamed from: a  reason: collision with root package name */
                public static final f f7162a = new f();

                @Override // com.appodeal.ads.networking.binders.b.a.InterfaceC0131a
                public final String getType() {
                    return "video";
                }
            }

            String getType();
        }

        public a(String adType, Boolean bool, Boolean bool2, String str, long j, Long l, Long l2, Long l3, String str2, InterfaceC0131a interfaceC0131a) {
            Intrinsics.checkNotNullParameter(adType, "adType");
            this.f7146a = adType;
            this.f7147b = bool;
            this.f7148c = bool2;
            this.f7149d = str;
            this.f7150e = j;
            this.f7151f = l;
            this.f7152g = l2;
            this.f7153h = l3;
            this.i = str2;
            this.j = interfaceC0131a;
        }

        public final InterfaceC0131a a() {
            return this.j;
        }

        public final String b() {
            return this.f7146a;
        }

        public final Long c() {
            return this.f7152g;
        }

        public final Long d() {
            return this.f7153h;
        }

        public final String e() {
            return this.i;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return Intrinsics.areEqual(this.f7146a, aVar.f7146a) && Intrinsics.areEqual(this.f7147b, aVar.f7147b) && Intrinsics.areEqual(this.f7148c, aVar.f7148c) && Intrinsics.areEqual(this.f7149d, aVar.f7149d) && this.f7150e == aVar.f7150e && Intrinsics.areEqual(this.f7151f, aVar.f7151f) && Intrinsics.areEqual(this.f7152g, aVar.f7152g) && Intrinsics.areEqual(this.f7153h, aVar.f7153h) && Intrinsics.areEqual(this.i, aVar.i) && Intrinsics.areEqual(this.j, aVar.j);
            }
            return false;
        }

        public final Boolean f() {
            return this.f7148c;
        }

        public final String g() {
            return this.f7149d;
        }

        public final Boolean h() {
            return this.f7147b;
        }

        public final int hashCode() {
            int hashCode = this.f7146a.hashCode() * 31;
            Boolean bool = this.f7147b;
            int hashCode2 = (hashCode + (bool == null ? 0 : bool.hashCode())) * 31;
            Boolean bool2 = this.f7148c;
            int hashCode3 = (hashCode2 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
            String str = this.f7149d;
            int hashCode4 = (Long.hashCode(this.f7150e) + ((hashCode3 + (str == null ? 0 : str.hashCode())) * 31)) * 31;
            Long l = this.f7151f;
            int hashCode5 = (hashCode4 + (l == null ? 0 : l.hashCode())) * 31;
            Long l2 = this.f7152g;
            int hashCode6 = (hashCode5 + (l2 == null ? 0 : l2.hashCode())) * 31;
            Long l3 = this.f7153h;
            int hashCode7 = (hashCode6 + (l3 == null ? 0 : l3.hashCode())) * 31;
            String str2 = this.i;
            int hashCode8 = (hashCode7 + (str2 == null ? 0 : str2.hashCode())) * 31;
            InterfaceC0131a interfaceC0131a = this.j;
            return hashCode8 + (interfaceC0131a != null ? interfaceC0131a.hashCode() : 0);
        }

        public final long i() {
            return this.f7150e;
        }

        public final Long j() {
            return this.f7151f;
        }

        public final String toString() {
            return h0.a("AdRequest(adType=").append(this.f7146a).append(", rewardedVideo=").append(this.f7147b).append(", largeBanners=").append(this.f7148c).append(", mainId=").append((Object) this.f7149d).append(", segmentId=").append(this.f7150e).append(", showTimeStamp=").append(this.f7151f).append(", clickTimeStamp=").append(this.f7152g).append(", finishTimeStamp=").append(this.f7153h).append(", impressionId=").append((Object) this.i).append(", adProperties=").append(this.j).append(')').toString();
        }
    }

    /* renamed from: com.appodeal.ads.networking.binders.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0134b implements b {

        /* renamed from: a  reason: collision with root package name */
        public final a f7163a;

        /* renamed from: com.appodeal.ads.networking.binders.b$b$a */
        /* loaded from: classes2.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            public final String f7164a;

            /* renamed from: b  reason: collision with root package name */
            public final int f7165b;

            /* renamed from: c  reason: collision with root package name */
            public final int f7166c;

            /* renamed from: d  reason: collision with root package name */
            public final int f7167d;

            /* renamed from: e  reason: collision with root package name */
            public final int f7168e;

            /* renamed from: f  reason: collision with root package name */
            public final Integer f7169f;

            /* renamed from: g  reason: collision with root package name */
            public final int f7170g;

            public a(String adServerCodeName, int i, int i2, int i3, int i4, Integer num, int i5) {
                Intrinsics.checkNotNullParameter(adServerCodeName, "adServerCodeName");
                this.f7164a = adServerCodeName;
                this.f7165b = i;
                this.f7166c = i2;
                this.f7167d = i3;
                this.f7168e = i4;
                this.f7169f = num;
                this.f7170g = i5;
            }

            public final String a() {
                return this.f7164a;
            }

            public final int b() {
                return this.f7167d;
            }

            public final int c() {
                return this.f7168e;
            }

            public final Integer d() {
                return this.f7169f;
            }

            public final int e() {
                return this.f7170g;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj instanceof a) {
                    a aVar = (a) obj;
                    return Intrinsics.areEqual(this.f7164a, aVar.f7164a) && this.f7165b == aVar.f7165b && this.f7166c == aVar.f7166c && this.f7167d == aVar.f7167d && this.f7168e == aVar.f7168e && Intrinsics.areEqual(this.f7169f, aVar.f7169f) && this.f7170g == aVar.f7170g;
                }
                return false;
            }

            public final int f() {
                return this.f7165b;
            }

            public final int g() {
                return this.f7166c;
            }

            public final int hashCode() {
                int hashCode = Integer.hashCode(this.f7165b);
                int hashCode2 = Integer.hashCode(this.f7166c);
                int hashCode3 = (Integer.hashCode(this.f7168e) + ((Integer.hashCode(this.f7167d) + ((hashCode2 + ((hashCode + (this.f7164a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31;
                Integer num = this.f7169f;
                return Integer.hashCode(this.f7170g) + ((hashCode3 + (num == null ? 0 : num.hashCode())) * 31);
            }

            public final String toString() {
                return h0.a("AdStat(adServerCodeName=").append(this.f7164a).append(", impressions=").append(this.f7165b).append(", impressionsTotal=").append(this.f7166c).append(", click=").append(this.f7167d).append(", clickTotal=").append(this.f7168e).append(", finish=").append(this.f7169f).append(", finishTotal=").append(this.f7170g).append(')').toString();
            }
        }

        public C0134b(a adStats) {
            Intrinsics.checkNotNullParameter(adStats, "adStats");
            this.f7163a = adStats;
        }

        public final a a() {
            return this.f7163a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0134b) && Intrinsics.areEqual(this.f7163a, ((C0134b) obj).f7163a);
        }

        public final int hashCode() {
            return this.f7163a.hashCode();
        }

        public final String toString() {
            return h0.a("AdStats(adStats=").append(this.f7163a).append(')').toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class c implements b {

        /* renamed from: a  reason: collision with root package name */
        public final List<String> f7171a;

        /* renamed from: b  reason: collision with root package name */
        public final Map<String, com.appodeal.ads.networking.binders.a> f7172b;

        public c(ArrayList showArray, LinkedHashMap adapters) {
            Intrinsics.checkNotNullParameter(showArray, "showArray");
            Intrinsics.checkNotNullParameter(adapters, "adapters");
            this.f7171a = showArray;
            this.f7172b = adapters;
        }

        public final Map<String, com.appodeal.ads.networking.binders.a> a() {
            return this.f7172b;
        }

        public final List<String> b() {
            return this.f7171a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                c cVar = (c) obj;
                return Intrinsics.areEqual(this.f7171a, cVar.f7171a) && Intrinsics.areEqual(this.f7172b, cVar.f7172b);
            }
            return false;
        }

        public final int hashCode() {
            return this.f7172b.hashCode() + (this.f7171a.hashCode() * 31);
        }

        public final String toString() {
            return h0.a("Adapters(showArray=").append(this.f7171a).append(", adapters=").append(this.f7172b).append(')').toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class d implements b {

        /* renamed from: a  reason: collision with root package name */
        public final String f7173a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7174b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f7175c;

        public d(String ifa, String advertisingTracking, boolean z) {
            Intrinsics.checkNotNullParameter(ifa, "ifa");
            Intrinsics.checkNotNullParameter(advertisingTracking, "advertisingTracking");
            this.f7173a = ifa;
            this.f7174b = advertisingTracking;
            this.f7175c = z;
        }

        public final boolean a() {
            return this.f7175c;
        }

        public final String b() {
            return this.f7174b;
        }

        public final String c() {
            return this.f7173a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof d) {
                d dVar = (d) obj;
                return Intrinsics.areEqual(this.f7173a, dVar.f7173a) && Intrinsics.areEqual(this.f7174b, dVar.f7174b) && this.f7175c == dVar.f7175c;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int a2 = com.appodeal.ads.networking.a.a(this.f7174b, this.f7173a.hashCode() * 31, 31);
            boolean z = this.f7175c;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            return a2 + i;
        }

        public final String toString() {
            return h0.a("Advertising(ifa=").append(this.f7173a).append(", advertisingTracking=").append(this.f7174b).append(", advertisingIdGenerated=").append(this.f7175c).append(')').toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class e implements b {
        public final double A;
        public final long B;
        public final long C;
        public final long D;
        public final long E;
        public final long F;
        public final long G;
        public final double H;
        public final boolean I;
        public final Boolean J;
        public final JSONObject K;

        /* renamed from: a  reason: collision with root package name */
        public final String f7176a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7177b;

        /* renamed from: c  reason: collision with root package name */
        public final String f7178c;

        /* renamed from: d  reason: collision with root package name */
        public final String f7179d;

        /* renamed from: e  reason: collision with root package name */
        public final String f7180e;

        /* renamed from: f  reason: collision with root package name */
        public final String f7181f;

        /* renamed from: g  reason: collision with root package name */
        public final String f7182g;

        /* renamed from: h  reason: collision with root package name */
        public final int f7183h;
        public final String i;
        public final String j;
        public final String k;
        public final Long l;
        public final String m;
        public final String n;
        public final String o;
        public final String p;
        public final double q;
        public final String r;
        public final boolean s;
        public final String t;
        public final String u;
        public final boolean v;
        public final String w;
        public final int x;
        public final int y;
        public final String z;

        public e(String appKey, String sdk, String osVersion, String osv, String platform, String android2, int i, String str, String packageName, String str2, Long l, String str3, String str4, String str5, String str6, double d2, String deviceType, boolean z, String manufacturer, String deviceModelManufacturer, boolean z2, String str7, int i2, int i3, String str8, double d3, long j, long j2, long j3, long j4, long j5, long j6, double d4, boolean z3, Boolean bool, JSONObject jSONObject) {
            Intrinsics.checkNotNullParameter(appKey, "appKey");
            Intrinsics.checkNotNullParameter(sdk, "sdk");
            Intrinsics.checkNotNullParameter(APSAnalytics.OS_NAME, "os");
            Intrinsics.checkNotNullParameter(osVersion, "osVersion");
            Intrinsics.checkNotNullParameter(osv, "osv");
            Intrinsics.checkNotNullParameter(platform, "platform");
            Intrinsics.checkNotNullParameter(android2, "android");
            Intrinsics.checkNotNullParameter(packageName, "packageName");
            Intrinsics.checkNotNullParameter(deviceType, "deviceType");
            Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
            Intrinsics.checkNotNullParameter(deviceModelManufacturer, "deviceModelManufacturer");
            this.f7176a = appKey;
            this.f7177b = sdk;
            this.f7178c = APSAnalytics.OS_NAME;
            this.f7179d = osVersion;
            this.f7180e = osv;
            this.f7181f = platform;
            this.f7182g = android2;
            this.f7183h = i;
            this.i = str;
            this.j = packageName;
            this.k = str2;
            this.l = l;
            this.m = str3;
            this.n = str4;
            this.o = str5;
            this.p = str6;
            this.q = d2;
            this.r = deviceType;
            this.s = z;
            this.t = manufacturer;
            this.u = deviceModelManufacturer;
            this.v = z2;
            this.w = str7;
            this.x = i2;
            this.y = i3;
            this.z = str8;
            this.A = d3;
            this.B = j;
            this.C = j2;
            this.D = j3;
            this.E = j4;
            this.F = j5;
            this.G = j6;
            this.H = d4;
            this.I = z3;
            this.J = bool;
            this.K = jSONObject;
        }

        public final boolean A() {
            return this.v;
        }

        public final int B() {
            return this.y;
        }

        public final double C() {
            return this.q;
        }

        public final int D() {
            return this.x;
        }

        public final String E() {
            return this.f7177b;
        }

        public final String F() {
            return this.i;
        }

        public final long G() {
            return this.C;
        }

        public final long H() {
            return this.B;
        }

        public final long I() {
            return this.D;
        }

        public final Boolean J() {
            return this.J;
        }

        public final String K() {
            return this.w;
        }

        public final String a() {
            return this.f7182g;
        }

        public final int b() {
            return this.f7183h;
        }

        public final String c() {
            return this.f7176a;
        }

        public final String d() {
            return this.n;
        }

        public final String e() {
            return this.o;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof e) {
                e eVar = (e) obj;
                return Intrinsics.areEqual(this.f7176a, eVar.f7176a) && Intrinsics.areEqual(this.f7177b, eVar.f7177b) && Intrinsics.areEqual(this.f7178c, eVar.f7178c) && Intrinsics.areEqual(this.f7179d, eVar.f7179d) && Intrinsics.areEqual(this.f7180e, eVar.f7180e) && Intrinsics.areEqual(this.f7181f, eVar.f7181f) && Intrinsics.areEqual(this.f7182g, eVar.f7182g) && this.f7183h == eVar.f7183h && Intrinsics.areEqual(this.i, eVar.i) && Intrinsics.areEqual(this.j, eVar.j) && Intrinsics.areEqual(this.k, eVar.k) && Intrinsics.areEqual(this.l, eVar.l) && Intrinsics.areEqual(this.m, eVar.m) && Intrinsics.areEqual(this.n, eVar.n) && Intrinsics.areEqual(this.o, eVar.o) && Intrinsics.areEqual(this.p, eVar.p) && Intrinsics.areEqual((Object) Double.valueOf(this.q), (Object) Double.valueOf(eVar.q)) && Intrinsics.areEqual(this.r, eVar.r) && this.s == eVar.s && Intrinsics.areEqual(this.t, eVar.t) && Intrinsics.areEqual(this.u, eVar.u) && this.v == eVar.v && Intrinsics.areEqual(this.w, eVar.w) && this.x == eVar.x && this.y == eVar.y && Intrinsics.areEqual(this.z, eVar.z) && Intrinsics.areEqual((Object) Double.valueOf(this.A), (Object) Double.valueOf(eVar.A)) && this.B == eVar.B && this.C == eVar.C && this.D == eVar.D && this.E == eVar.E && this.F == eVar.F && this.G == eVar.G && Intrinsics.areEqual((Object) Double.valueOf(this.H), (Object) Double.valueOf(eVar.H)) && this.I == eVar.I && Intrinsics.areEqual(this.J, eVar.J) && Intrinsics.areEqual(this.K, eVar.K);
            }
            return false;
        }

        public final String f() {
            return this.p;
        }

        public final double g() {
            return this.A;
        }

        public final boolean h() {
            return this.I;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int hashCode = (Integer.hashCode(this.f7183h) + com.appodeal.ads.networking.a.a(this.f7182g, com.appodeal.ads.networking.a.a(this.f7181f, com.appodeal.ads.networking.a.a(this.f7180e, com.appodeal.ads.networking.a.a(this.f7179d, com.appodeal.ads.networking.a.a(this.f7178c, com.appodeal.ads.networking.a.a(this.f7177b, this.f7176a.hashCode() * 31, 31), 31), 31), 31), 31), 31)) * 31;
            String str = this.i;
            int a2 = com.appodeal.ads.networking.a.a(this.j, (hashCode + (str == null ? 0 : str.hashCode())) * 31, 31);
            String str2 = this.k;
            int hashCode2 = (a2 + (str2 == null ? 0 : str2.hashCode())) * 31;
            Long l = this.l;
            int hashCode3 = (hashCode2 + (l == null ? 0 : l.hashCode())) * 31;
            String str3 = this.m;
            int hashCode4 = (hashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.n;
            int hashCode5 = (hashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
            String str5 = this.o;
            int hashCode6 = (hashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            String str6 = this.p;
            int a3 = com.appodeal.ads.networking.a.a(this.r, (Double.hashCode(this.q) + ((hashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31)) * 31, 31);
            boolean z = this.s;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            int a4 = com.appodeal.ads.networking.a.a(this.u, com.appodeal.ads.networking.a.a(this.t, (a3 + i) * 31, 31), 31);
            boolean z2 = this.v;
            int i2 = z2;
            if (z2 != 0) {
                i2 = 1;
            }
            int i3 = (a4 + i2) * 31;
            String str7 = this.w;
            int hashCode7 = (Integer.hashCode(this.y) + ((Integer.hashCode(this.x) + ((i3 + (str7 == null ? 0 : str7.hashCode())) * 31)) * 31)) * 31;
            String str8 = this.z;
            int hashCode8 = str8 == null ? 0 : str8.hashCode();
            int hashCode9 = Double.hashCode(this.A);
            int hashCode10 = Long.hashCode(this.B);
            int hashCode11 = Long.hashCode(this.C);
            int hashCode12 = Long.hashCode(this.D);
            int hashCode13 = (Double.hashCode(this.H) + ((Long.hashCode(this.G) + ((Long.hashCode(this.F) + ((Long.hashCode(this.E) + ((hashCode12 + ((hashCode11 + ((hashCode10 + ((hashCode9 + ((hashCode7 + hashCode8) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
            boolean z3 = this.I;
            int i4 = (hashCode13 + (z3 ? 1 : z3 ? 1 : 0)) * 31;
            Boolean bool = this.J;
            int hashCode14 = (i4 + (bool == null ? 0 : bool.hashCode())) * 31;
            JSONObject jSONObject = this.K;
            return hashCode14 + (jSONObject != null ? jSONObject.hashCode() : 0);
        }

        public final double i() {
            return this.H;
        }

        public final String j() {
            return this.z;
        }

        public final String k() {
            return this.u;
        }

        public final String l() {
            return this.r;
        }

        public final JSONObject m() {
            return this.K;
        }

        public final boolean n() {
            return this.s;
        }

        public final Long o() {
            return this.l;
        }

        public final String p() {
            return this.m;
        }

        public final String q() {
            return this.t;
        }

        public final String r() {
            return this.f7178c;
        }

        public final String s() {
            return this.f7179d;
        }

        public final String t() {
            return this.f7180e;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Base(appKey=");
            sb.append(this.f7176a).append(", sdk=").append(this.f7177b).append(", os=").append(this.f7178c).append(", osVersion=").append(this.f7179d).append(", osv=").append(this.f7180e).append(", platform=").append(this.f7181f).append(", android=").append(this.f7182g).append(", androidLevel=").append(this.f7183h).append(", secureAndroidId=").append((Object) this.i).append(", packageName=").append(this.j).append(", packageVersion=").append((Object) this.k).append(", installTime=");
            sb.append(this.l).append(", installer=").append((Object) this.m).append(", appodealFramework=").append((Object) this.n).append(", appodealFrameworkVersion=").append((Object) this.o).append(", appodealPluginVersion=").append((Object) this.p).append(", screenPxRatio=").append(this.q).append(", deviceType=").append(this.r).append(", httpAllowed=").append(this.s).append(", manufacturer=").append(this.t).append(", deviceModelManufacturer=").append(this.u).append(", rooted=").append(this.v).append(", webviewVersion=").append((Object) this.w);
            sb.append(", screenWidth=").append(this.x).append(", screenHeight=").append(this.y).append(", crr=").append((Object) this.z).append(", battery=").append(this.A).append(", storageSize=").append(this.B).append(", storageFree=").append(this.C).append(", storageUsed=").append(this.D).append(", ramSize=").append(this.E).append(", ramFree=").append(this.F).append(", ramUsed=").append(this.G).append(", cpuUsage=").append(this.H).append(", coppa=");
            sb.append(this.I).append(", testMode=").append(this.J).append(", extensions=").append(this.K).append(')');
            return sb.toString();
        }

        public final String u() {
            return this.j;
        }

        public final String v() {
            return this.k;
        }

        public final String w() {
            return this.f7181f;
        }

        public final long x() {
            return this.F;
        }

        public final long y() {
            return this.E;
        }

        public final long z() {
            return this.G;
        }
    }

    /* loaded from: classes2.dex */
    public static final class f implements b {

        /* renamed from: a  reason: collision with root package name */
        public final String f7184a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7185b;

        public f(String str, String str2) {
            this.f7184a = str;
            this.f7185b = str2;
        }

        public final String a() {
            return this.f7184a;
        }

        public final String b() {
            return this.f7185b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof f) {
                f fVar = (f) obj;
                return Intrinsics.areEqual(this.f7184a, fVar.f7184a) && Intrinsics.areEqual(this.f7185b, fVar.f7185b);
            }
            return false;
        }

        public final int hashCode() {
            String str = this.f7184a;
            int hashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f7185b;
            return hashCode + (str2 != null ? str2.hashCode() : 0);
        }

        public final String toString() {
            return h0.a("Connection(connection=").append((Object) this.f7184a).append(", connectionSubtype=").append((Object) this.f7185b).append(')').toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class g implements b {

        /* renamed from: a  reason: collision with root package name */
        public final Boolean f7186a;

        /* renamed from: b  reason: collision with root package name */
        public final JSONArray f7187b;

        /* renamed from: c  reason: collision with root package name */
        public final Boolean f7188c;

        public g(Boolean bool, JSONArray jSONArray, Boolean bool2) {
            this.f7186a = bool;
            this.f7187b = jSONArray;
            this.f7188c = bool2;
        }

        public final Boolean a() {
            return this.f7186a;
        }

        public final Boolean b() {
            return this.f7188c;
        }

        public final JSONArray c() {
            return this.f7187b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof g) {
                g gVar = (g) obj;
                return Intrinsics.areEqual(this.f7186a, gVar.f7186a) && Intrinsics.areEqual(this.f7187b, gVar.f7187b) && Intrinsics.areEqual(this.f7188c, gVar.f7188c);
            }
            return false;
        }

        public final int hashCode() {
            Boolean bool = this.f7186a;
            int hashCode = (bool == null ? 0 : bool.hashCode()) * 31;
            JSONArray jSONArray = this.f7187b;
            int hashCode2 = (hashCode + (jSONArray == null ? 0 : jSONArray.hashCode())) * 31;
            Boolean bool2 = this.f7188c;
            return hashCode2 + (bool2 != null ? bool2.hashCode() : 0);
        }

        public final String toString() {
            return h0.a("Get(adTypeDebug=").append(this.f7186a).append(", suspiciousActivity=").append(this.f7187b).append(", checkSdkVersion=").append(this.f7188c).append(')').toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class h implements b {

        /* renamed from: a  reason: collision with root package name */
        public final Integer f7189a;

        /* renamed from: b  reason: collision with root package name */
        public final Float f7190b;

        /* renamed from: c  reason: collision with root package name */
        public final Float f7191c;

        public h(Integer num, Float f2, Float f3) {
            this.f7189a = num;
            this.f7190b = f2;
            this.f7191c = f3;
        }

        public final Float a() {
            return this.f7190b;
        }

        public final Integer b() {
            return this.f7189a;
        }

        public final Float c() {
            return this.f7191c;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof h) {
                h hVar = (h) obj;
                return Intrinsics.areEqual(this.f7189a, hVar.f7189a) && Intrinsics.areEqual((Object) this.f7190b, (Object) hVar.f7190b) && Intrinsics.areEqual((Object) this.f7191c, (Object) hVar.f7191c);
            }
            return false;
        }

        public final int hashCode() {
            Integer num = this.f7189a;
            int hashCode = (num == null ? 0 : num.hashCode()) * 31;
            Float f2 = this.f7190b;
            int hashCode2 = (hashCode + (f2 == null ? 0 : f2.hashCode())) * 31;
            Float f3 = this.f7191c;
            return hashCode2 + (f3 != null ? f3.hashCode() : 0);
        }

        public final String toString() {
            return h0.a("Location(locationType=").append(this.f7189a).append(", latitude=").append(this.f7190b).append(", longitude=").append(this.f7191c).append(')').toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class i implements b {

        /* renamed from: a  reason: collision with root package name */
        public final JSONObject f7192a;

        public i(JSONObject customState) {
            Intrinsics.checkNotNullParameter(customState, "customState");
            this.f7192a = customState;
        }

        public final JSONObject a() {
            return this.f7192a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof i) && Intrinsics.areEqual(this.f7192a, ((i) obj).f7192a);
        }

        public final int hashCode() {
            return this.f7192a.hashCode();
        }

        public final String toString() {
            return h0.a("Segment(customState=").append(this.f7192a).append(')').toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class j implements b {

        /* renamed from: a  reason: collision with root package name */
        public final List<ServiceInfo> f7193a;

        public j(List<ServiceInfo> services) {
            Intrinsics.checkNotNullParameter(services, "services");
            this.f7193a = services;
        }

        public final List<ServiceInfo> a() {
            return this.f7193a;
        }
    }

    /* loaded from: classes2.dex */
    public static final class k implements b {

        /* renamed from: a  reason: collision with root package name */
        public final List<ServiceData> f7194a;

        /* JADX WARN: Multi-variable type inference failed */
        public k(List<? extends ServiceData> servicesData) {
            Intrinsics.checkNotNullParameter(servicesData, "servicesData");
            this.f7194a = servicesData;
        }

        public final List<ServiceData> a() {
            return this.f7194a;
        }
    }

    /* loaded from: classes2.dex */
    public static final class l implements b {

        /* renamed from: a  reason: collision with root package name */
        public final long f7195a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7196b;

        /* renamed from: c  reason: collision with root package name */
        public final long f7197c;

        /* renamed from: d  reason: collision with root package name */
        public final long f7198d;

        /* renamed from: e  reason: collision with root package name */
        public final long f7199e;

        /* renamed from: f  reason: collision with root package name */
        public final long f7200f;

        /* renamed from: g  reason: collision with root package name */
        public final long f7201g;

        /* renamed from: h  reason: collision with root package name */
        public final long f7202h;
        public final long i;
        public final long j;

        public l(long j, String str, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9) {
            this.f7195a = j;
            this.f7196b = str;
            this.f7197c = j2;
            this.f7198d = j3;
            this.f7199e = j4;
            this.f7200f = j5;
            this.f7201g = j6;
            this.f7202h = j7;
            this.i = j8;
            this.j = j9;
        }

        public final long a() {
            return this.i;
        }

        public final long b() {
            return this.j;
        }

        public final long c() {
            return this.f7201g;
        }

        public final long d() {
            return this.f7202h;
        }

        public final long e() {
            return this.f7195a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof l) {
                l lVar = (l) obj;
                return this.f7195a == lVar.f7195a && Intrinsics.areEqual(this.f7196b, lVar.f7196b) && this.f7197c == lVar.f7197c && this.f7198d == lVar.f7198d && this.f7199e == lVar.f7199e && this.f7200f == lVar.f7200f && this.f7201g == lVar.f7201g && this.f7202h == lVar.f7202h && this.i == lVar.i && this.j == lVar.j;
            }
            return false;
        }

        public final long f() {
            return this.f7199e;
        }

        public final long g() {
            return this.f7200f;
        }

        public final long h() {
            return this.f7197c;
        }

        public final int hashCode() {
            int hashCode = Long.hashCode(this.f7195a) * 31;
            String str = this.f7196b;
            int hashCode2 = str == null ? 0 : str.hashCode();
            int hashCode3 = Long.hashCode(this.f7197c);
            int hashCode4 = Long.hashCode(this.f7198d);
            int hashCode5 = Long.hashCode(this.f7199e);
            int hashCode6 = Long.hashCode(this.f7200f);
            int hashCode7 = Long.hashCode(this.f7201g);
            int hashCode8 = Long.hashCode(this.f7202h);
            return Long.hashCode(this.j) + ((Long.hashCode(this.i) + ((hashCode8 + ((hashCode7 + ((hashCode6 + ((hashCode5 + ((hashCode4 + ((hashCode3 + ((hashCode + hashCode2) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
        }

        public final long i() {
            return this.f7198d;
        }

        public final String j() {
            return this.f7196b;
        }

        public final String toString() {
            return h0.a("Session(sessionId=").append(this.f7195a).append(", sessionUuid=").append((Object) this.f7196b).append(", sessionUptime=").append(this.f7197c).append(", sessionUptimeMonotonicMs=").append(this.f7198d).append(", sessionStart=").append(this.f7199e).append(", sessionStartMonotonicMs=").append(this.f7200f).append(", appUptime=").append(this.f7201g).append(", appUptimeMonotonicMs=").append(this.f7202h).append(", appSessionAverageLength=").append(this.i).append(", appSessionAverageLengthMonotonicMs=").append(this.j).append(')').toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class m implements b {

        /* renamed from: a  reason: collision with root package name */
        public final JSONArray f7203a;

        public m(JSONArray previousSessions) {
            Intrinsics.checkNotNullParameter(previousSessions, "previousSessions");
            this.f7203a = previousSessions;
        }

        public final JSONArray a() {
            return this.f7203a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof m) && Intrinsics.areEqual(this.f7203a, ((m) obj).f7203a);
        }

        public final int hashCode() {
            return this.f7203a.hashCode();
        }

        public final String toString() {
            return h0.a("Sessions(previousSessions=").append(this.f7203a).append(')').toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class n implements b {

        /* renamed from: a  reason: collision with root package name */
        public final String f7204a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7205b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f7206c;

        /* renamed from: d  reason: collision with root package name */
        public final JSONObject f7207d;

        /* renamed from: e  reason: collision with root package name */
        public final JSONObject f7208e;

        /* renamed from: f  reason: collision with root package name */
        public final String f7209f;

        /* renamed from: g  reason: collision with root package name */
        public final String f7210g;

        /* renamed from: h  reason: collision with root package name */
        public final long f7211h;

        public n(String str, String userLocale, boolean z, JSONObject jSONObject, JSONObject jSONObject2, String str2, String userTimezone, long j) {
            Intrinsics.checkNotNullParameter(userLocale, "userLocale");
            Intrinsics.checkNotNullParameter(userTimezone, "userTimezone");
            this.f7204a = str;
            this.f7205b = userLocale;
            this.f7206c = z;
            this.f7207d = jSONObject;
            this.f7208e = jSONObject2;
            this.f7209f = str2;
            this.f7210g = userTimezone;
            this.f7211h = j;
        }

        public final String a() {
            return this.f7209f;
        }

        public final boolean b() {
            return this.f7206c;
        }

        public final JSONObject c() {
            return this.f7207d;
        }

        public final String d() {
            return this.f7204a;
        }

        public final long e() {
            return this.f7211h;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof n) {
                n nVar = (n) obj;
                return Intrinsics.areEqual(this.f7204a, nVar.f7204a) && Intrinsics.areEqual(this.f7205b, nVar.f7205b) && this.f7206c == nVar.f7206c && Intrinsics.areEqual(this.f7207d, nVar.f7207d) && Intrinsics.areEqual(this.f7208e, nVar.f7208e) && Intrinsics.areEqual(this.f7209f, nVar.f7209f) && Intrinsics.areEqual(this.f7210g, nVar.f7210g) && this.f7211h == nVar.f7211h;
            }
            return false;
        }

        public final String f() {
            return this.f7205b;
        }

        public final String g() {
            return this.f7210g;
        }

        public final JSONObject h() {
            return this.f7208e;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            String str = this.f7204a;
            int a2 = com.appodeal.ads.networking.a.a(this.f7205b, (str == null ? 0 : str.hashCode()) * 31, 31);
            boolean z = this.f7206c;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            int i2 = (a2 + i) * 31;
            JSONObject jSONObject = this.f7207d;
            int hashCode = (i2 + (jSONObject == null ? 0 : jSONObject.hashCode())) * 31;
            JSONObject jSONObject2 = this.f7208e;
            int hashCode2 = (hashCode + (jSONObject2 == null ? 0 : jSONObject2.hashCode())) * 31;
            String str2 = this.f7209f;
            return Long.hashCode(this.f7211h) + com.appodeal.ads.networking.a.a(this.f7210g, (hashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31, 31);
        }

        public final String toString() {
            return h0.a("User(userId=").append((Object) this.f7204a).append(", userLocale=").append(this.f7205b).append(", userConsent=").append(this.f7206c).append(", userIabConsentData=").append(this.f7207d).append(", userToken=").append(this.f7208e).append(", userAgent=").append((Object) this.f7209f).append(", userTimezone=").append(this.f7210g).append(", userLocalTime=").append(this.f7211h).append(')').toString();
        }
    }
}
