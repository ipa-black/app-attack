package com.applovin.impl.mediation.nativeAds.a;

import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.m;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.nativeAds.adPlacer.MaxAdPlacerSettings;
import java.util.Collection;
import java.util.Map;
import java.util.SortedSet;
import java.util.TreeSet;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final m<Integer> f5327a = new m<>();

    /* renamed from: b  reason: collision with root package name */
    private final TreeSet<Integer> f5328b = new TreeSet<>();

    /* renamed from: c  reason: collision with root package name */
    private final Map<Integer, MaxAd> f5329c = CollectionUtils.map();

    /* renamed from: d  reason: collision with root package name */
    private int f5330d;

    /* renamed from: e  reason: collision with root package name */
    private int f5331e;

    public a(MaxAdPlacerSettings maxAdPlacerSettings) {
        a(maxAdPlacerSettings);
    }

    private int a(int i, boolean z) {
        int d2 = this.f5327a.d(Integer.valueOf(i));
        if (!z) {
            int i2 = i + d2;
            while (d2 < this.f5327a.size() && i2 >= this.f5327a.a(d2).intValue()) {
                i2++;
                d2++;
            }
        }
        return d2;
    }

    private void a(MaxAdPlacerSettings maxAdPlacerSettings) {
        if (!maxAdPlacerSettings.hasValidPositioning()) {
            v.i("MaxAdPlacerData", "No positioning info was provided with ad placer settings. You must set at least (1) one or more fixed positions or (2) a repeating interval greater than or equal to 2 for the ad placer to determine where to position ads.");
            return;
        }
        this.f5327a.addAll(maxAdPlacerSettings.getFixedPositions());
        if (!maxAdPlacerSettings.isRepeatingEnabled()) {
            return;
        }
        int repeatingInterval = maxAdPlacerSettings.getRepeatingInterval();
        if (this.f5327a.isEmpty()) {
            this.f5327a.a((m<Integer>) Integer.valueOf(repeatingInterval - 1));
        }
        int intValue = this.f5327a.a().intValue();
        while (true) {
            intValue += repeatingInterval;
            if (this.f5327a.size() >= maxAdPlacerSettings.getMaxAdCount()) {
                return;
            }
            this.f5327a.a((m<Integer>) Integer.valueOf(intValue));
        }
    }

    private void c(int i, int i2) {
        if (this.f5329c.containsKey(Integer.valueOf(i))) {
            this.f5329c.put(Integer.valueOf(i2), this.f5329c.get(Integer.valueOf(i)));
            this.f5328b.add(Integer.valueOf(i2));
            this.f5329c.remove(Integer.valueOf(i));
            this.f5328b.remove(Integer.valueOf(i));
        }
    }

    public int a() {
        int i = this.f5330d;
        if (i != -1 && this.f5331e != -1) {
            while (i <= this.f5331e) {
                if (a(i) && !b(i)) {
                    return i;
                }
                i++;
            }
        }
        return -1;
    }

    public void a(int i, int i2) {
        this.f5330d = i;
        this.f5331e = i2;
    }

    public void a(MaxAd maxAd, int i) {
        this.f5329c.put(Integer.valueOf(i), maxAd);
        this.f5328b.add(Integer.valueOf(i));
    }

    public void a(Collection<Integer> collection) {
        for (Integer num : collection) {
            this.f5329c.remove(num);
            this.f5328b.remove(num);
        }
    }

    public boolean a(int i) {
        return this.f5327a.contains(Integer.valueOf(i));
    }

    public Collection<Integer> b() {
        return new TreeSet((SortedSet) this.f5328b);
    }

    public void b(int i, int i2) {
        i(i);
        h(i2);
    }

    public boolean b(int i) {
        return this.f5328b.contains(Integer.valueOf(i));
    }

    public MaxAd c(int i) {
        return this.f5329c.get(Integer.valueOf(i));
    }

    public void c() {
        this.f5329c.clear();
        this.f5328b.clear();
    }

    public Collection<Integer> d(int i) {
        return new TreeSet((SortedSet) this.f5328b.tailSet(Integer.valueOf(i), false));
    }

    public int e(int i) {
        if (i == 0) {
            return 0;
        }
        return i + a(i - 1, false);
    }

    public int f(int i) {
        return i + a(i, false);
    }

    public int g(int i) {
        if (a(i)) {
            return -1;
        }
        return i - a(i, true);
    }

    public void h(int i) {
        int c2 = this.f5327a.c(Integer.valueOf(i));
        for (int size = this.f5327a.size() - 1; size >= c2; size--) {
            Integer a2 = this.f5327a.a(size);
            int intValue = a2.intValue() + 1;
            c(a2.intValue(), intValue);
            this.f5327a.a(size, Integer.valueOf(intValue));
        }
    }

    public void i(int i) {
        int c2 = this.f5327a.c(Integer.valueOf(i));
        if (a(i)) {
            this.f5329c.remove(Integer.valueOf(i));
            this.f5328b.remove(Integer.valueOf(i));
            this.f5327a.b(c2);
        }
        while (c2 < this.f5327a.size()) {
            Integer a2 = this.f5327a.a(c2);
            int intValue = a2.intValue() - 1;
            c(a2.intValue(), intValue);
            this.f5327a.a(c2, Integer.valueOf(intValue));
            c2++;
        }
    }
}
