package com.appodeal.ads.networking;

import com.appodeal.ads.h0;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final C0130b f7098a;

    /* renamed from: b  reason: collision with root package name */
    public final a f7099b;

    /* renamed from: c  reason: collision with root package name */
    public final c f7100c;

    /* renamed from: d  reason: collision with root package name */
    public final d f7101d;

    /* renamed from: e  reason: collision with root package name */
    public final f f7102e;

    /* renamed from: f  reason: collision with root package name */
    public final e f7103f;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f7104a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7105b;

        /* renamed from: c  reason: collision with root package name */
        public final Map<String, String> f7106c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f7107d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f7108e;

        /* renamed from: f  reason: collision with root package name */
        public final long f7109f;

        /* renamed from: g  reason: collision with root package name */
        public final String f7110g;

        public a(String appToken, String environment, Map<String, String> eventTokens, boolean z, boolean z2, long j, String str) {
            Intrinsics.checkNotNullParameter(appToken, "appToken");
            Intrinsics.checkNotNullParameter(environment, "environment");
            Intrinsics.checkNotNullParameter(eventTokens, "eventTokens");
            this.f7104a = appToken;
            this.f7105b = environment;
            this.f7106c = eventTokens;
            this.f7107d = z;
            this.f7108e = z2;
            this.f7109f = j;
            this.f7110g = str;
        }

        public final String a() {
            return this.f7104a;
        }

        public final String b() {
            return this.f7105b;
        }

        public final Map<String, String> c() {
            return this.f7106c;
        }

        public final long d() {
            return this.f7109f;
        }

        public final String e() {
            return this.f7110g;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                return Intrinsics.areEqual(this.f7104a, aVar.f7104a) && Intrinsics.areEqual(this.f7105b, aVar.f7105b) && Intrinsics.areEqual(this.f7106c, aVar.f7106c) && this.f7107d == aVar.f7107d && this.f7108e == aVar.f7108e && this.f7109f == aVar.f7109f && Intrinsics.areEqual(this.f7110g, aVar.f7110g);
            }
            return false;
        }

        public final boolean f() {
            return this.f7107d;
        }

        public final boolean g() {
            return this.f7108e;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int hashCode = (this.f7106c.hashCode() + com.appodeal.ads.networking.a.a(this.f7105b, this.f7104a.hashCode() * 31, 31)) * 31;
            boolean z = this.f7107d;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            int i2 = (hashCode + i) * 31;
            boolean z2 = this.f7108e;
            int hashCode2 = (Long.hashCode(this.f7109f) + ((i2 + (z2 ? 1 : z2 ? 1 : 0)) * 31)) * 31;
            String str = this.f7110g;
            return hashCode2 + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return h0.a("AdjustConfig(appToken=").append(this.f7104a).append(", environment=").append(this.f7105b).append(", eventTokens=").append(this.f7106c).append(", isEventTrackingEnabled=").append(this.f7107d).append(", isRevenueTrackingEnabled=").append(this.f7108e).append(", initTimeoutMs=").append(this.f7109f).append(", initializationMode=").append((Object) this.f7110g).append(')').toString();
        }
    }

    /* renamed from: com.appodeal.ads.networking.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0130b {

        /* renamed from: a  reason: collision with root package name */
        public final String f7111a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7112b;

        /* renamed from: c  reason: collision with root package name */
        public final String f7113c;

        /* renamed from: d  reason: collision with root package name */
        public final List<String> f7114d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f7115e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f7116f;

        /* renamed from: g  reason: collision with root package name */
        public final long f7117g;

        /* renamed from: h  reason: collision with root package name */
        public final String f7118h;

        public C0130b(String devKey, String appId, String adId, List<String> conversionKeys, boolean z, boolean z2, long j, String str) {
            Intrinsics.checkNotNullParameter(devKey, "devKey");
            Intrinsics.checkNotNullParameter(appId, "appId");
            Intrinsics.checkNotNullParameter(adId, "adId");
            Intrinsics.checkNotNullParameter(conversionKeys, "conversionKeys");
            this.f7111a = devKey;
            this.f7112b = appId;
            this.f7113c = adId;
            this.f7114d = conversionKeys;
            this.f7115e = z;
            this.f7116f = z2;
            this.f7117g = j;
            this.f7118h = str;
        }

        public final String a() {
            return this.f7112b;
        }

        public final List<String> b() {
            return this.f7114d;
        }

        public final String c() {
            return this.f7111a;
        }

        public final long d() {
            return this.f7117g;
        }

        public final String e() {
            return this.f7118h;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof C0130b) {
                C0130b c0130b = (C0130b) obj;
                return Intrinsics.areEqual(this.f7111a, c0130b.f7111a) && Intrinsics.areEqual(this.f7112b, c0130b.f7112b) && Intrinsics.areEqual(this.f7113c, c0130b.f7113c) && Intrinsics.areEqual(this.f7114d, c0130b.f7114d) && this.f7115e == c0130b.f7115e && this.f7116f == c0130b.f7116f && this.f7117g == c0130b.f7117g && Intrinsics.areEqual(this.f7118h, c0130b.f7118h);
            }
            return false;
        }

        public final boolean f() {
            return this.f7115e;
        }

        public final boolean g() {
            return this.f7116f;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int hashCode = (this.f7114d.hashCode() + com.appodeal.ads.networking.a.a(this.f7113c, com.appodeal.ads.networking.a.a(this.f7112b, this.f7111a.hashCode() * 31, 31), 31)) * 31;
            boolean z = this.f7115e;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            int i2 = (hashCode + i) * 31;
            boolean z2 = this.f7116f;
            int hashCode2 = (Long.hashCode(this.f7117g) + ((i2 + (z2 ? 1 : z2 ? 1 : 0)) * 31)) * 31;
            String str = this.f7118h;
            return hashCode2 + (str == null ? 0 : str.hashCode());
        }

        public final String toString() {
            return h0.a("AppsflyerConfig(devKey=").append(this.f7111a).append(", appId=").append(this.f7112b).append(", adId=").append(this.f7113c).append(", conversionKeys=").append(this.f7114d).append(", isEventTrackingEnabled=").append(this.f7115e).append(", isRevenueTrackingEnabled=").append(this.f7116f).append(", initTimeoutMs=").append(this.f7117g).append(", initializationMode=").append((Object) this.f7118h).append(')').toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f7119a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f7120b;

        /* renamed from: c  reason: collision with root package name */
        public final long f7121c;

        public c(boolean z, boolean z2, long j) {
            this.f7119a = z;
            this.f7120b = z2;
            this.f7121c = j;
        }

        public final long a() {
            return this.f7121c;
        }

        public final boolean b() {
            return this.f7119a;
        }

        public final boolean c() {
            return this.f7120b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof c) {
                c cVar = (c) obj;
                return this.f7119a == cVar.f7119a && this.f7120b == cVar.f7120b && this.f7121c == cVar.f7121c;
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1, types: [int] */
        /* JADX WARN: Type inference failed for: r0v5 */
        /* JADX WARN: Type inference failed for: r0v6 */
        public final int hashCode() {
            boolean z = this.f7119a;
            ?? r0 = z;
            if (z) {
                r0 = 1;
            }
            int i = r0 * 31;
            boolean z2 = this.f7120b;
            return Long.hashCode(this.f7121c) + ((i + (z2 ? 1 : z2 ? 1 : 0)) * 31);
        }

        public final String toString() {
            return h0.a("FacebookConfig(isEventTrackingEnabled=").append(this.f7119a).append(", isRevenueTrackingEnabled=").append(this.f7120b).append(", initTimeoutMs=").append(this.f7121c).append(')').toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final List<String> f7122a;

        /* renamed from: b  reason: collision with root package name */
        public final Long f7123b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f7124c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f7125d;

        /* renamed from: e  reason: collision with root package name */
        public final String f7126e;

        /* renamed from: f  reason: collision with root package name */
        public final long f7127f;

        /* renamed from: g  reason: collision with root package name */
        public final String f7128g;

        public d(List<String> configKeys, Long l, boolean z, boolean z2, String adRevenueKey, long j, String str) {
            Intrinsics.checkNotNullParameter(configKeys, "configKeys");
            Intrinsics.checkNotNullParameter(adRevenueKey, "adRevenueKey");
            this.f7122a = configKeys;
            this.f7123b = l;
            this.f7124c = z;
            this.f7125d = z2;
            this.f7126e = adRevenueKey;
            this.f7127f = j;
            this.f7128g = str;
        }

        public final String a() {
            return this.f7126e;
        }

        public final List<String> b() {
            return this.f7122a;
        }

        public final Long c() {
            return this.f7123b;
        }

        public final long d() {
            return this.f7127f;
        }

        public final String e() {
            return this.f7128g;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof d) {
                d dVar = (d) obj;
                return Intrinsics.areEqual(this.f7122a, dVar.f7122a) && Intrinsics.areEqual(this.f7123b, dVar.f7123b) && this.f7124c == dVar.f7124c && this.f7125d == dVar.f7125d && Intrinsics.areEqual(this.f7126e, dVar.f7126e) && this.f7127f == dVar.f7127f && Intrinsics.areEqual(this.f7128g, dVar.f7128g);
            }
            return false;
        }

        public final boolean f() {
            return this.f7124c;
        }

        public final boolean g() {
            return this.f7125d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int hashCode = this.f7122a.hashCode() * 31;
            Long l = this.f7123b;
            int hashCode2 = (hashCode + (l == null ? 0 : l.hashCode())) * 31;
            boolean z = this.f7124c;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            int i2 = (hashCode2 + i) * 31;
            boolean z2 = this.f7125d;
            int hashCode3 = (Long.hashCode(this.f7127f) + com.appodeal.ads.networking.a.a(this.f7126e, (i2 + (z2 ? 1 : z2 ? 1 : 0)) * 31, 31)) * 31;
            String str = this.f7128g;
            return hashCode3 + (str != null ? str.hashCode() : 0);
        }

        public final String toString() {
            return h0.a("FirebaseConfig(configKeys=").append(this.f7122a).append(", expirationDurationSec=").append(this.f7123b).append(", isEventTrackingEnabled=").append(this.f7124c).append(", isRevenueTrackingEnabled=").append(this.f7125d).append(", adRevenueKey=").append(this.f7126e).append(", initTimeoutMs=").append(this.f7127f).append(", initializationMode=").append((Object) this.f7128g).append(')').toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public final String f7129a;

        /* renamed from: b  reason: collision with root package name */
        public final String f7130b;

        /* renamed from: c  reason: collision with root package name */
        public final boolean f7131c;

        /* renamed from: d  reason: collision with root package name */
        public final boolean f7132d;

        /* renamed from: e  reason: collision with root package name */
        public final String f7133e;

        /* renamed from: f  reason: collision with root package name */
        public final boolean f7134f;

        /* renamed from: g  reason: collision with root package name */
        public final long f7135g;

        public e(String sentryDsn, String sentryEnvironment, boolean z, boolean z2, String mdsReportUrl, boolean z3, long j) {
            Intrinsics.checkNotNullParameter(sentryDsn, "sentryDsn");
            Intrinsics.checkNotNullParameter(sentryEnvironment, "sentryEnvironment");
            Intrinsics.checkNotNullParameter(mdsReportUrl, "mdsReportUrl");
            this.f7129a = sentryDsn;
            this.f7130b = sentryEnvironment;
            this.f7131c = z;
            this.f7132d = z2;
            this.f7133e = mdsReportUrl;
            this.f7134f = z3;
            this.f7135g = j;
        }

        public final long a() {
            return this.f7135g;
        }

        public final String b() {
            return this.f7133e;
        }

        public final boolean c() {
            return this.f7131c;
        }

        public final String d() {
            return this.f7129a;
        }

        public final String e() {
            return this.f7130b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof e) {
                e eVar = (e) obj;
                return Intrinsics.areEqual(this.f7129a, eVar.f7129a) && Intrinsics.areEqual(this.f7130b, eVar.f7130b) && this.f7131c == eVar.f7131c && this.f7132d == eVar.f7132d && Intrinsics.areEqual(this.f7133e, eVar.f7133e) && this.f7134f == eVar.f7134f && this.f7135g == eVar.f7135g;
            }
            return false;
        }

        public final boolean f() {
            return this.f7134f;
        }

        public final boolean g() {
            return this.f7132d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int a2 = com.appodeal.ads.networking.a.a(this.f7130b, this.f7129a.hashCode() * 31, 31);
            boolean z = this.f7131c;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            int i2 = (a2 + i) * 31;
            boolean z2 = this.f7132d;
            int i3 = z2;
            if (z2 != 0) {
                i3 = 1;
            }
            int a3 = com.appodeal.ads.networking.a.a(this.f7133e, (i2 + i3) * 31, 31);
            boolean z3 = this.f7134f;
            return Long.hashCode(this.f7135g) + ((a3 + (z3 ? 1 : z3 ? 1 : 0)) * 31);
        }

        public final String toString() {
            return h0.a("SentryAnalyticConfig(sentryDsn=").append(this.f7129a).append(", sentryEnvironment=").append(this.f7130b).append(", sentryCollectThreads=").append(this.f7131c).append(", isSentryTrackingEnabled=").append(this.f7132d).append(", mdsReportUrl=").append(this.f7133e).append(", isMdsEventTrackingEnabled=").append(this.f7134f).append(", initTimeoutMs=").append(this.f7135g).append(')').toString();
        }
    }

    /* loaded from: classes2.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public final String f7136a;

        /* renamed from: b  reason: collision with root package name */
        public final long f7137b;

        /* renamed from: c  reason: collision with root package name */
        public final String f7138c;

        /* renamed from: d  reason: collision with root package name */
        public final String f7139d;

        /* renamed from: e  reason: collision with root package name */
        public final boolean f7140e;

        /* renamed from: f  reason: collision with root package name */
        public final long f7141f;

        /* renamed from: g  reason: collision with root package name */
        public final boolean f7142g;

        /* renamed from: h  reason: collision with root package name */
        public final long f7143h;

        public f(String reportUrl, long j, String crashLogLevel, String reportLogLevel, boolean z, long j2, boolean z2, long j3) {
            Intrinsics.checkNotNullParameter(reportUrl, "reportUrl");
            Intrinsics.checkNotNullParameter(crashLogLevel, "crashLogLevel");
            Intrinsics.checkNotNullParameter(reportLogLevel, "reportLogLevel");
            this.f7136a = reportUrl;
            this.f7137b = j;
            this.f7138c = crashLogLevel;
            this.f7139d = reportLogLevel;
            this.f7140e = z;
            this.f7141f = j2;
            this.f7142g = z2;
            this.f7143h = j3;
        }

        public final String a() {
            return this.f7138c;
        }

        public final long b() {
            return this.f7143h;
        }

        public final long c() {
            return this.f7141f;
        }

        public final String d() {
            return this.f7139d;
        }

        public final long e() {
            return this.f7137b;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof f) {
                f fVar = (f) obj;
                return Intrinsics.areEqual(this.f7136a, fVar.f7136a) && this.f7137b == fVar.f7137b && Intrinsics.areEqual(this.f7138c, fVar.f7138c) && Intrinsics.areEqual(this.f7139d, fVar.f7139d) && this.f7140e == fVar.f7140e && this.f7141f == fVar.f7141f && this.f7142g == fVar.f7142g && this.f7143h == fVar.f7143h;
            }
            return false;
        }

        public final String f() {
            return this.f7136a;
        }

        public final boolean g() {
            return this.f7140e;
        }

        public final boolean h() {
            return this.f7142g;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int a2 = com.appodeal.ads.networking.a.a(this.f7139d, com.appodeal.ads.networking.a.a(this.f7138c, (Long.hashCode(this.f7137b) + (this.f7136a.hashCode() * 31)) * 31, 31), 31);
            boolean z = this.f7140e;
            int i = z;
            if (z != 0) {
                i = 1;
            }
            int hashCode = (Long.hashCode(this.f7141f) + ((a2 + i) * 31)) * 31;
            boolean z2 = this.f7142g;
            return Long.hashCode(this.f7143h) + ((hashCode + (z2 ? 1 : z2 ? 1 : 0)) * 31);
        }

        public final String toString() {
            return h0.a("StackAnalyticConfig(reportUrl=").append(this.f7136a).append(", reportSize=").append(this.f7137b).append(", crashLogLevel=").append(this.f7138c).append(", reportLogLevel=").append(this.f7139d).append(", isEventTrackingEnabled=").append(this.f7140e).append(", reportIntervalMsec=").append(this.f7141f).append(", isNativeTrackingEnabled=").append(this.f7142g).append(", initTimeoutMs=").append(this.f7143h).append(')').toString();
        }
    }

    public b(C0130b c0130b, a aVar, c cVar, d dVar, f fVar, e eVar) {
        this.f7098a = c0130b;
        this.f7099b = aVar;
        this.f7100c = cVar;
        this.f7101d = dVar;
        this.f7102e = fVar;
        this.f7103f = eVar;
    }

    public final a a() {
        return this.f7099b;
    }

    public final C0130b b() {
        return this.f7098a;
    }

    public final c c() {
        return this.f7100c;
    }

    public final d d() {
        return this.f7101d;
    }

    public final e e() {
        return this.f7103f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            return Intrinsics.areEqual(this.f7098a, bVar.f7098a) && Intrinsics.areEqual(this.f7099b, bVar.f7099b) && Intrinsics.areEqual(this.f7100c, bVar.f7100c) && Intrinsics.areEqual(this.f7101d, bVar.f7101d) && Intrinsics.areEqual(this.f7102e, bVar.f7102e) && Intrinsics.areEqual(this.f7103f, bVar.f7103f);
        }
        return false;
    }

    public final f f() {
        return this.f7102e;
    }

    public final int hashCode() {
        C0130b c0130b = this.f7098a;
        int hashCode = (c0130b == null ? 0 : c0130b.hashCode()) * 31;
        a aVar = this.f7099b;
        int hashCode2 = (hashCode + (aVar == null ? 0 : aVar.hashCode())) * 31;
        c cVar = this.f7100c;
        int hashCode3 = (hashCode2 + (cVar == null ? 0 : cVar.hashCode())) * 31;
        d dVar = this.f7101d;
        int hashCode4 = (hashCode3 + (dVar == null ? 0 : dVar.hashCode())) * 31;
        f fVar = this.f7102e;
        int hashCode5 = (hashCode4 + (fVar == null ? 0 : fVar.hashCode())) * 31;
        e eVar = this.f7103f;
        return hashCode5 + (eVar != null ? eVar.hashCode() : 0);
    }

    public final String toString() {
        return h0.a("Config(appsflyerConfig=").append(this.f7098a).append(", adjustConfig=").append(this.f7099b).append(", facebookConfig=").append(this.f7100c).append(", firebaseConfig=").append(this.f7101d).append(", stackAnalyticConfig=").append(this.f7102e).append(", sentryAnalyticConfig=").append(this.f7103f).append(')').toString();
    }
}
