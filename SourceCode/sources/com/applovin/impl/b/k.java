package com.applovin.impl.b;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.s;
import com.applovin.impl.sdk.v;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private String f4570a;

    /* renamed from: b  reason: collision with root package name */
    private String f4571b;

    /* renamed from: c  reason: collision with root package name */
    private String f4572c;

    /* renamed from: d  reason: collision with root package name */
    private long f4573d = -1;

    /* renamed from: e  reason: collision with root package name */
    private int f4574e = -1;

    private k() {
    }

    private static int a(String str, e eVar) {
        if (TtmlNode.START.equalsIgnoreCase(str)) {
            return 0;
        }
        if ("firstQuartile".equalsIgnoreCase(str)) {
            return 25;
        }
        if ("midpoint".equalsIgnoreCase(str)) {
            return 50;
        }
        if ("thirdQuartile".equalsIgnoreCase(str)) {
            return 75;
        }
        if ("complete".equalsIgnoreCase(str)) {
            if (eVar != null) {
                return eVar.h();
            }
            return 95;
        }
        return -1;
    }

    public static k a(s sVar, e eVar, com.applovin.impl.sdk.n nVar) {
        List<String> explode;
        int size;
        TimeUnit timeUnit;
        long seconds;
        if (sVar != null) {
            if (nVar != null) {
                try {
                    String c2 = sVar.c();
                    if (!StringUtils.isValidString(c2)) {
                        nVar.D();
                        if (v.a()) {
                            nVar.D().e("VastTracker", "Unable to create tracker. Could not find URL.");
                            return null;
                        }
                        return null;
                    }
                    k kVar = new k();
                    kVar.f4572c = c2;
                    kVar.f4570a = sVar.b().get("id");
                    kVar.f4571b = sVar.b().get("event");
                    kVar.f4574e = a(kVar.a(), eVar);
                    String str = sVar.b().get(TypedValues.CycleType.S_WAVE_OFFSET);
                    if (StringUtils.isValidString(str)) {
                        String trim = str.trim();
                        if (trim.contains("%")) {
                            kVar.f4574e = StringUtils.parseInt(trim.substring(0, trim.length() - 1));
                        } else if (trim.contains(":") && (size = (explode = CollectionUtils.explode(trim, ":")).size()) > 0) {
                            int i = size - 1;
                            long j = 0;
                            for (int i2 = i; i2 >= 0; i2--) {
                                String str2 = explode.get(i2);
                                if (StringUtils.isNumeric(str2)) {
                                    int parseInt = Integer.parseInt(str2);
                                    if (i2 == i) {
                                        seconds = parseInt;
                                    } else {
                                        if (i2 == size - 2) {
                                            timeUnit = TimeUnit.MINUTES;
                                        } else if (i2 == size - 3) {
                                            timeUnit = TimeUnit.HOURS;
                                        }
                                        seconds = timeUnit.toSeconds(parseInt);
                                    }
                                    j += seconds;
                                }
                            }
                            kVar.f4573d = j;
                            kVar.f4574e = -1;
                        }
                    }
                    return kVar;
                } catch (Throwable th) {
                    nVar.D();
                    if (v.a()) {
                        nVar.D().b("VastTracker", "Error occurred while initializing", th);
                        return null;
                    }
                    return null;
                }
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No node specified.");
    }

    public String a() {
        return this.f4571b;
    }

    public boolean a(long j, int i) {
        long j2 = this.f4573d;
        boolean z = j2 >= 0;
        boolean z2 = j >= j2;
        int i2 = this.f4574e;
        boolean z3 = i2 >= 0;
        boolean z4 = i >= i2;
        if (z && z2) {
            return true;
        }
        return z3 && z4;
    }

    public String b() {
        return this.f4572c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            if (this.f4573d == kVar.f4573d && this.f4574e == kVar.f4574e) {
                String str = this.f4570a;
                if (str == null ? kVar.f4570a == null : str.equals(kVar.f4570a)) {
                    String str2 = this.f4571b;
                    if (str2 == null ? kVar.f4571b == null : str2.equals(kVar.f4571b)) {
                        return this.f4572c.equals(kVar.f4572c);
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        String str = this.f4570a;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f4571b;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        long j = this.f4573d;
        return ((((((hashCode + hashCode2) * 31) + this.f4572c.hashCode()) * 31) + ((int) (j ^ (j >>> 32)))) * 31) + this.f4574e;
    }

    public String toString() {
        return "VastTracker{identifier='" + this.f4570a + "', event='" + this.f4571b + "', uriString='" + this.f4572c + "', offsetSeconds=" + this.f4573d + ", offsetPercent=" + this.f4574e + '}';
    }
}
