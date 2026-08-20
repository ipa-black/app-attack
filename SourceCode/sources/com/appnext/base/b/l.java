package com.appnext.base.b;

import java.util.Calendar;
import java.util.Date;
/* loaded from: classes.dex */
public final class l {
    public static Date a(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        return calendar.getTime();
    }
}
