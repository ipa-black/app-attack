package com.ironsource.sdk.utils;

import android.content.Context;
import com.ironsource.environment.h;
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: g  reason: collision with root package name */
    private static a f12129g;

    /* renamed from: a  reason: collision with root package name */
    public String f12130a = h.h();

    /* renamed from: b  reason: collision with root package name */
    public String f12131b = h.g();

    /* renamed from: c  reason: collision with root package name */
    public String f12132c = h.i();

    /* renamed from: d  reason: collision with root package name */
    public String f12133d = h.e();

    /* renamed from: e  reason: collision with root package name */
    public int f12134e = h.f();

    /* renamed from: f  reason: collision with root package name */
    public String f12135f;

    private a(Context context) {
        this.f12135f = h.i(context);
    }

    public static a a(Context context) {
        if (f12129g == null) {
            f12129g = new a(context);
        }
        return f12129g;
    }

    public static void a() {
        f12129g = null;
    }

    public static float b(Context context) {
        return h.l(context);
    }
}
