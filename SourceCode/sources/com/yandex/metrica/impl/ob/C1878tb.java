package com.yandex.metrica.impl.ob;
/* renamed from: com.yandex.metrica.impl.ob.tb  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1878tb {

    /* renamed from: a  reason: collision with root package name */
    public final a f15757a;

    /* renamed from: b  reason: collision with root package name */
    public final String f15758b;

    /* renamed from: c  reason: collision with root package name */
    public final Boolean f15759c;

    /* renamed from: com.yandex.metrica.impl.ob.tb$a */
    /* loaded from: classes5.dex */
    public enum a {
        GOOGLE,
        HMS,
        YANDEX
    }

    public C1878tb(a aVar, String str, Boolean bool) {
        this.f15757a = aVar;
        this.f15758b = str;
        this.f15759c = bool;
    }

    public String toString() {
        return "AdTrackingInfo{provider=" + this.f15757a + ", advId='" + this.f15758b + "', limitedAdTracking=" + this.f15759c + '}';
    }
}
