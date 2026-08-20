package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.ConfigProvider;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* renamed from: com.yandex.metrica.impl.ob.d1  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C1474d1 implements ConfigProvider<Lg> {

    /* renamed from: a  reason: collision with root package name */
    private final Lazy f14579a = LazyKt.lazy(new a());

    /* renamed from: b  reason: collision with root package name */
    private final L3 f14580b;

    /* renamed from: com.yandex.metrica.impl.ob.d1$a */
    /* loaded from: classes5.dex */
    static final class a extends Lambda implements Function0<Lg> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public Lg invoke() {
            return C1474d1.this.f14580b.m();
        }
    }

    public C1474d1(L3 l3) {
        this.f14580b = l3;
    }

    public Lg a() {
        Lg cachedConfig = (Lg) this.f14579a.getValue();
        Intrinsics.checkNotNullExpressionValue(cachedConfig, "cachedConfig");
        return cachedConfig;
    }

    @Override // com.yandex.metrica.networktasks.api.ConfigProvider
    public Object getConfig() {
        Lg cachedConfig = (Lg) this.f14579a.getValue();
        Intrinsics.checkNotNullExpressionValue(cachedConfig, "cachedConfig");
        return cachedConfig;
    }
}
