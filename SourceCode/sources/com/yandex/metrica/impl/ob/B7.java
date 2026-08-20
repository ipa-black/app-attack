package com.yandex.metrica.impl.ob;
/* loaded from: classes5.dex */
public class B7 {

    /* renamed from: c  reason: collision with root package name */
    private static final B7 f12674c = new B7(new C1430b7());

    /* renamed from: a  reason: collision with root package name */
    private final C1430b7 f12675a;

    /* renamed from: b  reason: collision with root package name */
    private a f12676b = a.BLANK;

    /* loaded from: classes5.dex */
    private enum a {
        BLANK,
        LOADING_ERROR,
        LOADED
    }

    B7(C1430b7 c1430b7) {
        this.f12675a = c1430b7;
    }

    public static B7 a() {
        return f12674c;
    }

    public synchronized boolean b() {
        a aVar = this.f12676b;
        a aVar2 = a.LOADED;
        if (aVar == aVar2) {
            return true;
        }
        if (aVar == a.LOADING_ERROR) {
            return false;
        }
        this.f12675a.getClass();
        System.loadLibrary("appmetrica-service-native");
        this.f12676b = aVar2;
        return true;
    }
}
