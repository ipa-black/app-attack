package com.unity3d.services.identifiers;

import android.content.Context;
import com.unity3d.services.identifiers.installationid.b;
import com.unity3d.services.identifiers.installationid.c;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    public static volatile a f12277b;

    /* renamed from: a  reason: collision with root package name */
    public final b f12278a;

    public a(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        String str = context.getPackageName() + ".v2.playerprefs";
        this.f12278a = new b(new c(context, str, "UnityInstallationId"), new c(context, str, "unity.cloud_userid"), new c(context, "unityads-installinfo", "unityads-idfi"));
    }
}
