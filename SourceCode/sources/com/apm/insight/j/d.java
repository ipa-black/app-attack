package com.apm.insight.j;

import android.content.Context;
import android.os.Handler;
import com.apm.insight.l.p;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private List<a> f906a = new ArrayList(3);

    private d(Handler handler, Context context) {
        if (com.apm.insight.l.a.b(context)) {
            this.f906a.add(new c(handler, 0L, C.DEFAULT_SEEK_FORWARD_INCREMENT_MS));
        }
    }

    public static d a(Handler handler, Context context) {
        return new d(handler, context);
    }

    public void a() {
        p.a((Object) ("[ScheduleTaskManager] execute, task size=" + this.f906a.size()));
        for (a aVar : this.f906a) {
            try {
                aVar.a();
            } catch (Throwable unused) {
            }
        }
    }
}
