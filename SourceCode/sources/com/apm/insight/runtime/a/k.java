package com.apm.insight.runtime.a;

import android.content.Context;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;
import com.apm.insight.l.r;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k extends c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Context context, b bVar, d dVar) {
        super(CrashType.LAUNCH, context, bVar, dVar);
    }

    @Override // com.apm.insight.runtime.a.c
    public com.apm.insight.entity.a a(int i, com.apm.insight.entity.a aVar) {
        com.apm.insight.entity.a a2 = super.a(i, aVar);
        if (i == 0) {
            Header a3 = Header.a(this.f1079b);
            a3.c();
            a2.a(a3);
            r.a(a2, a3, this.f1078a);
        } else if (i == 1) {
            Header i2 = a2.i();
            i2.d();
            i2.e();
        } else if (i == 2) {
            Header.a(a2.i());
            try {
                a2.i().f().put("launch_did", com.apm.insight.i.a.a(this.f1079b));
            } catch (Throwable unused) {
            }
        } else if (i == 5) {
            Header.b(a2.i());
        }
        return a2;
    }
}
