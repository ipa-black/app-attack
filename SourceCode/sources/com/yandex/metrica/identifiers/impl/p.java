package com.yandex.metrica.identifiers.impl;

import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes3.dex */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    private static final Intent f12598a;

    static {
        Intent intent = new Intent("com.yandex.android.advid.IDENTIFIER_SERVICE").setPackage("com.yandex.android.advid");
        Intrinsics.checkNotNullExpressionValue(intent, "Intent(\"com.yandex.andro…om.yandex.android.advid\")");
        f12598a = intent;
    }
}
