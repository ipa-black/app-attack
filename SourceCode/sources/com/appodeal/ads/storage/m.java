package com.appodeal.ads.storage;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public static final Lazy f7659a = LazyKt.lazy(a.f7660a);

    /* loaded from: classes2.dex */
    public static final class a extends Lambda implements Function0<b> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f7660a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final b invoke() {
            return new b();
        }
    }

    public static final b a() {
        return (b) f7659a.getValue();
    }
}
