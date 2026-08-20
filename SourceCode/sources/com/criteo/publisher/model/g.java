package com.criteo.publisher.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
/* compiled from: AdUnitMapper.java */
/* loaded from: classes2.dex */
public class g {

    /* renamed from: d  reason: collision with root package name */
    private static final AdSize f9119d = new AdSize(2, 2);

    /* renamed from: e  reason: collision with root package name */
    private static final Collection<com.criteo.publisher.i0.a> f9120e = Arrays.asList(com.criteo.publisher.i0.a.GAM_APP_BIDDING, com.criteo.publisher.i0.a.MOPUB_APP_BIDDING);

    /* renamed from: a  reason: collision with root package name */
    private final com.criteo.publisher.logging.g f9121a = com.criteo.publisher.logging.h.b(getClass());

    /* renamed from: b  reason: collision with root package name */
    private final com.criteo.publisher.n0.k f9122b;

    /* renamed from: c  reason: collision with root package name */
    private final com.criteo.publisher.i0.c f9123c;

    public g(com.criteo.publisher.n0.k kVar, com.criteo.publisher.i0.c cVar) {
        this.f9122b = kVar;
        this.f9123c = cVar;
    }

    public List<List<n>> a(List<AdUnit> list) {
        HashSet hashSet = new HashSet();
        for (AdUnit adUnit : list) {
            if (adUnit != null) {
                hashSet.add(new n(a(adUnit), adUnit.getAdUnitId(), adUnit.getAdUnitType()));
            }
        }
        return a(a(hashSet), 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AdUnitMapper.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9124a;

        static {
            int[] iArr = new int[com.criteo.publisher.n0.a.values().length];
            f9124a = iArr;
            try {
                iArr[com.criteo.publisher.n0.a.CRITEO_BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f9124a[com.criteo.publisher.n0.a.CRITEO_INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f9124a[com.criteo.publisher.n0.a.CRITEO_REWARDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f9124a[com.criteo.publisher.n0.a.CRITEO_CUSTOM_NATIVE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private AdSize a(AdUnit adUnit) {
        int i = a.f9124a[adUnit.getAdUnitType().ordinal()];
        if (i != 1) {
            if (i == 2 || i == 3) {
                return this.f9122b.a();
            }
            if (i == 4) {
                return f9119d;
            }
            throw new IllegalArgumentException("Found an invalid AdUnit");
        }
        return ((BannerAdUnit) adUnit).getSize();
    }

    public n b(AdUnit adUnit) {
        List<List<n>> a2 = a(Collections.singletonList(adUnit));
        if (a2.isEmpty() || a2.get(0).isEmpty()) {
            return null;
        }
        return a2.get(0).get(0);
    }

    private List<n> a(Collection<n> collection) {
        ArrayList arrayList = new ArrayList();
        com.criteo.publisher.i0.a c2 = this.f9123c.c();
        for (n nVar : collection) {
            if (nVar.b().isEmpty() || nVar.c().getWidth() <= 0 || nVar.c().getHeight() <= 0) {
                this.f9121a.a(com.criteo.publisher.f.a(nVar));
            } else if (nVar.a() == com.criteo.publisher.n0.a.CRITEO_REWARDED && !f9120e.contains(c2)) {
                this.f9121a.a(com.criteo.publisher.f.a(nVar, c2));
            } else {
                arrayList.add(nVar);
            }
        }
        return arrayList;
    }

    static <T> List<List<T>> a(List<T> list, int i) {
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (i2 < list.size()) {
            int i3 = i2 + i;
            arrayList.add(list.subList(i2, Math.min(i3, list.size())));
            i2 = i3;
        }
        return arrayList;
    }
}
