package com.yandex.metrica;

import com.yandex.metrica.impl.ob.A2;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes3.dex */
public class AdRevenue {
    public final String adNetwork;
    public final String adPlacementId;
    public final String adPlacementName;
    public final BigDecimal adRevenue;
    public final AdType adType;
    public final String adUnitId;
    public final String adUnitName;
    public final Currency currency;
    public final Map<String, String> payload;
    public final String precision;

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private final BigDecimal f12286a;

        /* renamed from: b  reason: collision with root package name */
        private final Currency f12287b;

        /* renamed from: c  reason: collision with root package name */
        private AdType f12288c;

        /* renamed from: d  reason: collision with root package name */
        private String f12289d;

        /* renamed from: e  reason: collision with root package name */
        private String f12290e;

        /* renamed from: f  reason: collision with root package name */
        private String f12291f;

        /* renamed from: g  reason: collision with root package name */
        private String f12292g;

        /* renamed from: h  reason: collision with root package name */
        private String f12293h;
        private String i;
        private Map<String, String> j;

        public AdRevenue build() {
            return new AdRevenue(this.f12286a, this.f12287b, this.f12288c, this.f12289d, this.f12290e, this.f12291f, this.f12292g, this.f12293h, this.i, this.j);
        }

        public Builder withAdNetwork(String str) {
            this.f12289d = str;
            return this;
        }

        public Builder withAdPlacementId(String str) {
            this.f12292g = str;
            return this;
        }

        public Builder withAdPlacementName(String str) {
            this.f12293h = str;
            return this;
        }

        public Builder withAdType(AdType adType) {
            this.f12288c = adType;
            return this;
        }

        public Builder withAdUnitId(String str) {
            this.f12290e = str;
            return this;
        }

        public Builder withAdUnitName(String str) {
            this.f12291f = str;
            return this;
        }

        public Builder withPayload(Map<String, String> map) {
            this.j = (map == null || A2.b(map)) ? null : new HashMap(map);
            return this;
        }

        public Builder withPrecision(String str) {
            this.i = str;
            return this;
        }

        private Builder(BigDecimal bigDecimal, Currency currency) {
            this.f12286a = bigDecimal;
            this.f12287b = currency;
        }
    }

    public static Builder newBuilder(BigDecimal bigDecimal, Currency currency) {
        return new Builder(bigDecimal, currency);
    }

    private AdRevenue(BigDecimal bigDecimal, Currency currency, AdType adType, String str, String str2, String str3, String str4, String str5, String str6, Map<String, String> map) {
        this.adRevenue = bigDecimal;
        this.currency = currency;
        this.adType = adType;
        this.adNetwork = str;
        this.adUnitId = str2;
        this.adUnitName = str3;
        this.adPlacementId = str4;
        this.adPlacementName = str5;
        this.precision = str6;
        this.payload = map == null ? null : A2.d(map);
    }

    public static Builder newBuilder(long j, Currency currency) {
        return new Builder(A2.a(j), currency);
    }

    public static Builder newBuilder(double d2, Currency currency) {
        return new Builder(new BigDecimal(A2.a(d2, 0.0d)), currency);
    }
}
