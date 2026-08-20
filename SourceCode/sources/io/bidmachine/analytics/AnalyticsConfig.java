package io.bidmachine.analytics;

import io.bidmachine.analytics.entity.AnalyticsMetricConfig;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class AnalyticsConfig {

    /* renamed from: a  reason: collision with root package name */
    public final String f16351a;

    /* renamed from: b  reason: collision with root package name */
    public final String f16352b;

    /* renamed from: c  reason: collision with root package name */
    public final long f16353c;

    /* renamed from: d  reason: collision with root package name */
    public final int f16354d;

    /* renamed from: e  reason: collision with root package name */
    public final int f16355e;

    /* renamed from: f  reason: collision with root package name */
    public final List<AnalyticsMetricConfig> f16356f;

    /* loaded from: classes5.dex */
    public static final class Builder {

        /* renamed from: a  reason: collision with root package name */
        public final String f16357a;

        /* renamed from: b  reason: collision with root package name */
        public final String f16358b;

        /* renamed from: d  reason: collision with root package name */
        public int f16360d = 30;

        /* renamed from: e  reason: collision with root package name */
        public int f16361e = 4;

        /* renamed from: f  reason: collision with root package name */
        public int f16362f = 8;

        /* renamed from: c  reason: collision with root package name */
        public final List<AnalyticsMetricConfig> f16359c = new ArrayList();

        public Builder(String str, String str2) {
            this.f16357a = str;
            this.f16358b = str2;
        }

        public Builder addAnalyticsMetricConfig(AnalyticsMetricConfig analyticsMetricConfig) {
            this.f16359c.add(analyticsMetricConfig);
            return this;
        }

        public AnalyticsConfig build() {
            return new AnalyticsConfig(this.f16357a, this.f16358b, this.f16360d, this.f16361e, this.f16362f, this.f16359c);
        }

        public Builder setAnalyticsMetricConfigList(List<AnalyticsMetricConfig> list) {
            this.f16359c.clear();
            this.f16359c.addAll(list);
            return this;
        }

        public Builder setEventBatchSize(int i) {
            return setEventBatchSize(i, null);
        }

        public Builder setEventBatchSize(int i, Integer num) {
            int i2;
            this.f16361e = i;
            if (num == null || num.intValue() < i) {
                i2 = i * 2;
                if (i2 < 8) {
                    i2 = 8;
                }
            } else {
                i2 = num.intValue();
            }
            this.f16362f = i2;
            return this;
        }

        public Builder setIntervalSec(int i) {
            this.f16360d = i;
            return this;
        }
    }

    private AnalyticsConfig(String str, String str2, int i, int i2, int i3, List<AnalyticsMetricConfig> list) {
        this.f16351a = str;
        this.f16352b = str2;
        this.f16353c = i * 1000;
        this.f16354d = i2;
        this.f16355e = i3;
        this.f16356f = list;
    }

    public List<AnalyticsMetricConfig> getAnalyticsMetricConfigList() {
        return this.f16356f;
    }

    public String getContext() {
        return this.f16352b;
    }

    public int getEventBatchMaxSize() {
        return this.f16355e;
    }

    public int getEventBatchSize() {
        return this.f16354d;
    }

    public long getIntervalMs() {
        return this.f16353c;
    }

    public String getRequestUrl() {
        return this.f16351a;
    }
}
