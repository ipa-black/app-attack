package com.yandex.metrica;

import com.yandex.metrica.impl.ob.Gn;
import com.yandex.metrica.impl.ob.Hn;
import com.yandex.metrica.impl.ob.Kn;
import java.util.Currency;
/* loaded from: classes3.dex */
public class Revenue {
    public final Currency currency;
    public final String payload;
    @Deprecated
    public final Double price;
    public final Long priceMicros;
    public final String productID;
    public final Integer quantity;
    public final Receipt receipt;

    /* loaded from: classes3.dex */
    public static class Receipt {
        public final String data;
        public final String signature;

        /* loaded from: classes3.dex */
        public static class Builder {

            /* renamed from: a  reason: collision with root package name */
            private String f12333a;

            /* renamed from: b  reason: collision with root package name */
            private String f12334b;

            Builder() {
            }

            public Receipt build() {
                return new Receipt(this);
            }

            public Builder withData(String str) {
                this.f12333a = str;
                return this;
            }

            public Builder withSignature(String str) {
                this.f12334b = str;
                return this;
            }
        }

        public static Builder newBuilder() {
            return new Builder();
        }

        private Receipt(Builder builder) {
            this.data = builder.f12333a;
            this.signature = builder.f12334b;
        }
    }

    @Deprecated
    public static Builder newBuilder(double d2, Currency currency) {
        return new Builder(d2, currency);
    }

    public static Builder newBuilderWithMicros(long j, Currency currency) {
        return new Builder(j, currency);
    }

    private Revenue(Builder builder) {
        this.price = builder.f12326a;
        this.priceMicros = builder.f12327b;
        this.currency = builder.f12328c;
        this.quantity = builder.f12329d;
        this.productID = builder.f12330e;
        this.payload = builder.f12331f;
        this.receipt = builder.f12332g;
    }

    /* loaded from: classes3.dex */
    public static class Builder {

        /* renamed from: h  reason: collision with root package name */
        private static final Kn<Currency> f12325h = new Hn(new Gn("revenue currency"));

        /* renamed from: a  reason: collision with root package name */
        Double f12326a;

        /* renamed from: b  reason: collision with root package name */
        Long f12327b;

        /* renamed from: c  reason: collision with root package name */
        Currency f12328c;

        /* renamed from: d  reason: collision with root package name */
        Integer f12329d;

        /* renamed from: e  reason: collision with root package name */
        String f12330e;

        /* renamed from: f  reason: collision with root package name */
        String f12331f;

        /* renamed from: g  reason: collision with root package name */
        Receipt f12332g;

        Builder(double d2, Currency currency) {
            ((Hn) f12325h).a(currency);
            this.f12326a = Double.valueOf(d2);
            this.f12328c = currency;
        }

        public Revenue build() {
            return new Revenue(this);
        }

        public Builder withPayload(String str) {
            this.f12331f = str;
            return this;
        }

        public Builder withProductID(String str) {
            this.f12330e = str;
            return this;
        }

        public Builder withQuantity(Integer num) {
            this.f12329d = num;
            return this;
        }

        public Builder withReceipt(Receipt receipt) {
            this.f12332g = receipt;
            return this;
        }

        Builder(long j, Currency currency) {
            ((Hn) f12325h).a(currency);
            this.f12327b = Long.valueOf(j);
            this.f12328c = currency;
        }
    }
}
