package com.yandex.metrica.plugins;
/* loaded from: classes5.dex */
public class StackTraceItem {

    /* renamed from: a  reason: collision with root package name */
    private final String f16299a;

    /* renamed from: b  reason: collision with root package name */
    private final String f16300b;

    /* renamed from: c  reason: collision with root package name */
    private final Integer f16301c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f16302d;

    /* renamed from: e  reason: collision with root package name */
    private final String f16303e;

    /* loaded from: classes5.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f16304a;

        /* renamed from: b  reason: collision with root package name */
        private String f16305b;

        /* renamed from: c  reason: collision with root package name */
        private Integer f16306c;

        /* renamed from: d  reason: collision with root package name */
        private Integer f16307d;

        /* renamed from: e  reason: collision with root package name */
        private String f16308e;

        public StackTraceItem build() {
            return new StackTraceItem(this.f16304a, this.f16305b, this.f16306c, this.f16307d, this.f16308e);
        }

        public Builder withClassName(String str) {
            this.f16304a = str;
            return this;
        }

        public Builder withColumn(Integer num) {
            this.f16307d = num;
            return this;
        }

        public Builder withFileName(String str) {
            this.f16305b = str;
            return this;
        }

        public Builder withLine(Integer num) {
            this.f16306c = num;
            return this;
        }

        public Builder withMethodName(String str) {
            this.f16308e = str;
            return this;
        }
    }

    public String getClassName() {
        return this.f16299a;
    }

    public Integer getColumn() {
        return this.f16302d;
    }

    public String getFileName() {
        return this.f16300b;
    }

    public Integer getLine() {
        return this.f16301c;
    }

    public String getMethodName() {
        return this.f16303e;
    }

    private StackTraceItem(String str, String str2, Integer num, Integer num2, String str3) {
        this.f16299a = str;
        this.f16300b = str2;
        this.f16301c = num;
        this.f16302d = num2;
        this.f16303e = str3;
    }
}
