package com.criteo.publisher.n0;

import android.content.Context;
import android.util.DisplayMetrics;
import com.criteo.publisher.model.AdSize;
/* compiled from: DeviceUtil.java */
/* loaded from: classes2.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9227a;

    public boolean d() {
        return true;
    }

    public k(Context context) {
        com.criteo.publisher.logging.h.b(getClass());
        this.f9227a = context;
    }

    public boolean c() {
        DisplayMetrics b2 = b();
        return ((float) Math.min(b2.widthPixels, b2.heightPixels)) >= b2.density * 600.0f;
    }

    public AdSize a() {
        DisplayMetrics b2 = b();
        return new AdSize(Math.round(b2.widthPixels / b2.density), Math.round(b2.heightPixels / b2.density));
    }

    private DisplayMetrics b() {
        return this.f9227a.getResources().getDisplayMetrics();
    }
}
