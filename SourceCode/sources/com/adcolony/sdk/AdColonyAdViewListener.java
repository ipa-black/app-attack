package com.adcolony.sdk;
/* loaded from: classes.dex */
public abstract class AdColonyAdViewListener {

    /* renamed from: a  reason: collision with root package name */
    String f74a = "";

    /* renamed from: b  reason: collision with root package name */
    AdColonyAdSize f75b;

    /* renamed from: c  reason: collision with root package name */
    p0 f76c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyAdSize a() {
        return this.f75b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p0 b() {
        return this.f76c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        return this.f74a;
    }

    public void onClicked(AdColonyAdView adColonyAdView) {
    }

    public void onClosed(AdColonyAdView adColonyAdView) {
    }

    public void onLeftApplication(AdColonyAdView adColonyAdView) {
    }

    public void onOpened(AdColonyAdView adColonyAdView) {
    }

    public abstract void onRequestFilled(AdColonyAdView adColonyAdView);

    public void onRequestNotFilled(AdColonyZone adColonyZone) {
    }

    public void onShow(AdColonyAdView adColonyAdView) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(p0 p0Var) {
        this.f76c = p0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        this.f74a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AdColonyAdSize adColonyAdSize) {
        this.f75b = adColonyAdSize;
    }
}
