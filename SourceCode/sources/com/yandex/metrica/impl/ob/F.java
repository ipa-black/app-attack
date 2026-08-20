package com.yandex.metrica.impl.ob;

import android.content.Context;
/* loaded from: classes5.dex */
public class F extends V1<Boolean> {
    public F(Context context, String str) {
        super(context, str, "bool");
    }

    @Override // com.yandex.metrica.impl.ob.V1
    protected Boolean a(int i) {
        return Boolean.valueOf(this.f14135a.getResources().getBoolean(i));
    }
}
