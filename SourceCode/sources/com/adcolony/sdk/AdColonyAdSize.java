package com.adcolony.sdk;

import com.explorestack.iab.vast.VastError;
/* loaded from: classes.dex */
public class AdColonyAdSize {

    /* renamed from: a  reason: collision with root package name */
    int f62a;

    /* renamed from: b  reason: collision with root package name */
    int f63b;
    public static final AdColonyAdSize MEDIUM_RECTANGLE = new AdColonyAdSize(VastError.ERROR_CODE_GENERAL_WRAPPER, 250);
    public static final AdColonyAdSize BANNER = new AdColonyAdSize(320, 50);
    public static final AdColonyAdSize LEADERBOARD = new AdColonyAdSize(728, 90);
    public static final AdColonyAdSize SKYSCRAPER = new AdColonyAdSize(160, 600);

    public AdColonyAdSize(int i, int i2) {
        this.f62a = i;
        this.f63b = i2;
    }

    public int getHeight() {
        return this.f63b;
    }

    public int getWidth() {
        return this.f62a;
    }
}
