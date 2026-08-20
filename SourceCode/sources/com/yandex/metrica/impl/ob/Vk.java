package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.os.Bundle;
/* loaded from: classes5.dex */
class Vk {

    /* renamed from: a  reason: collision with root package name */
    private final Ok f14169a;

    /* renamed from: b  reason: collision with root package name */
    private final Yk f14170b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Vk(Ok ok, Yk yk) {
        this.f14169a = ok;
        this.f14170b = yk;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(Activity activity, C1960wl c1960wl) {
        Bundle a2 = this.f14169a.a(activity);
        return this.f14170b.a(a2 == null ? null : a2.getString("yandex:ads:context"), c1960wl);
    }
}
