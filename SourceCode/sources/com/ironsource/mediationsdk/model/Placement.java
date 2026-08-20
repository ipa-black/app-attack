package com.ironsource.mediationsdk.model;
/* loaded from: classes3.dex */
public class Placement {

    /* renamed from: a  reason: collision with root package name */
    private int f11229a;

    /* renamed from: b  reason: collision with root package name */
    private String f11230b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f11231c;

    /* renamed from: d  reason: collision with root package name */
    private String f11232d;

    /* renamed from: e  reason: collision with root package name */
    private int f11233e;

    /* renamed from: f  reason: collision with root package name */
    private k f11234f;

    public Placement(int i, String str, boolean z, String str2, int i2, k kVar) {
        this.f11229a = i;
        this.f11230b = str;
        this.f11231c = z;
        this.f11232d = str2;
        this.f11233e = i2;
        this.f11234f = kVar;
    }

    public Placement(InterstitialPlacement interstitialPlacement) {
        this.f11229a = interstitialPlacement.getPlacementId();
        this.f11230b = interstitialPlacement.getPlacementName();
        this.f11231c = interstitialPlacement.isDefault();
        this.f11234f = interstitialPlacement.getPlacementAvailabilitySettings();
    }

    public k getPlacementAvailabilitySettings() {
        return this.f11234f;
    }

    public int getPlacementId() {
        return this.f11229a;
    }

    public String getPlacementName() {
        return this.f11230b;
    }

    public int getRewardAmount() {
        return this.f11233e;
    }

    public String getRewardName() {
        return this.f11232d;
    }

    public boolean isDefault() {
        return this.f11231c;
    }

    public String toString() {
        return "placement name: " + this.f11230b + ", reward name: " + this.f11232d + " , amount: " + this.f11233e;
    }
}
