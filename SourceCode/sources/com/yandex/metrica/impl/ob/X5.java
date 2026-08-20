package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class X5 {

    /* renamed from: a  reason: collision with root package name */
    private final EnumC1529f6 f14229a;

    /* renamed from: b  reason: collision with root package name */
    private final Long f14230b;

    /* renamed from: c  reason: collision with root package name */
    private final Long f14231c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f14232d;

    /* renamed from: e  reason: collision with root package name */
    private final Long f14233e;

    /* renamed from: f  reason: collision with root package name */
    private final Boolean f14234f;

    /* renamed from: g  reason: collision with root package name */
    private final Long f14235g;

    /* renamed from: h  reason: collision with root package name */
    private final Long f14236h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public Long f14237a;

        /* renamed from: b  reason: collision with root package name */
        private EnumC1529f6 f14238b;

        /* renamed from: c  reason: collision with root package name */
        private Long f14239c;

        /* renamed from: d  reason: collision with root package name */
        private Long f14240d;

        /* renamed from: e  reason: collision with root package name */
        private Integer f14241e;

        /* renamed from: f  reason: collision with root package name */
        private Long f14242f;

        /* renamed from: g  reason: collision with root package name */
        private Boolean f14243g;

        /* renamed from: h  reason: collision with root package name */
        private Long f14244h;

        private b(Z5 z5) {
            this.f14238b = z5.b();
            this.f14241e = z5.a();
        }

        public b a(Long l) {
            this.f14240d = l;
            return this;
        }

        public b b(Long l) {
            this.f14242f = l;
            return this;
        }

        public b c(Long l) {
            this.f14239c = l;
            return this;
        }

        public b d(Long l) {
            this.f14244h = l;
            return this;
        }

        public b a(Boolean bool) {
            this.f14243g = bool;
            return this;
        }
    }

    public EnumC1529f6 a() {
        return this.f14229a;
    }

    public long b(long j) {
        Long l = this.f14233e;
        return l == null ? j : l.longValue();
    }

    public long c(long j) {
        Long l = this.f14230b;
        return l == null ? j : l.longValue();
    }

    public long d(long j) {
        Long l = this.f14236h;
        return l == null ? j : l.longValue();
    }

    public long e(long j) {
        Long l = this.f14235g;
        return l == null ? j : l.longValue();
    }

    private X5(b bVar) {
        this.f14229a = bVar.f14238b;
        this.f14232d = bVar.f14241e;
        this.f14230b = bVar.f14239c;
        this.f14231c = bVar.f14240d;
        this.f14233e = bVar.f14242f;
        this.f14234f = bVar.f14243g;
        this.f14235g = bVar.f14244h;
        this.f14236h = bVar.f14237a;
    }

    public long a(long j) {
        Long l = this.f14231c;
        return l == null ? j : l.longValue();
    }

    public int a(int i) {
        Integer num = this.f14232d;
        return num == null ? i : num.intValue();
    }

    public boolean a(boolean z) {
        Boolean bool = this.f14234f;
        return bool == null ? z : bool.booleanValue();
    }
}
