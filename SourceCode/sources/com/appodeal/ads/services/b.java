package com.appodeal.ads.services;

import com.appodeal.ads.modules.common.internal.service.ServicesRegistry;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final Lazy f7553a = LazyKt.lazy(a.f7554a);

    /* loaded from: classes2.dex */
    public static final class a extends Lambda implements Function0<com.appodeal.ads.services.a> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f7554a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final com.appodeal.ads.services.a invoke() {
            return new com.appodeal.ads.services.a();
        }
    }

    public static final ServicesRegistry a() {
        return (ServicesRegistry) f7553a.getValue();
    }
}
