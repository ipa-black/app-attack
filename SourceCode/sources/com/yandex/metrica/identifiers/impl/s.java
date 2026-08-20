package com.yandex.metrica.identifiers.impl;

import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes3.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private static final Intent f12601a;

    static {
        Intent intent = new Intent("com.uodis.opendevice.OPENIDS_SERVICE").setPackage("com.huawei.hwid");
        Intrinsics.checkNotNullExpressionValue(intent, "Intent(\"com.uodis.opende…ackage(\"com.huawei.hwid\")");
        f12601a = intent;
    }
}
