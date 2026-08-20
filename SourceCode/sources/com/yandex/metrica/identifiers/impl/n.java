package com.yandex.metrica.identifiers.impl;

import android.os.IBinder;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class n extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public static final n f12596a = new n();

    n() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        IBinder it = (IBinder) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        c a2 = b.a(it);
        Intrinsics.checkNotNullExpressionValue(a2, "YandexAdvIdInterface.Stub.asInterface(it)");
        return a2;
    }
}
