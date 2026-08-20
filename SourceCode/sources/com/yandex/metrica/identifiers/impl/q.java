package com.yandex.metrica.identifiers.impl;

import android.os.IBinder;
import android.os.IInterface;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class q extends Lambda implements Function1 {

    /* renamed from: a  reason: collision with root package name */
    public static final q f12599a = new q();

    q() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public Object invoke(Object obj) {
        v tVar;
        IBinder it = (IBinder) obj;
        Intrinsics.checkNotNullParameter(it, "it");
        int i = u.f12603a;
        if (it == null) {
            tVar = null;
        } else {
            IInterface queryLocalInterface = it.queryLocalInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            tVar = (queryLocalInterface == null || !(queryLocalInterface instanceof v)) ? new t(it) : (v) queryLocalInterface;
        }
        Intrinsics.checkNotNullExpressionValue(tVar, "OpenDeviceIdentifierService.Stub.asInterface(it)");
        return tVar;
    }
}
