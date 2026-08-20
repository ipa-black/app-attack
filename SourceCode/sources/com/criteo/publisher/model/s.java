package com.criteo.publisher.model;

import com.google.firebase.messaging.Constants;
import com.google.gson.annotations.SerializedName;
import io.bidmachine.utils.IabUtils;
import java.io.ByteArrayInputStream;
import java.nio.charset.Charset;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.json.JSONObject;
/* compiled from: CdbResponseSlot.kt */
/* loaded from: classes2.dex */
public class s {
    public static final a p = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final Lazy f9164a;

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f9165b;
    @SerializedName("impId")

    /* renamed from: c  reason: collision with root package name */
    private final String f9166c;
    @SerializedName("placementId")

    /* renamed from: d  reason: collision with root package name */
    private final String f9167d;
    @SerializedName("zoneId")

    /* renamed from: e  reason: collision with root package name */
    private final Integer f9168e;
    @SerializedName("cpm")

    /* renamed from: f  reason: collision with root package name */
    private final String f9169f;
    @SerializedName("currency")

    /* renamed from: g  reason: collision with root package name */
    private final String f9170g;
    @SerializedName(IabUtils.KEY_WIDTH)

    /* renamed from: h  reason: collision with root package name */
    private final int f9171h;
    @SerializedName(IabUtils.KEY_HEIGHT)
    private final int i;
    @SerializedName("displayUrl")
    private final String j;
    @SerializedName("native")
    private final com.criteo.publisher.model.b0.n k;
    @SerializedName(Constants.FirelogAnalytics.PARAM_TTL)
    private int l;
    @SerializedName("isVideo")
    private boolean m;
    @SerializedName("isRewarded")
    private boolean n;
    private long o;

    public s() {
        this(null, null, null, null, null, 0, 0, null, null, 0, false, false, 0L, 8191, null);
    }

    @JvmStatic
    public static final s a(JSONObject jSONObject) {
        return p.a(jSONObject);
    }

    public Double b() {
        return (Double) this.f9164a.getValue();
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof s) {
                s sVar = (s) obj;
                return Intrinsics.areEqual(f(), sVar.f()) && Intrinsics.areEqual(h(), sVar.h()) && Intrinsics.areEqual(l(), sVar.l()) && Intrinsics.areEqual(a(), sVar.a()) && Intrinsics.areEqual(c(), sVar.c()) && k() == sVar.k() && e() == sVar.e() && Intrinsics.areEqual(d(), sVar.d()) && Intrinsics.areEqual(g(), sVar.g()) && j() == sVar.j() && p() == sVar.p() && n() == sVar.n() && i() == sVar.i();
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        String f2 = f();
        int hashCode = (f2 != null ? f2.hashCode() : 0) * 31;
        String h2 = h();
        int hashCode2 = (hashCode + (h2 != null ? h2.hashCode() : 0)) * 31;
        Integer l = l();
        int hashCode3 = (hashCode2 + (l != null ? l.hashCode() : 0)) * 31;
        String a2 = a();
        int hashCode4 = (hashCode3 + (a2 != null ? a2.hashCode() : 0)) * 31;
        String c2 = c();
        int hashCode5 = (((((hashCode4 + (c2 != null ? c2.hashCode() : 0)) * 31) + k()) * 31) + e()) * 31;
        String d2 = d();
        int hashCode6 = (hashCode5 + (d2 != null ? d2.hashCode() : 0)) * 31;
        com.criteo.publisher.model.b0.n g2 = g();
        int hashCode7 = (((hashCode6 + (g2 != null ? g2.hashCode() : 0)) * 31) + j()) * 31;
        boolean p2 = p();
        int i = p2;
        if (p2) {
            i = 1;
        }
        int i2 = (hashCode7 + i) * 31;
        boolean n = n();
        int i3 = n ? 1 : n;
        long i4 = i();
        return ((i2 + i3) * 31) + ((int) (i4 ^ (i4 >>> 32)));
    }

    public boolean m() {
        return ((Boolean) this.f9165b.getValue()).booleanValue();
    }

    public String toString() {
        return "CdbResponseSlot(impressionId=" + f() + ", placementId=" + h() + ", zoneId=" + l() + ", cpm=" + a() + ", currency=" + c() + ", width=" + k() + ", height=" + e() + ", displayUrl=" + d() + ", nativeAssets=" + g() + ", ttlInSeconds=" + j() + ", isVideo=" + p() + ", isRewarded=" + n() + ", timeOfDownload=" + i() + ")";
    }

