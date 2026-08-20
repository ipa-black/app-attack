package com.yandex.metrica.identifiers.impl;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.IBinder;
import com.google.android.exoplayer2.C;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes3.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final d f12581a;

    /* renamed from: b  reason: collision with root package name */
    private final Function1 f12582b;

    /* renamed from: c  reason: collision with root package name */
    private final String f12583c;

    /* renamed from: d  reason: collision with root package name */
    private final w f12584d;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public e(Intent intent, Function1 converter, String serviceShortTag) {
        this(new d(intent, serviceShortTag), converter, "[AdInServiceConnectionController-" + serviceShortTag + ']', serviceShortTag, new w());
        Intrinsics.checkNotNullParameter(intent, "intent");
        Intrinsics.checkNotNullParameter(converter, "converter");
        Intrinsics.checkNotNullParameter(serviceShortTag, "serviceShortTag");
    }

    public e(d connection, Function1 converter, String tag, String serviceShortTag, w safePackageManager) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        Intrinsics.checkNotNullParameter(converter, "converter");
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(serviceShortTag, "serviceShortTag");
        Intrinsics.checkNotNullParameter(safePackageManager, "safePackageManager");
        this.f12581a = connection;
        this.f12582b = converter;
        this.f12583c = serviceShortTag;
        this.f12584d = safePackageManager;
    }

    public final Object a(Context context) {
        ResolveInfo resolveInfo;
        Intrinsics.checkNotNullParameter(context, "context");
        Intent a2 = this.f12581a.a();
        Intrinsics.checkNotNullExpressionValue(a2, "connection.intent");
        this.f12584d.getClass();
        IBinder iBinder = null;
        try {
            resolveInfo = context.getPackageManager().resolveService(a2, 0);
        } catch (Throwable unused) {
            resolveInfo = null;
        }
        if (resolveInfo != null) {
            try {
                if (this.f12581a.a(context)) {
                    iBinder = this.f12581a.a(C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
                }
            } catch (Throwable unused2) {
            }
            if (iBinder != null) {
                return this.f12582b.invoke(iBinder);
            }
            throw new j("could not bind to " + this.f12583c + " services");
        }
        throw new m("could not resolve " + this.f12583c + " services");
    }

    public final void b(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            this.f12581a.b(context);
        } catch (Throwable unused) {
        }
    }
}
