package com.appodeal.ads;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes.dex */
public final class i4 {

    /* renamed from: a  reason: collision with root package name */
    public static final Lazy f6740a = LazyKt.lazy(a.f6741a);

    /* loaded from: classes.dex */
    public static final class a extends Lambda implements Function0<g4> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f6741a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final g4 invoke() {
            return new g4(com.appodeal.ads.context.b.f6583b.f6584a.getApplicationContext(), com.appodeal.ads.storage.o.f7663b, com.appodeal.ads.services.g.b(), com.appodeal.ads.services.b.a());
        }
    }

    public static final g4 a() {
        return (g4) f6740a.getValue();
    }
}
