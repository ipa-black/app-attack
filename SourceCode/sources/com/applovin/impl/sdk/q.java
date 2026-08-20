package com.applovin.impl.sdk;

import com.applovin.impl.sdk.utils.CollectionUtils;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    private final String f6020a = UUID.randomUUID().toString();

    /* renamed from: b  reason: collision with root package name */
    private final String f6021b;

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, Object> f6022c;

    /* renamed from: d  reason: collision with root package name */
    private final long f6023d;

    public q(String str, Map<String, String> map, Map<String, Object> map2) {
        this.f6021b = str;
        Map<String, Object> map3 = CollectionUtils.map();
        this.f6022c = map3;
        map3.putAll(map);
        map3.put("applovin_sdk_super_properties", map2);
        this.f6023d = System.currentTimeMillis();
    }

    public String a() {
        return this.f6021b;
    }

    public Map<String, Object> b() {
        return this.f6022c;
    }

    public long c() {
        return this.f6023d;
    }

    public String d() {
        return this.f6020a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        if (this.f6023d != qVar.f6023d) {
            return false;
        }
        String str = this.f6021b;
        if (str == null ? qVar.f6021b == null : str.equals(qVar.f6021b)) {
            Map<String, Object> map = this.f6022c;
            if (map == null ? qVar.f6022c == null : map.equals(qVar.f6022c)) {
                String str2 = this.f6020a;
                String str3 = qVar.f6020a;
                if (str2 != null) {
                    if (str2.equals(str3)) {
                        return true;
                    }
                } else if (str3 == null) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f6021b;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        Map<String, Object> map = this.f6022c;
        int hashCode2 = map != null ? map.hashCode() : 0;
        long j = this.f6023d;
        int i = (((hashCode + hashCode2) * 31) + ((int) (j ^ (j >>> 32)))) * 31;
        String str2 = this.f6020a;
        return i + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "Event{name='" + this.f6021b + "', id='" + this.f6020a + "', creationTimestampMillis=" + this.f6023d + ", parameters=" + this.f6022c + '}';
    }
}
