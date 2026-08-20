package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.ConfigProvider;
/* loaded from: classes5.dex */
public final class C0<T> implements ConfigProvider<T> {

    /* renamed from: a  reason: collision with root package name */
    private final T f12725a;

    public C0(T t) {
        this.f12725a = t;
    }

    @Override // com.yandex.metrica.networktasks.api.ConfigProvider
    public T getConfig() {
        return this.f12725a;
    }
}
