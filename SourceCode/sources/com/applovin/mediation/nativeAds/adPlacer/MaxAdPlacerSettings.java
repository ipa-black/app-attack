package com.applovin.mediation.nativeAds.adPlacer;

import com.applovin.impl.sdk.v;
import java.util.Set;
import java.util.TreeSet;
/* loaded from: classes.dex */
public class MaxAdPlacerSettings {
    public static final int MIN_REPEATING_INTERVAL = 2;

    /* renamed from: a  reason: collision with root package name */
    private final String f6316a;

    /* renamed from: b  reason: collision with root package name */
    private final Set<Integer> f6317b = new TreeSet();

    /* renamed from: c  reason: collision with root package name */
    private int f6318c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f6319d = 256;

    /* renamed from: e  reason: collision with root package name */
    private int f6320e = 4;

    public MaxAdPlacerSettings(String str) {
        this.f6316a = str;
    }

    public void addFixedPosition(int i) {
        this.f6317b.add(Integer.valueOf(i));
    }

    public String getAdUnitId() {
        return this.f6316a;
    }

    public Set<Integer> getFixedPositions() {
        return this.f6317b;
    }

    public int getMaxAdCount() {
        return this.f6319d;
    }

    public int getMaxPreloadedAdCount() {
        return this.f6320e;
    }

    public int getRepeatingInterval() {
        return this.f6318c;
    }

    public boolean hasValidPositioning() {
        return !this.f6317b.isEmpty() || isRepeatingEnabled();
    }

    public boolean isRepeatingEnabled() {
        return this.f6318c >= 2;
    }

    public void resetFixedPositions() {
        this.f6317b.clear();
    }

    public void setMaxAdCount(int i) {
        this.f6319d = i;
    }

    public void setMaxPreloadedAdCount(int i) {
        this.f6320e = i;
    }

    public void setRepeatingInterval(int i) {
        if (i >= 2) {
            this.f6318c = i;
            v.f("MaxAdPlacerSettings", "Repeating interval set to " + i);
            return;
        }
        this.f6318c = 0;
        v.h("MaxAdPlacerSettings", "Repeating interval has been disabled, since it has been set to " + i + ", which is less than minimum value of 2");
    }

    public String toString() {
        return "MaxAdPlacerSettings{adUnitId='" + this.f6316a + "', fixedPositions=" + this.f6317b + ", repeatingInterval=" + this.f6318c + ", maxAdCount=" + this.f6319d + ", maxPreloadedAdCount=" + this.f6320e + '}';
    }
}
