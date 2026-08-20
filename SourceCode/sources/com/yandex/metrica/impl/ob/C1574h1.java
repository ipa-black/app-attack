package com.yandex.metrica.impl.ob;

import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.h1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1574h1 {

    /* renamed from: a  reason: collision with root package name */
    private final M0 f14824a;

    public C1574h1() {
        this(C1764oh.a());
    }

    public void a(Map<String, Object> map) {
        this.f14824a.reportEvent("login_sdk", map);
    }

    C1574h1(M0 m0) {
        this.f14824a = m0;
    }
}
