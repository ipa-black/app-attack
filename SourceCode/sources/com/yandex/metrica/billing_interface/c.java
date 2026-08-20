package com.yandex.metrica.billing_interface;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes3.dex */
public class c {

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f12486c = Pattern.compile("P(\\d+)(\\S+)");

    /* renamed from: a  reason: collision with root package name */
    public final int f12487a;

    /* renamed from: b  reason: collision with root package name */
    public final a f12488b;

    /* loaded from: classes3.dex */
    public enum a {
        TIME_UNIT_UNKNOWN,
        DAY,
        WEEK,
        MONTH,
        YEAR
    }

    public c(int i, a aVar) {
        this.f12487a = i;
        this.f12488b = aVar;
    }

    public static c a(String str) {
        a aVar;
        Matcher matcher = f12486c.matcher(str);
        if (matcher.find()) {
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            if (group == null || group2 == null) {
                return null;
            }
            try {
                int parseInt = Integer.parseInt(group);
                char charAt = group2.charAt(0);
                if (charAt == 'D') {
                    aVar = a.DAY;
                } else if (charAt == 'M') {
                    aVar = a.MONTH;
                } else if (charAt == 'W') {
                    aVar = a.WEEK;
                } else if (charAt != 'Y') {
                    aVar = a.TIME_UNIT_UNKNOWN;
                } else {
                    aVar = a.YEAR;
                }
                return new c(parseInt, aVar);
            } catch (Throwable unused) {
                return null;
            }
        }
        return null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f12487a == cVar.f12487a && this.f12488b == cVar.f12488b;
    }

    public int hashCode() {
        return (this.f12487a * 31) + this.f12488b.hashCode();
    }

    public String toString() {
        return "Period{number=" + this.f12487a + "timeUnit=" + this.f12488b + "}";
    }
}
