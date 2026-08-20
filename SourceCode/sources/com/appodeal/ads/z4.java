package com.appodeal.ads;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class z4 {

    /* renamed from: a  reason: collision with root package name */
    public static final Lazy f8022a = LazyKt.lazy(a.f8023a);

    /* loaded from: classes.dex */
    public static final class a extends Lambda implements Function0<x4> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f8023a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final x4 invoke() {
            return new x4(new com.appodeal.ads.networking.usecases.a(k0.f6758a), com.appodeal.ads.services.g.c(), new a3(new l1()), new com.appodeal.ads.initializing.b(), new m1(0), com.appodeal.ads.utils.tracker.b.f7828b, d5.f6629b, c.f6575b, com.appodeal.ads.storage.o.f7663b, com.appodeal.ads.storage.n.f7661b);
        }
    }

    public static final t4 a() {
        return (t4) f8022a.getValue();
    }
}
