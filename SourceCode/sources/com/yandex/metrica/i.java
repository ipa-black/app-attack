package com.yandex.metrica;

import android.location.Location;
import com.yandex.metrica.YandexMetricaConfig;
import com.yandex.metrica.impl.ob.A2;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes3.dex */
public class i extends YandexMetricaConfig {

    /* renamed from: a  reason: collision with root package name */
    public final String f12560a;

    /* renamed from: b  reason: collision with root package name */
    public final Map<String, String> f12561b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12562c;

    /* renamed from: d  reason: collision with root package name */
    public final List<String> f12563d;

    /* renamed from: e  reason: collision with root package name */
    public final Integer f12564e;

    /* renamed from: f  reason: collision with root package name */
    public final Integer f12565f;

    /* renamed from: g  reason: collision with root package name */
    public final Integer f12566g;

    /* renamed from: h  reason: collision with root package name */
    public final Map<String, String> f12567h;
    public final Boolean i;
    public final Boolean j;
    public final Boolean k;
    public final c l;

    /* loaded from: classes3.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private YandexMetricaConfig.Builder f12568a;

        /* renamed from: b  reason: collision with root package name */
        private String f12569b;

        /* renamed from: c  reason: collision with root package name */
        private List<String> f12570c;

        /* renamed from: d  reason: collision with root package name */
        private Integer f12571d;

        /* renamed from: e  reason: collision with root package name */
        private Map<String, String> f12572e;

        /* renamed from: f  reason: collision with root package name */
        public String f12573f;

        /* renamed from: g  reason: collision with root package name */
        private Integer f12574g;

        /* renamed from: h  reason: collision with root package name */
        private Integer f12575h;
        private LinkedHashMap<String, String> i = new LinkedHashMap<>();
        private Boolean j;
        private Boolean k;
        private Boolean l;
        private c m;

        protected b(String str) {
            this.f12568a = YandexMetricaConfig.newConfigBuilder(str);
        }

        static /* synthetic */ void c(b bVar) {
        }

        static /* synthetic */ void f(b bVar) {
        }

        public b c(String str) {
            this.f12568a.withUserProfileID(str);
            return this;
        }

        public b f(boolean z) {
            this.f12568a.withNativeCrashReporting(z);
            return this;
        }

        public b a(String str) {
            this.f12568a.withAppVersion(str);
            return this;
        }

        public b b(boolean z) {
            this.l = Boolean.valueOf(z);
            return this;
        }

        public b c(int i) {
            this.f12575h = Integer.valueOf(i);
            return this;
        }

        public b d(boolean z) {
            this.f12568a.withCrashReporting(z);
            return this;
        }

        public b e(int i) {
            this.f12568a.withSessionTimeout(i);
            return this;
        }

        public b g(boolean z) {
            this.k = Boolean.valueOf(z);
            return this;
        }

        public b h(boolean z) {
            this.f12568a.withRevenueAutoTrackingEnabled(z);
            return this;
        }

        public b i(boolean z) {
            this.f12568a.withSessionsAutoTrackingEnabled(z);
            return this;
        }

        public b j(boolean z) {
            this.f12568a.withStatisticsSending(z);
            return this;
        }

        public b a(Location location) {
            this.f12568a.withLocation(location);
            return this;
        }

        public b b() {
            this.f12568a.withLogs();
            return this;
        }

        public b c(boolean z) {
            this.f12568a.withAppOpenTrackingEnabled(z);
            return this;
        }

        public b d(int i) {
            this.f12568a.withMaxReportsInDatabaseCount(i);
            return this;
        }

        public b e(boolean z) {
            this.f12568a.withLocationTracking(z);
            return this;
        }

        public b a(List<String> list) {
            this.f12570c = list;
            return this;
        }

        public b b(String str, String str2) {
            this.f12568a.withErrorEnvironmentValue(str, str2);
            return this;
        }

        public b a(int i) {
            if (i >= 0) {
                this.f12571d = Integer.valueOf(i);
                return this;
            }
            throw new IllegalArgumentException(String.format(Locale.US, "Invalid %1$s. %1$s should be positive.", "App Build Number"));
        }

        public b b(String str) {
            this.f12569b = str;
            return this;
        }

        public b b(int i) {
            this.f12574g = Integer.valueOf(i);
            return this;
        }

        public b a(Map<String, String> map, Boolean bool) {
            this.j = bool;
            this.f12572e = map;
            return this;
        }

