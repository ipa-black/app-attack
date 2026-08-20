package com.criteo.publisher;

import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* compiled from: Session.kt */
/* loaded from: classes2.dex */
public class z {

    /* renamed from: a  reason: collision with root package name */
    private final long f9255a;

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f9256b;

    /* renamed from: c  reason: collision with root package name */
    private final i f9257c;

    /* renamed from: d  reason: collision with root package name */
    private final com.criteo.publisher.c0.d f9258d;

    static {
        new a(null);
    }

    public String b() {
        return (String) this.f9256b.getValue();
    }

    public z(i clock, com.criteo.publisher.c0.d uniqueIdGenerator) {
        Intrinsics.checkParameterIsNotNull(clock, "clock");
        Intrinsics.checkParameterIsNotNull(uniqueIdGenerator, "uniqueIdGenerator");
        this.f9257c = clock;
        this.f9258d = uniqueIdGenerator;
        this.f9255a = clock.a();
        this.f9256b = LazyKt.lazy(new b());
    }

    /* compiled from: Session.kt */
    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: Session.kt */
    /* loaded from: classes2.dex */
    static final class b extends Lambda implements Function0<String> {
        b() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: a */
        public final String invoke() {
            return z.this.f9258d.a();
        }
    }

    public int a() {
        return (int) ((this.f9257c.a() - this.f9255a) / 1000);
    }
}
