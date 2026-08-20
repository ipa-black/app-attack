package com.criteo.publisher.context;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: UserDataHolder.kt */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference<UserData> f8710a = new AtomicReference<>(new UserData());

    public final UserData a() {
        UserData userData = this.f8710a.get();
        Intrinsics.checkExpressionValueIsNotNull(userData, "valueRef.get()");
        return userData;
    }

    public final void a(UserData userData) {
        Intrinsics.checkParameterIsNotNull(userData, "userData");
        this.f8710a.set(userData);
    }
}
