package com.ironsource.mediationsdk.model;
/* loaded from: classes3.dex */
public class InterstitialPlacement {

    /* renamed from: a  reason: collision with root package name */
    private int f11217a;

    /* renamed from: b  reason: collision with root package name */
    private String f11218b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f11219c;

    /* renamed from: d  reason: collision with root package name */
    private k f11220d;

    public InterstitialPlacement(int i, String str, boolean z, k kVar) {
        this.f11217a = i;
        this.f11218b = str;
        this.f11219c = z;
        this.f11220d = kVar;
    }

    public k getPlacementAvailabilitySettings() {
        return this.f11220d;
    }

    public int getPlacementId() {
        return this.f11217a;
    }

    public String getPlacementName() {
        return this.f11218b;
    }

    public boolean isDefault() {
        return this.f11219c;
    }

    public String toString() {
        return "placement name: " + this.f11218b;
    }
}
