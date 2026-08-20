package com.criteo.publisher.f0;

import com.criteo.publisher.f0.n;
/* compiled from: $AutoValue_Metric.java */
/* loaded from: classes2.dex */
abstract class a extends n {

    /* renamed from: a  reason: collision with root package name */
    private final Long f8726a;

    /* renamed from: b  reason: collision with root package name */
    private final Long f8727b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f8728c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f8729d;

    /* renamed from: e  reason: collision with root package name */
    private final Long f8730e;

    /* renamed from: f  reason: collision with root package name */
    private final String f8731f;

    /* renamed from: g  reason: collision with root package name */
    private final String f8732g;

    /* renamed from: h  reason: collision with root package name */
    private final Integer f8733h;
    private final Integer i;
    private final boolean j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Long l, Long l2, boolean z, boolean z2, Long l3, String str, String str2, Integer num, Integer num2, boolean z3) {
        this.f8726a = l;
        this.f8727b = l2;
        this.f8728c = z;
        this.f8729d = z2;
        this.f8730e = l3;
        if (str == null) {
            throw new NullPointerException("Null impressionId");
        }
        this.f8731f = str;
        this.f8732g = str2;
        this.f8733h = num;
        this.i = num2;
        this.j = z3;
    }

    @Override // com.criteo.publisher.f0.n
    Long c() {
        return this.f8726a;
    }

    @Override // com.criteo.publisher.f0.n
    Long b() {
        return this.f8727b;
    }

    @Override // com.criteo.publisher.f0.n
    boolean j() {
        return this.f8728c;
    }

    @Override // com.criteo.publisher.f0.n
    boolean i() {
        return this.f8729d;
    }

    @Override // com.criteo.publisher.f0.n
    Long d() {
        return this.f8730e;
    }

    @Override // com.criteo.publisher.f0.n
    String e() {
        return this.f8731f;
    }

    @Override // com.criteo.publisher.f0.n
    String g() {
        return this.f8732g;
    }

    @Override // com.criteo.publisher.f0.n
    Integer h() {
        return this.f8733h;
    }

    @Override // com.criteo.publisher.f0.n
    Integer f() {
        return this.i;
    }

    @Override // com.criteo.publisher.f0.n
    boolean k() {
        return this.j;
    }

    public String toString() {
        return "Metric{cdbCallStartTimestamp=" + this.f8726a + ", cdbCallEndTimestamp=" + this.f8727b + ", cdbCallTimeout=" + this.f8728c + ", cachedBidUsed=" + this.f8729d + ", elapsedTimestamp=" + this.f8730e + ", impressionId=" + this.f8731f + ", requestGroupId=" + this.f8732g + ", zoneId=" + this.f8733h + ", profileId=" + this.i + ", readyToSend=" + this.j + "}";
    }

    public boolean equals(Object obj) {
        Long l;
        String str;
        Integer num;
        Integer num2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            Long l2 = this.f8726a;
            if (l2 != null ? l2.equals(nVar.c()) : nVar.c() == null) {
                Long l3 = this.f8727b;
                if (l3 != null ? l3.equals(nVar.b()) : nVar.b() == null) {
                    if (this.f8728c == nVar.j() && this.f8729d == nVar.i() && ((l = this.f8730e) != null ? l.equals(nVar.d()) : nVar.d() == null) && this.f8731f.equals(nVar.e()) && ((str = this.f8732g) != null ? str.equals(nVar.g()) : nVar.g() == null) && ((num = this.f8733h) != null ? num.equals(nVar.h()) : nVar.h() == null) && ((num2 = this.i) != null ? num2.equals(nVar.f()) : nVar.f() == null) && this.j == nVar.k()) {
                        return true;
                    }
                }
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        Long l = this.f8726a;
        int hashCode = ((l == null ? 0 : l.hashCode()) ^ 1000003) * 1000003;
        Long l2 = this.f8727b;
        int hashCode2 = (((((hashCode ^ (l2 == null ? 0 : l2.hashCode())) * 1000003) ^ (this.f8728c ? 1231 : 1237)) * 1000003) ^ (this.f8729d ? 1231 : 1237)) * 1000003;
        Long l3 = this.f8730e;
        int hashCode3 = (((hashCode2 ^ (l3 == null ? 0 : l3.hashCode())) * 1000003) ^ this.f8731f.hashCode()) * 1000003;
        String str = this.f8732g;
        int hashCode4 = (hashCode3 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        Integer num = this.f8733h;
        int hashCode5 = (hashCode4 ^ (num == null ? 0 : num.hashCode())) * 1000003;
        Integer num2 = this.i;
        return ((hashCode5 ^ (num2 != null ? num2.hashCode() : 0)) * 1000003) ^ (this.j ? 1231 : 1237);
    }

    @Override // com.criteo.publisher.f0.n
    n.a l() {
        return new b(this);
    }

    /* compiled from: $AutoValue_Metric.java */
    /* loaded from: classes2.dex */
    static class b extends n.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f8734a;

        /* renamed from: b  reason: collision with root package name */
        private Long f8735b;

        /* renamed from: c  reason: collision with root package name */
        private Boolean f8736c;

        /* renamed from: d  reason: collision with root package name */
        private Boolean f8737d;

        /* renamed from: e  reason: collision with root package name */
        private Long f8738e;

        /* renamed from: f  reason: collision with root package name */
        private String f8739f;

        /* renamed from: g  reason: collision with root package name */
        private String f8740g;

        /* renamed from: h  reason: collision with root package name */
        private Integer f8741h;
        private Integer i;
        private Boolean j;

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        private b(n nVar) {
            this.f8734a = nVar.c();
            this.f8735b = nVar.b();
            this.f8736c = Boolean.valueOf(nVar.j());
            this.f8737d = Boolean.valueOf(nVar.i());
            this.f8738e = nVar.d();
            this.f8739f = nVar.e();
            this.f8740g = nVar.g();
            this.f8741h = nVar.h();
            this.i = nVar.f();
            this.j = Boolean.valueOf(nVar.k());
        }

        @Override // com.criteo.publisher.f0.n.a
        n.a b(Long l) {
            this.f8734a = l;
            return this;
        }

        @Override // com.criteo.publisher.f0.n.a
        n.a a(Long l) {
            this.f8735b = l;
            return this;
        }

        @Override // com.criteo.publisher.f0.n.a
        n.a b(boolean z) {
            this.f8736c = Boolean.valueOf(z);
            return this;
        }

        @Override // com.criteo.publisher.f0.n.a
        n.a a(boolean z) {
            this.f8737d = Boolean.valueOf(z);
            return this;
        }

        @Override // com.criteo.publisher.f0.n.a
        n.a c(Long l) {
            this.f8738e = l;
            return this;
        }

        @Override // com.criteo.publisher.f0.n.a
        n.a a(String str) {
            if (str == null) {
                throw new NullPointerException("Null impressionId");
            }
            this.f8739f = str;
            return this;
        }

        @Override // com.criteo.publisher.f0.n.a
        n.a b(String str) {
            this.f8740g = str;
            return this;
        }

        @Override // com.criteo.publisher.f0.n.a
        n.a b(Integer num) {
            this.f8741h = num;
            return this;
        }

        @Override // com.criteo.publisher.f0.n.a
        n.a a(Integer num) {
            this.i = num;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.f0.n.a
        public n.a c(boolean z) {
            this.j = Boolean.valueOf(z);
            return this;
        }

        @Override // com.criteo.publisher.f0.n.a
        n a() {
            String str;
            if (this.f8736c != null) {
                str = "";
            } else {
                str = " cdbCallTimeout";
            }
            if (this.f8737d == null) {
                str = str + " cachedBidUsed";
            }
            if (this.f8739f == null) {
                str = str + " impressionId";
            }
            if (this.j == null) {
                str = str + " readyToSend";
            }
            if (!str.isEmpty()) {
                throw new IllegalStateException("Missing required properties:" + str);
            }
            return new e(this.f8734a, this.f8735b, this.f8736c.booleanValue(), this.f8737d.booleanValue(), this.f8738e, this.f8739f, this.f8740g, this.f8741h, this.i, this.j.booleanValue());
        }
    }
}
