package com.yandex.metrica.impl.ob;

import android.telephony.CellInfo;
import com.yandex.metrica.impl.ob.C1910uj;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5.dex */
public class Jj {

    /* renamed from: a  reason: collision with root package name */
    private C1570gm f13318a;

    public Jj() {
        this(new C1570gm());
    }

    public void a(CellInfo cellInfo, C1910uj.a aVar) {
        long timeStamp = cellInfo.getTimeStamp();
        Long l = null;
        if (timeStamp > 0) {
            C1570gm c1570gm = this.f13318a;
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            long c2 = c1570gm.c(timeStamp, timeUnit);
            if (c2 > 0 && c2 < TimeUnit.HOURS.toSeconds(1L)) {
                l = Long.valueOf(c2);
            }
            if (l == null) {
                long a2 = this.f13318a.a(timeStamp, timeUnit);
                if (a2 > 0 && a2 < TimeUnit.HOURS.toSeconds(1L)) {
                    l = Long.valueOf(a2);
                }
            }
        }
        aVar.a(l).a(cellInfo.isRegistered());
    }

    Jj(C1570gm c1570gm) {
        this.f13318a = c1570gm;
    }
}