    /* compiled from: CdbResponseSlot.kt */
    /* loaded from: classes2.dex */
    static final class c extends Lambda implements Function0<Boolean> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Boolean invoke() {
            return Boolean.valueOf(a());
        }

        public final boolean a() {
            return s.this.g() != null;
        }
    }

    public s(String str, String str2, Integer num, String cpm, String str3, int i, int i2, String str4, com.criteo.publisher.model.b0.n nVar, int i3, boolean z, boolean z2, long j) {
        Intrinsics.checkParameterIsNotNull(cpm, "cpm");
        this.f9166c = str;
        this.f9167d = str2;
        this.f9168e = num;
        this.f9169f = cpm;
        this.f9170g = str3;
        this.f9171h = i;
        this.i = i2;
        this.j = str4;
        this.k = nVar;
        this.l = i3;
        this.m = z;
        this.n = z2;
        this.o = j;
        this.f9164a = LazyKt.lazy(new b());
        this.f9165b = LazyKt.lazy(new c());
    }

    public String f() {
        return this.f9166c;
    }

    public String h() {
        return this.f9167d;
    }

    public Integer l() {
        return this.f9168e;
    }

    public /* synthetic */ s(String str, String str2, Integer num, String str3, String str4, int i, int i2, String str5, com.criteo.publisher.model.b0.n nVar, int i3, boolean z, boolean z2, long j, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? null : str, (i4 & 2) != 0 ? null : str2, (i4 & 4) != 0 ? null : num, (i4 & 8) != 0 ? "0.0" : str3, (i4 & 16) != 0 ? null : str4, (i4 & 32) != 0 ? 0 : i, (i4 & 64) != 0 ? 0 : i2, (i4 & 128) != 0 ? null : str5, (i4 & 256) == 0 ? nVar : null, (i4 & 512) != 0 ? 0 : i3, (i4 & 1024) != 0 ? false : z, (i4 & 2048) == 0 ? z2 : false, (i4 & 4096) != 0 ? 0L : j);
    }

    public String a() {
        return this.f9169f;
    }

    public String c() {
        return this.f9170g;
    }

    public int k() {
        return this.f9171h;
    }

    public int e() {
        return this.i;
    }

    public String d() {
        return this.j;
    }

    public com.criteo.publisher.model.b0.n g() {
        return this.k;
    }

    public void a(int i) {
        this.l = i;
    }

    public int j() {
        return this.l;
    }

    public boolean p() {
        return this.m;
    }

    public boolean n() {
        return this.n;
    }

    public void a(long j) {
        this.o = j;
    }

    public long i() {
        return this.o;
    }

    /* compiled from: CdbResponseSlot.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final s a(JSONObject json) {
            Intrinsics.checkParameterIsNotNull(json, "json");
            com.criteo.publisher.n0.l H0 = com.criteo.publisher.s.c().H0();
            Intrinsics.checkExpressionValueIsNotNull(H0, "DependencyProvider.getIn…).provideJsonSerializer()");
            String jSONObject = json.toString();
            Intrinsics.checkExpressionValueIsNotNull(jSONObject, "json.toString()");
            Charset charset = Charsets.UTF_8;
            if (jSONObject == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            byte[] bytes = jSONObject.getBytes(charset);
            Intrinsics.checkNotNullExpressionValue(bytes, "(this as java.lang.String).getBytes(charset)");
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bytes);
            try {
                Object a2 = H0.a(s.class, byteArrayInputStream);
                Intrinsics.checkExpressionValueIsNotNull(a2, "jsonSerializer.read(CdbR…eSlot::class.java, input)");
                s sVar = (s) a2;
                CloseableKt.closeFinally(byteArrayInputStream, null);
                return sVar;
            } finally {
            }
        }
    }

    /* compiled from: CdbResponseSlot.kt */
    /* loaded from: classes2.dex */
    static final class b extends Lambda implements Function0<Double> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final Double invoke() {
            return StringsKt.toDoubleOrNull(s.this.a());
        }
    }

    public boolean o() {
        Double b2 = b();
        return ((((b2 != null ? b2.doubleValue() : -1.0d) > 0.0d ? 1 : ((b2 != null ? b2.doubleValue() : -1.0d) == 0.0d ? 0 : -1)) < 0) || (Intrinsics.areEqual(b(), 0.0d) && j() == 0) || (!(Intrinsics.areEqual(b(), 0.0d) && j() > 0) && !m() && !com.criteo.publisher.n0.t.c(d()))) ? false : true;
    }

    public boolean a(com.criteo.publisher.i clock) {
        Intrinsics.checkParameterIsNotNull(clock, "clock");
        return ((long) (j() * 1000)) + i() <= clock.a();
    }
}
