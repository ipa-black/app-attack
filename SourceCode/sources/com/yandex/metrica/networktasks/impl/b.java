package com.yandex.metrica.networktasks.impl;

import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes5.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final String f16280a;

    public b(String str) {
        this.f16280a = a(str);
    }

    private final String a(String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        Uri uri = Uri.parse(str);
        Intrinsics.checkNotNullExpressionValue(uri, "uri");
        return Intrinsics.areEqual("http", uri.getScheme()) ? uri.buildUpon().scheme("https").build().toString() : str;
    }

    public final String a() {
        return this.f16280a;
    }
}
