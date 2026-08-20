package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.YandexMetrica;
/* renamed from: com.yandex.metrica.impl.ob.z3  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2014z3 {

    /* renamed from: a  reason: collision with root package name */
    private final A3 f16140a;

    /* renamed from: b  reason: collision with root package name */
    private final CounterConfiguration f16141b;

    public C2014z3(Bundle bundle) {
        this.f16140a = A3.a(bundle);
        this.f16141b = CounterConfiguration.a(bundle);
    }

    public A3 a() {
        return this.f16140a;
    }

    public CounterConfiguration b() {
        return this.f16141b;
    }

    public String toString() {
        return "ClientConfiguration{mProcessConfiguration=" + this.f16140a + ", mCounterConfiguration=" + this.f16141b + '}';
    }

    public static boolean a(C2014z3 c2014z3, Context context) {
        return (c2014z3.f16140a != null && context.getPackageName().equals(c2014z3.f16140a.f()) && c2014z3.f16140a.i() == YandexMetrica.getLibraryApiLevel()) ? false : true;
    }

    public C2014z3(A3 a3, CounterConfiguration counterConfiguration) {
        this.f16140a = a3;
        this.f16141b = counterConfiguration;
    }
}
