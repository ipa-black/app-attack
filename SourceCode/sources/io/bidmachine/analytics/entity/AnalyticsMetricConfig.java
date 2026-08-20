package io.bidmachine.analytics.entity;

import java.util.List;
/* loaded from: classes5.dex */
public class AnalyticsMetricConfig {

    /* renamed from: a  reason: collision with root package name */
    public final String f16363a;

    /* renamed from: b  reason: collision with root package name */
    public final List<String> f16364b;

    /* renamed from: c  reason: collision with root package name */
    public final List<String> f16365c;

    public AnalyticsMetricConfig(String str, List<String> list, List<String> list2) {
        this.f16363a = str;
        this.f16364b = list;
        this.f16365c = list2;
    }

    public List<String> getDimensions() {
        return this.f16364b;
    }

    public String getEventName() {
        return this.f16363a;
    }

    public List<String> getMetrics() {
        return this.f16365c;
    }
}
