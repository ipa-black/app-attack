package com.appodeal.ads.context;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final Lazy f6585a = LazyKt.lazy(a.f6586a);

    /* loaded from: classes2.dex */
    public static final class a extends Lambda implements Function0<f> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f6586a = new a();

        public a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public final f invoke() {
            return new f();
        }
    }

    public static final f a() {
        return (f) f6585a.getValue();
    }
}
