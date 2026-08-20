package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.yandex.metrica.impl.ob.C1489dg;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.TimeUnit;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.xg  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1979xg {

    /* renamed from: a  reason: collision with root package name */
    private final Zl<C1489dg.a, Integer> f16047a;

    /* renamed from: b  reason: collision with root package name */
    private final long f16048b;

    /* renamed from: c  reason: collision with root package name */
    private final String f16049c;

    /* renamed from: d  reason: collision with root package name */
    private final String f16050d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f16051e;

    /* renamed from: f  reason: collision with root package name */
    private final C1720mn f16052f;

    /* renamed from: g  reason: collision with root package name */
    private final M0 f16053g;

    /* renamed from: com.yandex.metrica.impl.ob.xg$a */
    /* loaded from: classes5.dex */
    public static final class a<T> implements Comparator<T> {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return ComparisonsKt.compareValues((Comparable) ((Pair) t).getSecond(), (Comparable) ((Pair) t2).getSecond());
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.xg$b */
    /* loaded from: classes5.dex */
    static final class b<T> implements Comparator<C1489dg> {
        b() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public final int compare(C1489dg c1489dg, C1489dg c1489dg2) {
            int sign = MathKt.getSign(c1489dg.f14599c - c1489dg2.f14599c);
            if (sign == 0) {
                int intValue = ((Number) C1979xg.this.f16047a.a(c1489dg.f14600d)).intValue();
                Object a2 = C1979xg.this.f16047a.a(c1489dg2.f14600d);
                Intrinsics.checkNotNullExpressionValue(a2, "sourcePriorities[second.source]");
                return intValue - ((Number) a2).intValue();
            }
            return sign;
        }
    }

    public C1979xg(Context context, C1720mn c1720mn, M0 m0) {
        this.f16051e = context;
        this.f16052f = c1720mn;
        this.f16053g = m0;
        Zl<C1489dg.a, Integer> zl = new Zl<>(0);
        zl.a(C1489dg.a.HMS, 1);
        zl.a(C1489dg.a.GP, 2);
        this.f16047a = zl;
        this.f16048b = TimeUnit.DAYS.toSeconds(1L);
        this.f16049c = "com.android.vending";
        this.f16050d = "com.huawei.appmarket";
    }

    private final JSONObject c(C1489dg c1489dg) {
        JSONObject put = new JSONObject().put("referrer", c1489dg.f14597a).put("install_timestamp_seconds", c1489dg.f14599c).put("click_timestamp_seconds", c1489dg.f14598b).put("source", c1489dg.f14600d.f14605a);
        Intrinsics.checkNotNullExpressionValue(put, "JSONObject()\n           …eferrerInfo.source.value)");
        return put;
    }

    public final boolean b(C1489dg c1489dg) {
        String str = c1489dg != null ? c1489dg.f14597a : null;
        return !(str == null || str.length() == 0);
    }

    public final boolean a(C1489dg c1489dg) {
        String str;
        if (c1489dg == null) {
            return false;
        }
        C1720mn c1720mn = this.f16052f;
        Context context = this.f16051e;
        String packageName = context.getPackageName();
        c1720mn.getClass();
        try {
            PackageManager packageManager = context.getPackageManager();
            if (A2.a(30)) {
                str = C1745nn.a(packageManager, packageName);
            } else {
                str = packageManager.getInstallerPackageName(packageName);
            }
        } catch (Throwable unused) {
            str = null;
        }
        int ordinal = c1489dg.f14600d.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                return false;
            }
            return Intrinsics.areEqual(this.f16050d, str);
        }
        return Intrinsics.areEqual(this.f16049c, str);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ C1979xg(android.content.Context r1, com.yandex.metrica.impl.ob.C1720mn r2, com.yandex.metrica.impl.ob.M0 r3, int r4) {
        /*
            r0 = this;
            r2 = r4 & 2
            r3 = 0
            if (r2 == 0) goto Lb
            com.yandex.metrica.impl.ob.mn r2 = new com.yandex.metrica.impl.ob.mn
            r2.<init>()
            goto Lc
        Lb:
            r2 = r3
        Lc:
            r4 = r4 & 4
            if (r4 == 0) goto L19
            com.yandex.metrica.impl.ob.M0 r3 = com.yandex.metrica.impl.ob.C1764oh.a()
            java.lang.String r4 = "YandexMetricaSelfReportFacade.getReporter()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r4)
        L19:
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C1979xg.<init>(android.content.Context, com.yandex.metrica.impl.ob.mn, com.yandex.metrica.impl.ob.M0, int):void");
    }

    public final C1489dg a(List<C1489dg> list) {
        C1489dg c1489dg = null;
        if (list.isEmpty()) {
            return null;
        }
        if (list.size() == 1) {
            return list.get(0);
        }
        C1720mn c1720mn = this.f16052f;
        Context context = this.f16051e;
        PackageInfo b2 = c1720mn.b(context, context.getPackageName(), 0);
        if (b2 != null) {
            long seconds = TimeUnit.MILLISECONDS.toSeconds(b2.firstInstallTime);
            a aVar = new a();
            Iterator<T> it = list.iterator();
            if (it.hasNext()) {
                C1489dg c1489dg2 = (C1489dg) it.next();
                Pair pair = TuplesKt.to(c1489dg2, Long.valueOf(Math.abs(c1489dg2.f14599c - seconds)));
                while (it.hasNext()) {
                    C1489dg c1489dg3 = (C1489dg) it.next();
                    Pair pair2 = TuplesKt.to(c1489dg3, Long.valueOf(Math.abs(c1489dg3.f14599c - seconds)));
                    if (aVar.compare(pair, pair2) > 0) {
                        pair = pair2;
                    }
                }
                C1489dg c1489dg4 = (C1489dg) pair.component1();
                if (((Number) pair.component2()).longValue() < this.f16048b) {
                    c1489dg = c1489dg4;
                }
            } else {
                throw new NoSuchElementException();
            }
        }
        if (c1489dg == null) {
            b bVar = new b();
            Iterator<T> it2 = list.iterator();
            if (!it2.hasNext()) {
                throw new NoSuchElementException();
            }
            C1489dg c1489dg5 = (C1489dg) it2.next();
            while (it2.hasNext()) {
                C1489dg c1489dg6 = (C1489dg) it2.next();
                if (bVar.compare(c1489dg5, c1489dg6) < 0) {
                    c1489dg5 = c1489dg6;
                }
            }
            c1489dg = c1489dg5;
        }
        this.f16053g.reportEvent("several_filled_referrers", a(list, c1489dg, b2).toString());
        return c1489dg;
    }

    private final JSONObject a(List<C1489dg> list, C1489dg c1489dg, PackageInfo packageInfo) {
        JSONObject jSONObject = new JSONObject();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (C1489dg c1489dg2 : list) {
            arrayList.add(c(c1489dg2));
        }
        JSONObject putOpt = jSONObject.put("candidates", Tl.b((List<?>) arrayList)).put("chosen", c(c1489dg)).putOpt("install_time", packageInfo != null ? Long.valueOf(packageInfo.firstInstallTime) : null);
        Intrinsics.checkNotNullExpressionValue(putOpt, "JSONObject()\n           …geInfo?.firstInstallTime)");
        return putOpt;
    }
}
