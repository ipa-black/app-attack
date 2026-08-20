package com.yandex.metrica.impl.ob;

import android.content.Context;
/* renamed from: com.yandex.metrica.impl.ob.vm  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1937vm {

    /* renamed from: a  reason: collision with root package name */
    private final Context f15938a;

    public C1937vm(Context context) {
        this.f15938a = context;
    }

    public byte[] a() {
        try {
            return Tl.b(new StringBuilder(this.f15938a.getPackageName()).reverse().toString());
        } catch (Throwable unused) {
            return new byte[16];
        }
    }

    public byte[] b() {
        try {
            return Tl.b(this.f15938a.getPackageName());
        } catch (Throwable unused) {
            return new byte[16];
        }
    }
}
