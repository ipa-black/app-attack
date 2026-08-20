package com.appnext.base.operations;

import android.os.Bundle;
import com.appnext.base.a;
import com.appnext.base.b.d;
import com.appnext.base.b.j;
/* loaded from: classes.dex */
public abstract class c extends a {
    @Override // com.appnext.base.operations.a
    public final void aD() {
    }

    public c(com.appnext.base.a.b.c cVar, Bundle bundle, Object obj) {
        super(cVar, bundle, obj);
    }

    @Override // com.appnext.base.operations.a
    public final void aC() {
        try {
            Object a2 = j.a(d.fo, d.a.Boolean);
            boolean z = (a2 == null || !(a2 instanceof Boolean)) ? false : !((Boolean) a2).booleanValue();
            if (aE() && !z) {
                av();
                return;
            }
            a(new com.appnext.base.a(a.EnumC0090a.NoPermission$1d8b5b4a));
        } catch (Throwable unused) {
        }
    }

    @Override // com.appnext.base.operations.a
    protected d.a aG() {
        return d.a.String;
    }
}
