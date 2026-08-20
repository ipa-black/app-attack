package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
/* renamed from: com.yandex.metrica.impl.ob.ub  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1902ub {

    /* renamed from: a  reason: collision with root package name */
    public final C1878tb f15814a;

    /* renamed from: b  reason: collision with root package name */
    public final U0 f15815b;

    /* renamed from: c  reason: collision with root package name */
    public final String f15816c;

    public C1902ub() {
        this(null, U0.UNKNOWN, "identifier info has never been updated");
    }

    public boolean a() {
        C1878tb c1878tb = this.f15814a;
        return (c1878tb == null || TextUtils.isEmpty(c1878tb.f15758b)) ? false : true;
    }

    public String toString() {
        return "AdTrackingInfoResult{mAdTrackingInfo=" + this.f15814a + ", mStatus=" + this.f15815b + ", mErrorExplanation='" + this.f15816c + "'}";
    }

    public C1902ub(C1878tb c1878tb, U0 u0, String str) {
        this.f15814a = c1878tb;
        this.f15815b = u0;
        this.f15816c = str;
    }
}
