package com.yandex.metrica;

import com.yandex.metrica.ReporterConfig;
import com.yandex.metrica.impl.ob.A2;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class e extends ReporterConfig {

    /* renamed from: a  reason: collision with root package name */
    public final Integer f12507a;

    /* renamed from: b  reason: collision with root package name */
    public final Integer f12508b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<String, String> f12509c;

    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        ReporterConfig.Builder f12510a;

        /* renamed from: b  reason: collision with root package name */
        Integer f12511b;

        /* renamed from: c  reason: collision with root package name */
        Integer f12512c;

        /* renamed from: d  reason: collision with root package name */
        LinkedHashMap<String, String> f12513d = new LinkedHashMap<>();

        public a(String str) {
            this.f12510a = ReporterConfig.newConfigBuilder(str);
        }

        public a a(int i) {
            this.f12510a.withMaxReportsInDatabaseCount(i);
            return this;
        }

        public e a() {
            return new e(this);
        }
    }

    e(a aVar) {
        super(aVar.f12510a);
        this.f12508b = aVar.f12511b;
        this.f12507a = aVar.f12512c;
        LinkedHashMap<String, String> linkedHashMap = aVar.f12513d;
        this.f12509c = linkedHashMap == null ? null : A2.e(linkedHashMap);
    }

    public static e a(ReporterConfig reporterConfig) {
        if (reporterConfig instanceof e) {
            return (e) reporterConfig;
        }
        return new e(reporterConfig);
    }

    public static a a(e eVar) {
        a aVar = new a(eVar.apiKey);
        if (A2.a(eVar.sessionTimeout)) {
            aVar.f12510a.withSessionTimeout(eVar.sessionTimeout.intValue());
        }
        if (A2.a(eVar.logs) && eVar.logs.booleanValue()) {
            aVar.f12510a.withLogs();
        }
        if (A2.a(eVar.statisticsSending)) {
            aVar.f12510a.withStatisticsSending(eVar.statisticsSending.booleanValue());
        }
        if (A2.a(eVar.maxReportsInDatabaseCount)) {
            aVar.f12510a.withMaxReportsInDatabaseCount(eVar.maxReportsInDatabaseCount.intValue());
        }
        if (A2.a(eVar.f12507a)) {
            aVar.f12512c = Integer.valueOf(eVar.f12507a.intValue());
        }
        if (A2.a(eVar.f12508b)) {
            aVar.f12511b = Integer.valueOf(eVar.f12508b.intValue());
        }
        if (A2.a((Object) eVar.f12509c)) {
            for (Map.Entry<String, String> entry : eVar.f12509c.entrySet()) {
                aVar.f12513d.put(entry.getKey(), entry.getValue());
            }
        }
        if (A2.a((Object) eVar.userProfileID)) {
            aVar.f12510a.withUserProfileID(eVar.userProfileID);
        }
        return aVar;
    }

    private e(ReporterConfig reporterConfig) {
        super(reporterConfig);
        if (reporterConfig instanceof e) {
            e eVar = (e) reporterConfig;
            this.f12507a = eVar.f12507a;
            this.f12508b = eVar.f12508b;
            this.f12509c = eVar.f12509c;
            return;
        }
        this.f12507a = null;
        this.f12508b = null;
        this.f12509c = null;
    }

    public static a a(String str) {
        return new a(str);
    }
}
