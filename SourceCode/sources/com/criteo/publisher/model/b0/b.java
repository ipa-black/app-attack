package com.criteo.publisher.model.b0;

import com.criteo.publisher.model.b0.n;
import com.google.gson.annotations.SerializedName;
import java.util.List;
/* compiled from: $AutoValue_NativeAssets.java */
/* loaded from: classes2.dex */
abstract class b extends n {

    /* renamed from: a  reason: collision with root package name */
    private final List<r> f9055a;

    /* renamed from: b  reason: collision with root package name */
    private final m f9056b;

    /* renamed from: c  reason: collision with root package name */
    private final q f9057c;

    /* renamed from: d  reason: collision with root package name */
    private final List<p> f9058d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(List<r> list, m mVar, q qVar, List<p> list2) {
        if (list == null) {
            throw new NullPointerException("Null nativeProducts");
        }
        this.f9055a = list;
        if (mVar == null) {
            throw new NullPointerException("Null advertiser");
        }
        this.f9056b = mVar;
        if (qVar == null) {
            throw new NullPointerException("Null privacy");
        }
        this.f9057c = qVar;
        if (list2 == null) {
            throw new NullPointerException("Null pixels");
        }
        this.f9058d = list2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.n
    @SerializedName("products")
    public List<r> h() {
        return this.f9055a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.n
    public m b() {
        return this.f9056b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.n
    public q j() {
        return this.f9057c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.criteo.publisher.model.b0.n
    @SerializedName("impressionPixels")
    public List<p> i() {
        return this.f9058d;
    }

    public String toString() {
        return "NativeAssets{nativeProducts=" + this.f9055a + ", advertiser=" + this.f9056b + ", privacy=" + this.f9057c + ", pixels=" + this.f9058d + "}";
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof n) {
            n nVar = (n) obj;
            return this.f9055a.equals(nVar.h()) && this.f9056b.equals(nVar.b()) && this.f9057c.equals(nVar.j()) && this.f9058d.equals(nVar.i());
        }
        return false;
    }

    public int hashCode() {
        return ((((((this.f9055a.hashCode() ^ 1000003) * 1000003) ^ this.f9056b.hashCode()) * 1000003) ^ this.f9057c.hashCode()) * 1000003) ^ this.f9058d.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: $AutoValue_NativeAssets.java */
    /* loaded from: classes2.dex */
    public static class a extends n.a {

        /* renamed from: a  reason: collision with root package name */
        private List<r> f9059a;

        /* renamed from: b  reason: collision with root package name */
        private m f9060b;

        /* renamed from: c  reason: collision with root package name */
        private q f9061c;

        /* renamed from: d  reason: collision with root package name */
        private List<p> f9062d;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.model.b0.n.a
        public n.a a(List<r> list) {
            if (list == null) {
                throw new NullPointerException("Null nativeProducts");
            }
            this.f9059a = list;
            return this;
        }

        @Override // com.criteo.publisher.model.b0.n.a
        List<r> c() {
            List<r> list = this.f9059a;
            if (list != null) {
                return list;
            }
            throw new IllegalStateException("Property \"nativeProducts\" has not been set");
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.model.b0.n.a
        public n.a a(m mVar) {
            if (mVar == null) {
                throw new NullPointerException("Null advertiser");
            }
            this.f9060b = mVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.model.b0.n.a
        public n.a a(q qVar) {
            if (qVar == null) {
                throw new NullPointerException("Null privacy");
            }
            this.f9061c = qVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.criteo.publisher.model.b0.n.a
        public n.a b(List<p> list) {
            if (list == null) {
                throw new NullPointerException("Null pixels");
            }
            this.f9062d = list;
            return this;
        }

        @Override // com.criteo.publisher.model.b0.n.a
        List<p> d() {
            List<p> list = this.f9062d;
            if (list != null) {
                return list;
            }
            throw new IllegalStateException("Property \"pixels\" has not been set");
        }

        @Override // com.criteo.publisher.model.b0.n.a
        n a() {
            String str;
            if (this.f9059a != null) {
                str = "";
            } else {
                str = " nativeProducts";
            }
            if (this.f9060b == null) {
                str = str + " advertiser";
            }
            if (this.f9061c == null) {
                str = str + " privacy";
            }
            if (this.f9062d == null) {
                str = str + " pixels";
            }
            if (!str.isEmpty()) {
                throw new IllegalStateException("Missing required properties:" + str);
            }
            return new h(this.f9059a, this.f9060b, this.f9061c, this.f9062d);
        }
    }
}
