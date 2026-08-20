package io.bidmachine.analytics.entity;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes5.dex */
public class Event {

    /* renamed from: b  reason: collision with root package name */
    public final String f16367b;

    /* renamed from: a  reason: collision with root package name */
    public final long f16366a = System.currentTimeMillis();

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, String> f16368c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, Double> f16369d = new HashMap();

    public Event(String str) {
        this.f16367b = str;
    }

    public Event addDimension(String str, String str2) {
        this.f16368c.put(str, str2);
        return this;
    }

    public Event addMetric(String str, double d2) {
        this.f16369d.put(str, Double.valueOf(d2));
        return this;
    }

    public Map<String, String> getDimensions() {
        return this.f16368c;
    }

    public Map<String, Double> getMetrics() {
        return this.f16369d;
    }

    public String getName() {
        return this.f16367b;
    }

    public long getTimestamp() {
        return this.f16366a;
    }

    public Event setDimensions(Map<String, String> map) {
        this.f16368c.clear();
        this.f16368c.putAll(map);
        return this;
    }

    public Event setMetrics(Map<String, Double> map) {
        this.f16369d.clear();
        this.f16369d.putAll(map);
        return this;
    }
}
