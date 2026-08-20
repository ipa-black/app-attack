package com.apm.insight.j;

import android.os.Handler;
import android.text.TextUtils;
import com.apm.insight.i;
import com.apm.insight.l.p;
/* loaded from: classes.dex */
public class c extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Handler handler, long j, long j2) {
        super(handler, j, j2);
    }

    @Override // java.lang.Runnable
    public void run() {
        String str;
        if (i.c().b()) {
            return;
        }
        String d2 = i.a().d();
        if (TextUtils.isEmpty(d2) || "0".equals(d2)) {
            a(c());
            str = "[DeviceIdTask] did is null, continue check.";
        } else {
            i.c().a(d2);
            str = "[DeviceIdTask] did is " + d2;
        }
        p.a((Object) str);
    }
}
