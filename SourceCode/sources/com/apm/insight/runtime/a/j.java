package com.apm.insight.runtime.a;

import android.content.Context;
import com.apm.insight.CrashType;
import com.apm.insight.entity.Header;
import com.apm.insight.l.r;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j extends c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Context context, b bVar, d dVar) {
        super(CrashType.JAVA, context, bVar, dVar);
    }

    @Override // com.apm.insight.runtime.a.c
    public com.apm.insight.entity.a a(int i, com.apm.insight.entity.a aVar) {
        com.apm.insight.entity.a a2 = super.a(i, aVar);
        if (i == 0) {
            a2.a("app_count", (Object) 1);
            a2.a("magic_tag", "ss_app_log");
            g(a2);
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
        } else if (i == 5) {
            Header.b(a2.i());
        }
        return a2;
    }
}
