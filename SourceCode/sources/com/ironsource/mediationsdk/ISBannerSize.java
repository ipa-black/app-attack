package com.ironsource.mediationsdk;

import com.explorestack.iab.vast.VastError;
/* loaded from: classes3.dex */
public class ISBannerSize {

    /* renamed from: b  reason: collision with root package name */
    private int f10696b;

    /* renamed from: c  reason: collision with root package name */
    private int f10697c;

    /* renamed from: d  reason: collision with root package name */
    private String f10698d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f10699e;
    public static final ISBannerSize BANNER = new ISBannerSize("BANNER", 320, 50);
    public static final ISBannerSize LARGE = new ISBannerSize("LARGE", 320, 90);
    public static final ISBannerSize RECTANGLE = new ISBannerSize("RECTANGLE", VastError.ERROR_CODE_GENERAL_WRAPPER, 250);

    /* renamed from: a  reason: collision with root package name */
    protected static final ISBannerSize f10695a = new ISBannerSize("LEADERBOARD", 728, 90);
    public static final ISBannerSize SMART = new ISBannerSize("SMART", 0, 0);

    public ISBannerSize(int i, int i2) {
        this("CUSTOM", i, i2);
    }

    public ISBannerSize(String str, int i, int i2) {
        this.f10698d = str;
        this.f10696b = i;
        this.f10697c = i2;
    }

    public String getDescription() {
        return this.f10698d;
    }

    public int getHeight() {
        return this.f10697c;
    }

    public int getWidth() {
        return this.f10696b;
    }

    public boolean isAdaptive() {
        return this.f10699e;
    }

    public boolean isSmart() {
        return this.f10698d.equals("SMART");
    }

    public void setAdaptive(boolean z) {
        this.f10699e = z;
    }
}
