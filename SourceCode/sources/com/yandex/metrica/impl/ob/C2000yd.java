package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.yd  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C2000yd {

    /* renamed from: a  reason: collision with root package name */
    private InterfaceC1952wd f16089a;

    public C2000yd(InterfaceC1952wd interfaceC1952wd) {
        this.f16089a = interfaceC1952wd;
    }

    public void a(InterfaceC1952wd interfaceC1952wd) {
        this.f16089a = interfaceC1952wd;
    }

    public boolean b(Context context) {
        if (this.f16089a.a("android.permission.READ_PHONE_STATE")) {
            return C1928vd.a(context, "android.permission.READ_PHONE_STATE");
        }
        return false;
    }

    public boolean c(Context context) {
        if (this.f16089a.a("android.permission.ACCESS_WIFI_STATE")) {
            return C1928vd.a(context, "android.permission.ACCESS_WIFI_STATE");
        }
        return false;
    }

    public boolean a(Context context) {
        if (this.f16089a.a("android.permission.ACCESS_COARSE_LOCATION")) {
            return C1928vd.a(context, "android.permission.ACCESS_COARSE_LOCATION");
        }
        return false;
    }
}
