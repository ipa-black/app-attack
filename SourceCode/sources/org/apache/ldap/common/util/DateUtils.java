package org.apache.ldap.common.util;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
/* loaded from: classes3.dex */
public class DateUtils {
    private static final TimeZone UTC_TIME_ZONE = TimeZone.getTimeZone("UTC");

    public static String getGeneralizedTime() {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss'Z'");
        simpleDateFormat.setTimeZone(UTC_TIME_ZONE);
        return simpleDateFormat.format(new Date());
    }
}