        public b a(PreloadInfo preloadInfo) {
            this.f12568a.withPreloadInfo(preloadInfo);
            return this;
        }

        public b a(boolean z) {
            this.f12568a.handleFirstActivationAsUpdate(z);
            return this;
        }

        public b a(String str, String str2) {
            this.i.put(str, str2);
            return this;
        }

        public b a(c cVar) {
            this.m = cVar;
            return this;
        }

        public i a() {
            return new i(this);
        }
    }

    public static b a(String str) {
        return new b(str);
    }

    public i(YandexMetricaConfig yandexMetricaConfig) {
        super(yandexMetricaConfig);
        this.f12560a = null;
        this.f12561b = null;
        this.f12564e = null;
        this.f12565f = null;
        this.f12566g = null;
        this.f12562c = null;
        this.f12567h = null;
        this.i = null;
        this.j = null;
        this.f12563d = null;
        this.k = null;
        this.l = null;
    }

    public static b a(YandexMetricaConfig yandexMetricaConfig) {
        b bVar = new b(yandexMetricaConfig.apiKey);
        if (A2.a((Object) yandexMetricaConfig.appVersion)) {
            bVar.a(yandexMetricaConfig.appVersion);
        }
        if (A2.a(yandexMetricaConfig.sessionTimeout)) {
            bVar.e(yandexMetricaConfig.sessionTimeout.intValue());
        }
        if (A2.a(yandexMetricaConfig.crashReporting)) {
            bVar.d(yandexMetricaConfig.crashReporting.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.nativeCrashReporting)) {
            bVar.f(yandexMetricaConfig.nativeCrashReporting.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.location)) {
            bVar.a(yandexMetricaConfig.location);
        }
        if (A2.a(yandexMetricaConfig.locationTracking)) {
            bVar.e(yandexMetricaConfig.locationTracking.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.logs) && yandexMetricaConfig.logs.booleanValue()) {
            bVar.b();
        }
        if (A2.a(yandexMetricaConfig.preloadInfo)) {
            bVar.a(yandexMetricaConfig.preloadInfo);
        }
        if (A2.a(yandexMetricaConfig.firstActivationAsUpdate)) {
            bVar.a(yandexMetricaConfig.firstActivationAsUpdate.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.statisticsSending)) {
            bVar.j(yandexMetricaConfig.statisticsSending.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.maxReportsInDatabaseCount)) {
            bVar.d(yandexMetricaConfig.maxReportsInDatabaseCount.intValue());
        }
        if (A2.a((Object) yandexMetricaConfig.errorEnvironment)) {
            for (Map.Entry<String, String> entry : yandexMetricaConfig.errorEnvironment.entrySet()) {
                bVar.b(entry.getKey(), entry.getValue());
            }
        }
        if (A2.a((Object) yandexMetricaConfig.userProfileID)) {
            bVar.c(yandexMetricaConfig.userProfileID);
        }
        if (A2.a(yandexMetricaConfig.revenueAutoTrackingEnabled)) {
            bVar.h(yandexMetricaConfig.revenueAutoTrackingEnabled.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.sessionsAutoTrackingEnabled)) {
            bVar.i(yandexMetricaConfig.sessionsAutoTrackingEnabled.booleanValue());
        }
        if (A2.a(yandexMetricaConfig.appOpenTrackingEnabled)) {
            bVar.c(yandexMetricaConfig.appOpenTrackingEnabled.booleanValue());
        }
        if (yandexMetricaConfig instanceof i) {
            i iVar = (i) yandexMetricaConfig;
            if (A2.a((Object) iVar.f12563d)) {
                bVar.a(iVar.f12563d);
            }
            if (A2.a(iVar.l)) {
                bVar.a(iVar.l);
            }
            A2.a((Object) null);
        }
        return bVar;
    }

    private i(b bVar) {
        super(bVar.f12568a);
        this.f12564e = bVar.f12571d;
        List list = bVar.f12570c;
        this.f12563d = list == null ? null : A2.c(list);
        this.f12560a = bVar.f12569b;
        Map map = bVar.f12572e;
        this.f12561b = map != null ? A2.e(map) : null;
        this.f12566g = bVar.f12575h;
        this.f12565f = bVar.f12574g;
        this.f12562c = bVar.f12573f;
        this.f12567h = A2.e(bVar.i);
        this.i = bVar.j;
        this.j = bVar.k;
        b.c(bVar);
        this.k = bVar.l;
        this.l = bVar.m;
        b.f(bVar);
    }
}
