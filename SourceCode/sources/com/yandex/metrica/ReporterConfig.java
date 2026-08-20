package com.yandex.metrica;

import com.yandex.metrica.impl.ob.A2;
import com.yandex.metrica.impl.ob.Hn;
import com.yandex.metrica.impl.ob.Kn;
import com.yandex.metrica.impl.ob.Ln;
/* loaded from: classes3.dex */
public class ReporterConfig {
    public final String apiKey;
    public final Boolean logs;
    public final Integer maxReportsInDatabaseCount;
    public final Integer sessionTimeout;
    public final Boolean statisticsSending;
    public final String userProfileID;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: g  reason: collision with root package name */
        private static final Kn<String> f12318g = new Hn(new Ln());

        /* renamed from: a  reason: collision with root package name */
        private final String f12319a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f12320b;

        /* renamed from: c  reason: collision with root package name */
        private Boolean f12321c;

        /* renamed from: d  reason: collision with root package name */
        private Boolean f12322d;

        /* renamed from: e  reason: collision with root package name */
        private Integer f12323e;

        /* renamed from: f  reason: collision with root package name */
        private String f12324f;

        Builder(String str) {
            ((Hn) f12318g).a(str);
            this.f12319a = str;
        }

        public ReporterConfig build() {
            return new ReporterConfig(this);
        }

        public Builder withLogs() {
            this.f12321c = Boolean.TRUE;
            return this;
        }

        public Builder withMaxReportsInDatabaseCount(int i) {
            this.f12323e = Integer.valueOf(i);
            return this;
        }

        public Builder withSessionTimeout(int i) {
            this.f12320b = Integer.valueOf(i);
            return this;
        }

        public Builder withStatisticsSending(boolean z) {
            this.f12322d = Boolean.valueOf(z);
            return this;
        }

        public Builder withUserProfileID(String str) {
            this.f12324f = str;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReporterConfig(Builder builder) {
        this.apiKey = builder.f12319a;
        this.sessionTimeout = builder.f12320b;
        this.logs = builder.f12321c;
        this.statisticsSending = builder.f12322d;
        this.maxReportsInDatabaseCount = builder.f12323e;
        this.userProfileID = builder.f12324f;
    }

    public static Builder createBuilderFromConfig(ReporterConfig reporterConfig) {
        Builder newConfigBuilder = newConfigBuilder(reporterConfig.apiKey);
        if (A2.a(reporterConfig.sessionTimeout)) {
            newConfigBuilder.withSessionTimeout(reporterConfig.sessionTimeout.intValue());
        }
        if (A2.a(reporterConfig.logs) && reporterConfig.logs.booleanValue()) {
            newConfigBuilder.withLogs();
        }
        if (A2.a(reporterConfig.statisticsSending)) {
            newConfigBuilder.withStatisticsSending(reporterConfig.statisticsSending.booleanValue());
        }
        if (A2.a(reporterConfig.maxReportsInDatabaseCount)) {
            newConfigBuilder.withMaxReportsInDatabaseCount(reporterConfig.maxReportsInDatabaseCount.intValue());
        }
        if (A2.a((Object) reporterConfig.userProfileID)) {
            newConfigBuilder.withUserProfileID(reporterConfig.userProfileID);
        }
        return newConfigBuilder;
    }

    public static Builder newConfigBuilder(String str) {
        return new Builder(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ReporterConfig(ReporterConfig reporterConfig) {
        this.apiKey = reporterConfig.apiKey;
        this.sessionTimeout = reporterConfig.sessionTimeout;
        this.logs = reporterConfig.logs;
        this.statisticsSending = reporterConfig.statisticsSending;
        this.maxReportsInDatabaseCount = reporterConfig.maxReportsInDatabaseCount;
        this.userProfileID = reporterConfig.userProfileID;
    }
}
