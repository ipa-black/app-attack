package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.coreutils.network.UserAgent;
import com.yandex.metrica.networktasks.api.ConfigProvider;
import com.yandex.metrica.networktasks.api.DefaultNetworkResponseHandler;
import com.yandex.metrica.networktasks.api.ExponentialBackoffDataHolder;
import com.yandex.metrica.networktasks.api.FullUrlFormer;
import com.yandex.metrica.networktasks.api.NetworkTask;
import com.yandex.metrica.networktasks.api.RequestDataHolder;
import com.yandex.metrica.networktasks.api.ResponseDataHolder;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
/* renamed from: com.yandex.metrica.impl.ob.rd  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1832rd {

    /* renamed from: c  reason: collision with root package name */
    public static final C1832rd f15631c = new C1832rd();

    /* renamed from: a  reason: collision with root package name */
    private static final Map<EnumC1809qd, ExponentialBackoffDataHolder> f15629a = new LinkedHashMap();

    /* renamed from: b  reason: collision with root package name */
    private static final String f15630b = UserAgent.getFor("com.yandex.mobile.metrica.sdk", "5.3.0", "45003240");

    private C1832rd() {
    }

    private final synchronized ExponentialBackoffDataHolder a(EnumC1809qd enumC1809qd) {
        ExponentialBackoffDataHolder exponentialBackoffDataHolder;
        Map<EnumC1809qd, ExponentialBackoffDataHolder> map = f15629a;
        exponentialBackoffDataHolder = map.get(enumC1809qd);
        if (exponentialBackoffDataHolder == null) {
            F0 g2 = F0.g();
            Intrinsics.checkNotNullExpressionValue(g2, "GlobalServiceLocator.getInstance()");
            C1507e9 s = g2.s();
            Intrinsics.checkNotNullExpressionValue(s, "GlobalServiceLocator.get…ance().servicePreferences");
            exponentialBackoffDataHolder = new ExponentialBackoffDataHolder(new C1785pd(s, enumC1809qd));
            map.put(enumC1809qd, exponentialBackoffDataHolder);
        }
        return exponentialBackoffDataHolder;
    }

    @JvmStatic
    public static final NetworkTask a(Context context, ConfigProvider<D4> configProvider, C1448c0 c1448c0, E4 e4, C1431b8 c1431b8) {
        return new NetworkTask(new Gm(), new C1760od(context), new C1685ld(f15631c.a(EnumC1809qd.DIAGNOSTIC)), new B4(configProvider, c1448c0, e4, c1431b8, new DefaultNetworkResponseHandler(), new RequestDataHolder(), new ResponseDataHolder(new C1735nd()), new FullUrlFormer(new Og(), configProvider)), CollectionsKt.listOf(A2.a()), f15630b);
    }

    @JvmStatic
    public static final NetworkTask a(Context context, C1561gd c1561gd, C1845s2 c1845s2, Fc fc) {
        C2033zm c2033zm = new C2033zm();
        Pg pg = new Pg(c2033zm);
        C0 c0 = new C0(c1561gd);
        return new NetworkTask(new Gm(), new C1760od(context), new C1685ld(f15631c.a(EnumC1809qd.LOCATION)), new C1461cd(context, c1845s2, fc, pg, c0, new RequestDataHolder(), new ResponseDataHolder(new C1735nd()), new FullUrlFormer(pg, c0), c2033zm), CollectionsKt.listOf(A2.a()), f15630b);
    }

    @JvmStatic
    public static final NetworkTask a(L3 l3) {
        C2033zm c2033zm = new C2033zm();
        Qg qg = new Qg(c2033zm);
        C1474d1 c1474d1 = new C1474d1(l3);
        return new NetworkTask(new Gm(), new C1760od(l3.g()), new C1685ld(f15631c.a(EnumC1809qd.REPORT)), new P1(l3, qg, c1474d1, new FullUrlFormer(qg, c1474d1), new RequestDataHolder(), new ResponseDataHolder(new C1735nd()), c2033zm), CollectionsKt.listOf(A2.a()), f15630b);
    }

    @JvmStatic
    public static final NetworkTask a(C1837ri c1837ri, Mg mg) {
        Kg kg = new Kg();
        F0 g2 = F0.g();
        Intrinsics.checkNotNullExpressionValue(g2, "GlobalServiceLocator.getInstance()");
        Rg rg = new Rg(kg, g2.j());
        C0 c0 = new C0(mg);
        return new NetworkTask(new Qm(), new C1760od(c1837ri.b()), new C1685ld(f15631c.a(EnumC1809qd.STARTUP)), new C1798q2(c1837ri, new FullUrlFormer(rg, c0), new RequestDataHolder(), new ResponseDataHolder(new C1735nd()), c0), CollectionsKt.emptyList(), f15630b);
    }
}
