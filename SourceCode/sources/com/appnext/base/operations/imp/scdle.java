package com.appnext.base.operations.imp;

import android.os.Bundle;
import com.appnext.base.a.a;
import com.appnext.base.a.b.b;
import com.appnext.base.b.d;
import com.appnext.base.b.e;
import com.appnext.base.operations.c;
import java.util.List;
/* loaded from: classes.dex */
public class scdle extends c {
    public scdle(com.appnext.base.a.b.c cVar, Bundle bundle, Object obj) {
        super(cVar, bundle, obj);
    }

    @Override // com.appnext.base.operations.a
    protected final String getKey() {
        return "scdle";
    }

    @Override // com.appnext.base.operations.a
    protected List<b> getData() {
        try {
            List<com.appnext.base.a.b.c> as = a.X().ab().as();
            if (as != null) {
                for (com.appnext.base.a.b.c cVar : as) {
                    if (!cVar.getKey().equals("scdle") && cVar.ao().equals(d.fm)) {
                        com.appnext.base.services.b.a.d(e.getContext()).c(cVar);
                        com.appnext.base.services.b.a.d(e.getContext()).a(cVar, true);
                    }
                }
                return null;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
