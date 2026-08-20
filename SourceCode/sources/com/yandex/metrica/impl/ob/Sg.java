package com.yandex.metrica.impl.ob;

import com.google.protobuf.nano.ym.MessageNano;
import com.yandex.metrica.AdRevenue;
import com.yandex.metrica.impl.ob.C1463cf;
import java.math.BigDecimal;
import java.util.Currency;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes5.dex */
public final class Sg {

    /* renamed from: a  reason: collision with root package name */
    private final InterfaceC1546fn<String> f13875a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC1546fn<String> f13876b;

    /* renamed from: c  reason: collision with root package name */
    private final AdRevenue f13877c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class a extends Lambda implements Function1<byte[], Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1463cf f13878a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(C1463cf c1463cf) {
            super(1);
            this.f13878a = c1463cf;
        }

        @Override // kotlin.jvm.functions.Function1
        public Unit invoke(byte[] bArr) {
            this.f13878a.f14562e = bArr;
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class b extends Lambda implements Function1<byte[], Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1463cf f13879a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(C1463cf c1463cf) {
            super(1);
            this.f13879a = c1463cf;
        }

        @Override // kotlin.jvm.functions.Function1
        public Unit invoke(byte[] bArr) {
            this.f13879a.f14565h = bArr;
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class c extends Lambda implements Function1<byte[], Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1463cf f13880a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(C1463cf c1463cf) {
            super(1);
            this.f13880a = c1463cf;
        }

        @Override // kotlin.jvm.functions.Function1
        public Unit invoke(byte[] bArr) {
            this.f13880a.i = bArr;
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class d extends Lambda implements Function1<byte[], Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1463cf f13881a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(C1463cf c1463cf) {
            super(1);
            this.f13881a = c1463cf;
        }

        @Override // kotlin.jvm.functions.Function1
        public Unit invoke(byte[] bArr) {
            this.f13881a.f14563f = bArr;
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class e extends Lambda implements Function1<byte[], Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1463cf f13882a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(C1463cf c1463cf) {
            super(1);
            this.f13882a = c1463cf;
        }

        @Override // kotlin.jvm.functions.Function1
        public Unit invoke(byte[] bArr) {
            this.f13882a.f14564g = bArr;
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class f extends Lambda implements Function1<byte[], Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1463cf f13883a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(C1463cf c1463cf) {
            super(1);
            this.f13883a = c1463cf;
        }

        @Override // kotlin.jvm.functions.Function1
        public Unit invoke(byte[] bArr) {
            this.f13883a.j = bArr;
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public static final class g extends Lambda implements Function1<byte[], Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C1463cf f13884a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(C1463cf c1463cf) {
            super(1);
            this.f13884a = c1463cf;
        }

        @Override // kotlin.jvm.functions.Function1
        public Unit invoke(byte[] bArr) {
            this.f13884a.f14560c = bArr;
            return Unit.INSTANCE;
        }
    }

    public Sg(AdRevenue adRevenue, C1470cm c1470cm) {
        this.f13877c = adRevenue;
        this.f13875a = new C1496dn(100, "ad revenue strings", c1470cm);
        this.f13876b = new C1471cn(30720, "ad revenue payload", c1470cm);
    }

    public final Pair<byte[], Integer> a() {
        Map map;
        C1463cf c1463cf = new C1463cf();
        Pair pair = TuplesKt.to(this.f13877c.adNetwork, new a(c1463cf));
        Currency currency = this.f13877c.currency;
        Intrinsics.checkNotNullExpressionValue(currency, "revenue.currency");
        int i = 0;
        for (Pair pair2 : CollectionsKt.listOf((Object[]) new Pair[]{pair, TuplesKt.to(this.f13877c.adPlacementId, new b(c1463cf)), TuplesKt.to(this.f13877c.adPlacementName, new c(c1463cf)), TuplesKt.to(this.f13877c.adUnitId, new d(c1463cf)), TuplesKt.to(this.f13877c.adUnitName, new e(c1463cf)), TuplesKt.to(this.f13877c.precision, new f(c1463cf)), TuplesKt.to(currency.getCurrencyCode(), new g(c1463cf))})) {
            String str = (String) pair2.getFirst();
            byte[] e2 = C1422b.e(str);
            Intrinsics.checkNotNullExpressionValue(e2, "StringUtils.stringToBytesForProtobuf(value)");
            byte[] e3 = C1422b.e(this.f13875a.a(str));
            Intrinsics.checkNotNullExpressionValue(e3, "StringUtils.stringToBytesForProtobuf(result)");
            ((Function1) pair2.getSecond()).invoke(e3);
            i += e2.length - e3.length;
        }
        map = Tg.f13967a;
        Integer num = (Integer) map.get(this.f13877c.adType);
        c1463cf.f14561d = num != null ? num.intValue() : 0;
        C1463cf.a aVar = new C1463cf.a();
        BigDecimal bigDecimal = this.f13877c.adRevenue;
        Intrinsics.checkNotNullExpressionValue(bigDecimal, "revenue.adRevenue");
        Pair a2 = Ol.a(bigDecimal);
        Nl nl = new Nl(((Number) a2.getFirst()).longValue(), ((Number) a2.getSecond()).intValue());
        aVar.f14566a = nl.b();
        aVar.f14567b = nl.a();
        c1463cf.f14559b = aVar;
        Map<String, String> map2 = this.f13877c.payload;
        if (map2 != null) {
            String g2 = Tl.g(map2);
            byte[] e4 = C1422b.e(this.f13876b.a(g2));
            Intrinsics.checkNotNullExpressionValue(e4, "StringUtils.stringToByte…oadTrimmer.trim(payload))");
            c1463cf.k = e4;
            i += C1422b.e(g2).length - e4.length;
        }
        return TuplesKt.to(MessageNano.toByteArray(c1463cf), Integer.valueOf(i));
    }
}
