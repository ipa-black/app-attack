package com.yandex.metrica.impl.ob;

import android.os.Bundle;
/* renamed from: com.yandex.metrica.impl.ob.gi  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public enum EnumC1566gi {
    UNKNOWN(0),
    NETWORK(1),
    PARSE(2);
    

    /* renamed from: a  reason: collision with root package name */
    private int f14811a;

    EnumC1566gi(int i) {
        this.f14811a = i;
    }

    public Bundle a(Bundle bundle) {
        bundle.putInt("startup_error_key_code", this.f14811a);
        return bundle;
    }
}
